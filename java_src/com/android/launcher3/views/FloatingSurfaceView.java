package com.android.launcher3.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.GestureNavContract;
import com.android.launcher3.Insettable;
import com.android.launcher3.Launcher;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.window.RefreshRateTracker;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class FloatingSurfaceView extends AbstractFloatingView implements ViewTreeObserver.OnGlobalLayoutListener, Insettable, SurfaceHolder.Callback2 {
    private GestureNavContract mContract;
    private View mIcon;
    private final Rect mIconBounds;
    private final RectF mIconPosition;
    private final Launcher mLauncher;
    private final Picture mPicture;
    private final s mRemoveViewRunnable;
    private final SurfaceView mSurfaceView;
    private final RectF mTmpPosition;

    public FloatingSurfaceView(Context context) {
        this(context, null);
    }

    public static void a(FloatingSurfaceView floatingSurfaceView) {
        floatingSurfaceView.mPicture.beginRecording(1, 1);
        floatingSurfaceView.mPicture.endRecording();
        floatingSurfaceView.mLauncher.getDragLayer().removeViewInLayout(floatingSurfaceView);
    }

    private void drawOnSurface() {
        SurfaceHolder holder = this.mSurfaceView.getHolder();
        Canvas lockHardwareCanvas = holder.lockHardwareCanvas();
        if (lockHardwareCanvas != null) {
            this.mPicture.draw(lockHardwareCanvas);
            holder.unlockCanvasAndPost(lockHardwareCanvas);
        }
    }

    private void setCurrentIconVisible(boolean z4) {
        View view = this.mIcon;
        if (view != null) {
            IconLabelDotView.setIconAndDotVisible(view, z4);
        }
    }

    public static void show(Launcher launcher, GestureNavContract gestureNavContract) {
        FloatingSurfaceView floatingSurfaceView = (FloatingSurfaceView) launcher.getViewCache().getView(R.layout.floating_surface_view, launcher, launcher.getDragLayer());
        floatingSurfaceView.mContract = gestureNavContract;
        floatingSurfaceView.mIsOpen = true;
        Executors.MAIN_EXECUTOR.getHandler().removeCallbacks(floatingSurfaceView.mRemoveViewRunnable);
        floatingSurfaceView.mPicture.beginRecording(1, 1);
        floatingSurfaceView.mPicture.endRecording();
        floatingSurfaceView.mLauncher.getDragLayer().removeViewInLayout(floatingSurfaceView);
        launcher.getDragLayer().addView(floatingSurfaceView);
    }

    private void updateIconLocation() {
        GestureNavContract gestureNavContract = this.mContract;
        if (gestureNavContract == null) {
            return;
        }
        View firstMatchForAppClose = this.mLauncher.getFirstMatchForAppClose(-1, gestureNavContract.componentName.getPackageName(), this.mContract.user, false);
        boolean z4 = this.mIcon != firstMatchForAppClose;
        if (z4) {
            setCurrentIconVisible(true);
            this.mIcon = firstMatchForAppClose;
            setCurrentIconVisible(false);
        }
        if (firstMatchForAppClose != null && firstMatchForAppClose.isAttachedToWindow()) {
            FloatingIconView.getLocationBoundsForView(this.mLauncher, firstMatchForAppClose, false, this.mTmpPosition, this.mIconBounds);
            if (!this.mTmpPosition.equals(this.mIconPosition)) {
                this.mIconPosition.set(this.mTmpPosition);
                if (this.mContract != null && !this.mIconPosition.isEmpty()) {
                    this.mContract.sendEndPosition(this.mIconPosition, this.mLauncher, this.mSurfaceView.getSurfaceControl());
                }
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mSurfaceView.getLayoutParams();
                layoutParams.width = Math.round(this.mIconPosition.width());
                layoutParams.height = Math.round(this.mIconPosition.height());
                layoutParams.leftMargin = Math.round(this.mIconPosition.left);
                layoutParams.topMargin = Math.round(this.mIconPosition.top);
            }
        }
        if (this.mIcon == null || !z4 || this.mIconBounds.isEmpty()) {
            return;
        }
        setCurrentIconVisible(true);
        Canvas beginRecording = this.mPicture.beginRecording(this.mIconBounds.width(), this.mIconBounds.height());
        Rect rect = this.mIconBounds;
        beginRecording.translate(-rect.left, -rect.top);
        this.mIcon.draw(beginRecording);
        this.mPicture.endRecording();
        setCurrentIconVisible(false);
        drawOnSurface();
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        setCurrentIconVisible(true);
        this.mLauncher.getViewCache().recycleView(this, R.layout.floating_surface_view);
        this.mContract = null;
        this.mIcon = null;
        this.mIsOpen = false;
        Executors.MAIN_EXECUTOR.getHandler().postDelayed(this.mRemoveViewRunnable, RefreshRateTracker.getSingleFrameMs(this.mLauncher));
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 8192) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(this);
        updateIconLocation();
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        close(false);
        Executors.MAIN_EXECUTOR.getHandler().removeCallbacks(this.mRemoveViewRunnable);
        this.mPicture.beginRecording(1, 1);
        this.mPicture.endRecording();
        this.mLauncher.getDragLayer().removeViewInLayout(this);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
        setCurrentIconVisible(true);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        updateIconLocation();
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i4, int i5, int i6) {
        drawOnSurface();
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        drawOnSurface();
        if (this.mContract == null || this.mIconPosition.isEmpty()) {
            return;
        }
        this.mContract.sendEndPosition(this.mIconPosition, this.mLauncher, this.mSurfaceView.getSurfaceControl());
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
    }

    @Override // android.view.SurfaceHolder.Callback2
    public final void surfaceRedrawNeeded(SurfaceHolder surfaceHolder) {
        drawOnSurface();
    }

    public FloatingSurfaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Type inference failed for: r3v5, types: [com.android.launcher3.views.s] */
    public FloatingSurfaceView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mTmpPosition = new RectF();
        this.mIconPosition = new RectF();
        this.mIconBounds = new Rect();
        this.mPicture = new Picture();
        this.mRemoveViewRunnable = new Runnable() { // from class: com.android.launcher3.views.s
            @Override // java.lang.Runnable
            public final void run() {
                FloatingSurfaceView.a(FloatingSurfaceView.this);
            }
        };
        this.mLauncher = Launcher.getLauncher(context);
        SurfaceView surfaceView = new SurfaceView(context);
        this.mSurfaceView = surfaceView;
        surfaceView.setZOrderOnTop(true);
        surfaceView.getHolder().setFormat(-3);
        surfaceView.getHolder().addCallback(this);
        this.mIsOpen = true;
        addView(surfaceView);
    }
}
