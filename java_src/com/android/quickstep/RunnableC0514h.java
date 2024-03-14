package com.android.quickstep;
/* renamed from: com.android.quickstep.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0514h implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5634d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AbsSwipeUpHandler f5635e;

    public /* synthetic */ RunnableC0514h(AbsSwipeUpHandler absSwipeUpHandler, int i4) {
        this.f5634d = i4;
        this.f5635e = absSwipeUpHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5634d) {
            case 0:
                this.f5635e.lambda$onLauncherStart$6();
                return;
            case 1:
                this.f5635e.lambda$finishCurrentTransitionToRecents$25();
                return;
            case 2:
                this.f5635e.lambda$onSettledOnEndTarget$14();
                return;
            case 3:
                this.f5635e.lambda$onDeferredActivityLaunch$8();
                return;
            case 4:
                this.f5635e.lambda$setupLauncherUiAfterSwipeUpToRecentsAnimation$28();
                return;
            case 5:
                this.f5635e.lambda$onAnimatorPlaybackControllerCreated$11();
                return;
            case 6:
                this.f5635e.continueComputingRecentsScrollIfNecessary();
                return;
            case 7:
                this.f5635e.lambda$finishCurrentTransitionToRecents$26();
                return;
            case 8:
                this.f5635e.lambda$animateToProgressInternal$17();
                return;
            case 9:
                this.f5635e.lambda$onLauncherPresentAndGestureStarted$7();
                return;
            default:
                this.f5635e.lambda$finishCurrentTransitionToHome$27();
                return;
        }
    }
}
