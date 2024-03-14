package com.android.quickstep;
/* renamed from: com.android.quickstep.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0493a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5569d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AbsSwipeUpHandler f5570e;

    public /* synthetic */ RunnableC0493a(AbsSwipeUpHandler absSwipeUpHandler, int i4) {
        this.f5569d = i4;
        this.f5570e = absSwipeUpHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5569d) {
            case 0:
                this.f5570e.lambda$onActivityInit$3();
                return;
            case 1:
                this.f5570e.onLauncherStart();
                return;
            case 2:
                this.f5570e.lambda$onActivityInit$4();
                return;
            case 3:
                this.f5570e.linkRecentsViewScroll();
                return;
            case 4:
                this.f5570e.onLauncherBindToService();
                return;
            case 5:
                this.f5570e.onDeferredActivityLaunch();
                return;
            case 6:
                this.f5570e.lambda$new$2();
                return;
            case 7:
                this.f5570e.lambda$switchToScreenshot$22();
                return;
            case 8:
                this.f5570e.lambda$updateThumbnail$24();
                return;
            case 9:
                this.f5570e.lambda$handleNormalGestureEnd$15();
                return;
            case 10:
                this.f5570e.reset();
                return;
            case 11:
                this.f5570e.finishCurrentTransitionToAllApps();
                return;
            case 12:
                this.f5570e.setupLauncherUiAfterSwipeUpToRecentsAnimation();
                return;
            case 13:
                this.f5570e.continueComputingRecentsScrollIfNecessary();
                return;
            case 14:
                this.f5570e.onSettledOnEndTarget();
                return;
            case 15:
                this.f5570e.invalidateHandler();
                return;
            case 16:
                this.f5570e.invalidateHandlerWithLauncher();
                return;
            case 17:
                this.f5570e.resetStateForAnimationCancel();
                return;
            case 18:
                this.f5570e.resetStateForAnimationCancel();
                return;
            case 19:
                this.f5570e.onLauncherPresentAndGestureStarted();
                return;
            case 20:
                this.f5570e.initializeLauncherAnimationController();
                return;
            case 21:
                this.f5570e.launcherFrameDrawn();
                return;
            case 22:
                this.f5570e.resetStateForAnimationCancel();
                return;
            case 23:
                this.f5570e.resumeLastTask();
                return;
            case 24:
                this.f5570e.startNewTask();
                return;
            case 25:
                this.f5570e.switchToScreenshot();
                return;
            case 26:
                this.f5570e.finishCurrentTransitionToRecents();
                return;
            case 27:
                this.f5570e.finishCurrentTransitionToHome();
                return;
            case 28:
                this.f5570e.startInterceptingTouchesForGesture();
                return;
            default:
                this.f5570e.lambda$linkRecentsViewScroll$31();
                return;
        }
    }
}
