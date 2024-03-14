package com.android.quickstep.util;

import android.os.Trace;
import android.util.FloatProperty;
import android.util.MathUtils;
import android.view.Display;
import android.view.WindowManager;
import androidx.core.view.ViewTreeObserver$OnPreDrawListenerC0181s;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Hotseat;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.HorizontalInsettableView;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.util.unfold.PreemptiveUnfoldTransitionProgressProvider;
import t1.InterfaceC1405d;
import t1.InterfaceC1406e;
import w1.C1452d;
import w1.RunnableC1451c;
import x1.C1460d;
import x1.C1461e;
import x1.C1462f;
/* loaded from: classes.dex */
public class LauncherUnfoldAnimationController implements DeviceProfile.OnDeviceProfileChangeListener {
    private static final float MAX_WIDTH_INSET_FRACTION = 0.04f;
    private static final String TRACE_WAIT_TO_HANDLE_UNFOLD_TRANSITION = "LauncherUnfoldAnimationController#waitingForTheNextFrame";
    private final TransitionStatusProvider mExternalTransitionStatusProvider;
    private Boolean mIsTablet;
    private final Launcher mLauncher;
    private final C1461e mNaturalOrientationProgressProvider;
    private PreemptiveUnfoldTransitionProgressProvider mPreemptiveProgressProvider;
    private final C1462f mProgressProvider;
    private HorizontalInsettableView mQsbInsettable;
    private final UnfoldMoveFromCenterHotseatAnimator mUnfoldMoveFromCenterHotseatAnimator;
    private final UnfoldMoveFromCenterWorkspaceAnimator mUnfoldMoveFromCenterWorkspaceAnimator;
    private static final FloatProperty WORKSPACE_SCALE_PROPERTY = LauncherAnimUtils.WORKSPACE_SCALE_PROPERTY_FACTORY.get(1);
    private static final FloatProperty HOTSEAT_SCALE_PROPERTY = LauncherAnimUtils.HOTSEAT_SCALE_PROPERTY_FACTORY.get(1);

    /* loaded from: classes.dex */
    class LauncherScaleAnimationListener implements InterfaceC1405d {
        private static final float SCALE_LAUNCHER_FROM = 0.92f;

        public /* synthetic */ LauncherScaleAnimationListener(LauncherUnfoldAnimationController launcherUnfoldAnimationController, int i4) {
            this();
        }

        private void setScale(float f4) {
            LauncherUnfoldAnimationController.WORKSPACE_SCALE_PROPERTY.setValue(LauncherUnfoldAnimationController.this.mLauncher.getWorkspace(), f4);
            LauncherUnfoldAnimationController.HOTSEAT_SCALE_PROPERTY.setValue(LauncherUnfoldAnimationController.this.mLauncher.getHotseat(), f4);
        }

        @Override // t1.InterfaceC1405d
        public void onTransitionFinished() {
            setScale(1.0f);
        }

        @Override // t1.InterfaceC1405d
        public /* bridge */ /* synthetic */ void onTransitionFinishing() {
        }

        @Override // t1.InterfaceC1405d
        public void onTransitionProgress(float f4) {
            setScale(MathUtils.constrainedMap((float) SCALE_LAUNCHER_FROM, 1.0f, 0.0f, 1.0f, f4));
        }

        @Override // t1.InterfaceC1405d
        public void onTransitionStarted() {
            LauncherUnfoldAnimationController.this.mLauncher.getWorkspace().setPivotToScaleWithSelf(LauncherUnfoldAnimationController.this.mLauncher.getHotseat());
        }

        private LauncherScaleAnimationListener() {
        }
    }

    /* loaded from: classes.dex */
    class QsbAnimationListener implements InterfaceC1405d {
        public /* synthetic */ QsbAnimationListener(LauncherUnfoldAnimationController launcherUnfoldAnimationController, int i4) {
            this();
        }

        @Override // t1.InterfaceC1405d
        public void onTransitionFinished() {
            if (LauncherUnfoldAnimationController.this.mQsbInsettable != null) {
                LauncherUnfoldAnimationController.this.mQsbInsettable.setHorizontalInsets(0.0f);
            }
        }

        @Override // t1.InterfaceC1405d
        public /* bridge */ /* synthetic */ void onTransitionFinishing() {
        }

        @Override // t1.InterfaceC1405d
        public void onTransitionProgress(float f4) {
            if (LauncherUnfoldAnimationController.this.mQsbInsettable != null) {
                LauncherUnfoldAnimationController.this.mQsbInsettable.setHorizontalInsets((1.0f - f4) * LauncherUnfoldAnimationController.MAX_WIDTH_INSET_FRACTION);
            }
        }

        @Override // t1.InterfaceC1405d
        public void onTransitionStarted() {
        }

        private QsbAnimationListener() {
        }
    }

    /* loaded from: classes.dex */
    class TransitionStatusProvider implements InterfaceC1405d {
        private boolean mHasRun;

        public /* synthetic */ TransitionStatusProvider(int i4) {
            this();
        }

        private void markAsRun() {
            this.mHasRun = true;
        }

        public boolean hasRun() {
            return this.mHasRun;
        }

        public void onFolded() {
            this.mHasRun = false;
        }

        @Override // t1.InterfaceC1405d
        public void onTransitionFinished() {
            markAsRun();
        }

        @Override // t1.InterfaceC1405d
        public /* bridge */ /* synthetic */ void onTransitionFinishing() {
        }

        @Override // t1.InterfaceC1405d
        public void onTransitionProgress(float f4) {
            markAsRun();
        }

        @Override // t1.InterfaceC1405d
        public void onTransitionStarted() {
            markAsRun();
        }

        private TransitionStatusProvider() {
            this.mHasRun = false;
        }
    }

    public LauncherUnfoldAnimationController(Launcher launcher, WindowManager windowManager, InterfaceC1406e interfaceC1406e, C1452d c1452d) {
        TransitionStatusProvider transitionStatusProvider = new TransitionStatusProvider(0);
        this.mExternalTransitionStatusProvider = transitionStatusProvider;
        this.mPreemptiveProgressProvider = null;
        this.mIsTablet = null;
        this.mLauncher = launcher;
        if (FeatureFlags.PREEMPTIVE_UNFOLD_ANIMATION_START.get()) {
            PreemptiveUnfoldTransitionProgressProvider preemptiveUnfoldTransitionProgressProvider = new PreemptiveUnfoldTransitionProgressProvider(interfaceC1406e, launcher.getMainThreadHandler());
            this.mPreemptiveProgressProvider = preemptiveUnfoldTransitionProgressProvider;
            preemptiveUnfoldTransitionProgressProvider.init();
            this.mProgressProvider = new C1462f(this.mPreemptiveProgressProvider);
        } else {
            this.mProgressProvider = new C1462f(interfaceC1406e);
        }
        interfaceC1406e.addCallback(transitionStatusProvider);
        UnfoldMoveFromCenterHotseatAnimator unfoldMoveFromCenterHotseatAnimator = new UnfoldMoveFromCenterHotseatAnimator(launcher, windowManager, c1452d);
        this.mUnfoldMoveFromCenterHotseatAnimator = unfoldMoveFromCenterHotseatAnimator;
        UnfoldMoveFromCenterWorkspaceAnimator unfoldMoveFromCenterWorkspaceAnimator = new UnfoldMoveFromCenterWorkspaceAnimator(launcher, windowManager, c1452d);
        this.mUnfoldMoveFromCenterWorkspaceAnimator = unfoldMoveFromCenterWorkspaceAnimator;
        C1461e c1461e = new C1461e(launcher, c1452d, this.mProgressProvider);
        this.mNaturalOrientationProgressProvider = c1461e;
        C1452d c1452d2 = c1461e.f12838e;
        c1452d2.getClass();
        C1460d listener = c1461e.f12841h;
        kotlin.jvm.internal.h.e(listener, "listener");
        c1452d2.f12746f.post(new RunnableC1451c(c1452d2, listener, 0));
        Display display = c1461e.f12837d.getDisplay();
        if (display != null) {
            listener.onRotationChanged(display.getRotation());
        }
        this.mProgressProvider.addCallback((InterfaceC1405d) unfoldMoveFromCenterWorkspaceAnimator);
        this.mProgressProvider.addCallback((InterfaceC1405d) new LauncherScaleAnimationListener(this, 0));
        QsbAnimationListener qsbAnimationListener = new QsbAnimationListener(this, 0);
        C1462f c1462f = c1461e.f12839f;
        c1462f.addCallback((InterfaceC1405d) qsbAnimationListener);
        c1462f.addCallback((InterfaceC1405d) unfoldMoveFromCenterHotseatAnimator);
        launcher.addOnDeviceProfileChangeListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preemptivelyStartAnimationOnNextFrame$0() {
        Trace.asyncTraceEnd(4096L, TRACE_WAIT_TO_HANDLE_UNFOLD_TRANSITION, 0);
        this.mPreemptiveProgressProvider.preemptivelyStartTransition(Float.valueOf(0.0f));
    }

    private void preemptivelyStartAnimationOnNextFrame() {
        Trace.asyncTraceBegin(4096L, TRACE_WAIT_TO_HANDLE_UNFOLD_TRANSITION, 0);
        ViewTreeObserver$OnPreDrawListenerC0181s.a(this.mLauncher.getWorkspace(), new Runnable() { // from class: com.android.quickstep.util.x
            @Override // java.lang.Runnable
            public final void run() {
                LauncherUnfoldAnimationController.this.lambda$preemptivelyStartAnimationOnNextFrame$0();
            }
        });
    }

    public void onDestroy() {
        this.mProgressProvider.destroy();
        this.mNaturalOrientationProgressProvider.destroy();
        this.mLauncher.removeOnDeviceProfileChangeListener(this);
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        if (FeatureFlags.PREEMPTIVE_UNFOLD_ANIMATION_START.get()) {
            Boolean bool = this.mIsTablet;
            if (bool != null && deviceProfile.isTablet != bool.booleanValue()) {
                boolean z4 = deviceProfile.isTablet;
                if (z4 && ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher)).isActive() && !this.mExternalTransitionStatusProvider.hasRun()) {
                    preemptivelyStartAnimationOnNextFrame();
                }
                if (!z4) {
                    this.mExternalTransitionStatusProvider.onFolded();
                }
            }
            this.mIsTablet = Boolean.valueOf(deviceProfile.isTablet);
        }
    }

    public void onPause() {
        this.mProgressProvider.setReadyToHandleTransition(false);
        this.mQsbInsettable = null;
    }

    public void onResume() {
        Hotseat hotseat = this.mLauncher.getHotseat();
        if (hotseat != null && (hotseat.getQsb() instanceof HorizontalInsettableView)) {
            this.mQsbInsettable = (HorizontalInsettableView) hotseat.getQsb();
        }
        this.mProgressProvider.setReadyToHandleTransition(true);
    }

    public void updateRegisteredViewsIfNeeded() {
        this.mUnfoldMoveFromCenterHotseatAnimator.updateRegisteredViewsIfNeeded();
        this.mUnfoldMoveFromCenterWorkspaceAnimator.updateRegisteredViewsIfNeeded();
    }
}
