package com.android.systemui.shared.navigationbar;

import android.graphics.Rect;
import android.os.Handler;
import android.view.CompositionSamplingListener;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewRootImpl;
import android.view.ViewTreeObserver;
import com.android.launcher3.C0410q;
import java.io.PrintWriter;
import java.util.Objects;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public class RegionSamplingHelper implements View.OnAttachStateChangeListener, View.OnLayoutChangeListener {
    private static final float NAVIGATION_LUMINANCE_CHANGE_THRESHOLD = 0.05f;
    private static final float NAVIGATION_LUMINANCE_THRESHOLD = 0.5f;
    private final Executor mBackgroundExecutor;
    private final SamplingCallback mCallback;
    private final SysuiCompositionSamplingListener mCompositionSamplingListener;
    private float mCurrentMedianLuma;
    private boolean mFirstSamplingAfterStart;
    private final Handler mHandler;
    private boolean mIsDestroyed;
    private float mLastMedianLuma;
    private final Rect mRegisteredSamplingBounds;
    private SurfaceControl mRegisteredStopLayer;
    private Runnable mRemoveDrawRunnable;
    private final View mSampledView;
    private boolean mSamplingEnabled;
    private final CompositionSamplingListener mSamplingListener;
    private boolean mSamplingListenerRegistered;
    private final Rect mSamplingRequestBounds;
    private ViewTreeObserver.OnDrawListener mUpdateOnDraw;
    private boolean mWaitingOnDraw;
    private boolean mWindowHasBlurs;
    private boolean mWindowVisible;
    private SurfaceControl mWrappedStopLayer;

    /* loaded from: classes.dex */
    public interface SamplingCallback {
        Rect getSampledRegion(View view);

        default boolean isSamplingEnabled() {
            return true;
        }

        void onRegionDarknessChanged(boolean z4);
    }

    /* loaded from: classes.dex */
    public class SysuiCompositionSamplingListener {
        public void register(CompositionSamplingListener compositionSamplingListener, int i4, SurfaceControl surfaceControl, Rect rect) {
            CompositionSamplingListener.register(compositionSamplingListener, i4, surfaceControl, rect);
        }

        public void unregister(CompositionSamplingListener compositionSamplingListener) {
            CompositionSamplingListener.unregister(compositionSamplingListener);
        }
    }

    public RegionSamplingHelper(View view, SamplingCallback samplingCallback, Executor executor) {
        this(view, samplingCallback, view.getContext().getMainExecutor(), executor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$unregisterSamplingListener$1(SurfaceControl surfaceControl) {
        this.mCompositionSamplingListener.unregister(this.mSamplingListener);
        if (surfaceControl == null || !surfaceControl.isValid()) {
            return;
        }
        surfaceControl.release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateSamplingListener$0(SurfaceControl surfaceControl, Rect rect) {
        if (surfaceControl == null || surfaceControl.isValid()) {
            this.mCompositionSamplingListener.register(this.mSamplingListener, 0, surfaceControl, rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDraw() {
        if (this.mWaitingOnDraw) {
            this.mWaitingOnDraw = false;
            updateSamplingListener();
        }
    }

    private void unregisterSamplingListener() {
        if (this.mSamplingListenerRegistered) {
            this.mSamplingListenerRegistered = false;
            final SurfaceControl surfaceControl = this.mWrappedStopLayer;
            this.mRegisteredStopLayer = null;
            this.mWrappedStopLayer = null;
            this.mRegisteredSamplingBounds.setEmpty();
            this.mBackgroundExecutor.execute(new Runnable() { // from class: com.android.systemui.shared.navigationbar.b
                @Override // java.lang.Runnable
                public final void run() {
                    RegionSamplingHelper.this.lambda$unregisterSamplingListener$1(surfaceControl);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMedianLuma(float f4) {
        this.mCurrentMedianLuma = f4;
        if (Math.abs(f4 - this.mLastMedianLuma) > NAVIGATION_LUMINANCE_CHANGE_THRESHOLD) {
            this.mCallback.onRegionDarknessChanged(f4 < NAVIGATION_LUMINANCE_THRESHOLD);
            this.mLastMedianLuma = f4;
        }
    }

    private void updateSamplingListener() {
        if (!(this.mSamplingEnabled && !this.mSamplingRequestBounds.isEmpty() && this.mWindowVisible && !this.mWindowHasBlurs && (this.mSampledView.isAttachedToWindow() || this.mFirstSamplingAfterStart))) {
            unregisterSamplingListener();
            return;
        }
        ViewRootImpl viewRootImpl = this.mSampledView.getViewRootImpl();
        SurfaceControl surfaceControl = null;
        SurfaceControl surfaceControl2 = viewRootImpl != null ? viewRootImpl.getSurfaceControl() : null;
        if (surfaceControl2 != null && surfaceControl2.isValid()) {
            surfaceControl = surfaceControl2;
        } else if (!this.mWaitingOnDraw) {
            this.mWaitingOnDraw = true;
            if (this.mHandler.hasCallbacks(this.mRemoveDrawRunnable)) {
                this.mHandler.removeCallbacks(this.mRemoveDrawRunnable);
            } else {
                this.mSampledView.getViewTreeObserver().addOnDrawListener(this.mUpdateOnDraw);
            }
        }
        if (!this.mSamplingRequestBounds.equals(this.mRegisteredSamplingBounds) || this.mRegisteredStopLayer != surfaceControl) {
            unregisterSamplingListener();
            this.mSamplingListenerRegistered = true;
            final SurfaceControl wrap = wrap(surfaceControl);
            final Rect rect = new Rect(this.mSamplingRequestBounds);
            this.mBackgroundExecutor.execute(new Runnable() { // from class: com.android.systemui.shared.navigationbar.c
                @Override // java.lang.Runnable
                public final void run() {
                    RegionSamplingHelper.this.lambda$updateSamplingListener$0(wrap, rect);
                }
            });
            this.mRegisteredSamplingBounds.set(this.mSamplingRequestBounds);
            this.mRegisteredStopLayer = surfaceControl;
            this.mWrappedStopLayer = wrap;
        }
        this.mFirstSamplingAfterStart = false;
    }

    public void dump(PrintWriter printWriter) {
        dump("", printWriter);
    }

    public SamplingCallback getCallback() {
        return this.mCallback;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        updateSamplingRect();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        updateSamplingListener();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        stopAndDestroy();
    }

    public void setWindowHasBlurs(boolean z4) {
        this.mWindowHasBlurs = z4;
        updateSamplingListener();
    }

    public void setWindowVisible(boolean z4) {
        this.mWindowVisible = z4;
        updateSamplingListener();
    }

    public void start(Rect rect) {
        if (this.mCallback.isSamplingEnabled()) {
            if (rect != null) {
                this.mSamplingRequestBounds.set(rect);
            }
            this.mSamplingEnabled = true;
            this.mLastMedianLuma = -1.0f;
            this.mFirstSamplingAfterStart = true;
            updateSamplingListener();
        }
    }

    public void stop() {
        this.mSamplingEnabled = false;
        updateSamplingListener();
    }

    public void stopAndDestroy() {
        stop();
        Executor executor = this.mBackgroundExecutor;
        final CompositionSamplingListener compositionSamplingListener = this.mSamplingListener;
        Objects.requireNonNull(compositionSamplingListener);
        executor.execute(new Runnable() { // from class: com.android.systemui.shared.navigationbar.a
            @Override // java.lang.Runnable
            public final void run() {
                compositionSamplingListener.destroy();
            }
        });
        this.mIsDestroyed = true;
    }

    public void updateSamplingRect() {
        Rect sampledRegion = this.mCallback.getSampledRegion(this.mSampledView);
        if (this.mSamplingRequestBounds.equals(sampledRegion)) {
            return;
        }
        this.mSamplingRequestBounds.set(sampledRegion);
        updateSamplingListener();
    }

    public SurfaceControl wrap(SurfaceControl surfaceControl) {
        if (surfaceControl == null) {
            return null;
        }
        return new SurfaceControl(surfaceControl, "regionSampling");
    }

    public RegionSamplingHelper(View view, SamplingCallback samplingCallback, Executor executor, Executor executor2) {
        this(view, samplingCallback, executor, executor2, new SysuiCompositionSamplingListener());
    }

    public void dump(String str, PrintWriter printWriter) {
        printWriter.println(str + "RegionSamplingHelper:");
        printWriter.println(str + "\tsampleView isAttached: " + this.mSampledView.isAttachedToWindow());
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tsampleView isScValid: ");
        sb.append(this.mSampledView.isAttachedToWindow() ? Boolean.valueOf(this.mSampledView.getViewRootImpl().getSurfaceControl().isValid()) : "notAttached");
        printWriter.println(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("\tmSamplingEnabled: ");
        StringBuilder c4 = C0410q.c(C0410q.c(sb2, this.mSamplingEnabled, printWriter, str, "\tmSamplingListenerRegistered: "), this.mSamplingListenerRegistered, printWriter, str, "\tmSamplingRequestBounds: ");
        c4.append(this.mSamplingRequestBounds);
        printWriter.println(c4.toString());
        printWriter.println(str + "\tmRegisteredSamplingBounds: " + this.mRegisteredSamplingBounds);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str);
        sb3.append("\tmLastMedianLuma: ");
        StringBuilder c5 = C0410q.c(C0410q.c(C0410q.c(C0410q.a(C0410q.a(sb3, this.mLastMedianLuma, printWriter, str, "\tmCurrentMedianLuma: "), this.mCurrentMedianLuma, printWriter, str, "\tmWindowVisible: "), this.mWindowVisible, printWriter, str, "\tmWindowHasBlurs: "), this.mWindowHasBlurs, printWriter, str, "\tmWaitingOnDraw: "), this.mWaitingOnDraw, printWriter, str, "\tmRegisteredStopLayer: ");
        c5.append(this.mRegisteredStopLayer);
        printWriter.println(c5.toString());
        printWriter.println(str + "\tmWrappedStopLayer: " + this.mWrappedStopLayer);
        printWriter.println(str + "\tmIsDestroyed: " + this.mIsDestroyed);
    }

    public RegionSamplingHelper(View view, SamplingCallback samplingCallback, Executor executor, Executor executor2, SysuiCompositionSamplingListener sysuiCompositionSamplingListener) {
        this.mHandler = new Handler();
        this.mSamplingRequestBounds = new Rect();
        this.mRegisteredSamplingBounds = new Rect();
        this.mSamplingEnabled = false;
        this.mSamplingListenerRegistered = false;
        this.mRegisteredStopLayer = null;
        this.mWrappedStopLayer = null;
        this.mUpdateOnDraw = new ViewTreeObserver.OnDrawListener() { // from class: com.android.systemui.shared.navigationbar.RegionSamplingHelper.1
            @Override // android.view.ViewTreeObserver.OnDrawListener
            public void onDraw() {
                RegionSamplingHelper.this.mHandler.post(RegionSamplingHelper.this.mRemoveDrawRunnable);
                RegionSamplingHelper.this.onDraw();
            }
        };
        this.mRemoveDrawRunnable = new Runnable() { // from class: com.android.systemui.shared.navigationbar.RegionSamplingHelper.2
            @Override // java.lang.Runnable
            public void run() {
                RegionSamplingHelper.this.mSampledView.getViewTreeObserver().removeOnDrawListener(RegionSamplingHelper.this.mUpdateOnDraw);
            }
        };
        this.mBackgroundExecutor = executor2;
        this.mCompositionSamplingListener = sysuiCompositionSamplingListener;
        this.mSamplingListener = new CompositionSamplingListener(executor) { // from class: com.android.systemui.shared.navigationbar.RegionSamplingHelper.3
            public void onSampleCollected(float f4) {
                if (RegionSamplingHelper.this.mSamplingEnabled) {
                    RegionSamplingHelper.this.updateMedianLuma(f4);
                }
            }
        };
        this.mSampledView = view;
        view.addOnAttachStateChangeListener(this);
        view.addOnLayoutChangeListener(this);
        this.mCallback = samplingCallback;
    }
}
