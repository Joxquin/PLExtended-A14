package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.os.Handler;
import android.view.IRemoteAnimationFinishedCallback;
import android.view.RemoteAnimationTarget;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.window.RefreshRateTracker;
import com.android.systemui.shared.system.RemoteAnimationRunnerCompat;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class LauncherAnimationRunner extends RemoteAnimationRunnerCompat {
    private static final C0328a0 DEFAULT_FACTORY = new C0328a0();
    private AnimationResult mAnimationResult;
    private final WeakReference mFactory;
    private final Handler mHandler;
    private final boolean mStartAtFrontOfQueue;

    /* loaded from: classes.dex */
    public final class AnimationResult extends IRemoteAnimationFinishedCallback.Stub {
        private final Runnable mASyncFinishRunnable;
        private AnimatorSet mAnimator;
        private boolean mFinished = false;
        private boolean mInitialized = false;
        private Runnable mOnCompleteCallback;
        private final Runnable mSyncFinishRunnable;

        public AnimationResult(Z z4, Runnable runnable) {
            this.mSyncFinishRunnable = z4;
            this.mASyncFinishRunnable = runnable;
        }

        public static /* synthetic */ void a(AnimationResult animationResult) {
            animationResult.mASyncFinishRunnable.run();
            Runnable runnable = animationResult.mOnCompleteCallback;
            if (runnable != null) {
                Executors.MAIN_EXECUTOR.execute(runnable);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static void b(AnimationResult animationResult) {
            if (animationResult.mFinished) {
                return;
            }
            animationResult.mSyncFinishRunnable.run();
            Executors.UI_HELPER_EXECUTOR.execute(new Z(animationResult, 2));
            animationResult.mFinished = true;
        }

        public final void onAnimationFinished() {
            this.mASyncFinishRunnable.run();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void setAnimation(AnimatorSet animatorSet, Context context, Runnable runnable, boolean z4) {
            if (this.mInitialized) {
                throw new IllegalStateException("Animation already initialized");
            }
            this.mInitialized = true;
            this.mAnimator = animatorSet;
            this.mOnCompleteCallback = runnable;
            if (animatorSet == null) {
                if (this.mFinished) {
                    return;
                }
                this.mSyncFinishRunnable.run();
                Executors.UI_HELPER_EXECUTOR.execute(new Z(this, 2));
                this.mFinished = true;
            } else if (!this.mFinished) {
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.LauncherAnimationRunner.AnimationResult.1
                    {
                        AnimationResult.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        AnimationResult.b(AnimationResult.this);
                    }
                });
                if (z4) {
                    this.mAnimator.setCurrentPlayTime(Math.min(RefreshRateTracker.getSingleFrameMs(context), this.mAnimator.getTotalDuration()));
                }
                this.mAnimator.start();
            } else {
                animatorSet.start();
                this.mAnimator.end();
                Runnable runnable2 = this.mOnCompleteCallback;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public interface RemoteAnimationFactory extends com.android.systemui.animation.v {
        @Override // com.android.systemui.animation.v
        default void onAnimationCancelled() {
        }

        @Override // com.android.systemui.animation.v
        void onAnimationStart(int i4, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, AnimationResult animationResult);
    }

    public LauncherAnimationRunner(Handler handler, RemoteAnimationFactory remoteAnimationFactory, boolean z4) {
        this.mHandler = handler;
        this.mFactory = new WeakReference(remoteAnimationFactory);
        this.mStartAtFrontOfQueue = z4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(LauncherAnimationRunner launcherAnimationRunner, Runnable runnable, int i4, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3) {
        AnimationResult animationResult = launcherAnimationRunner.mAnimationResult;
        if (animationResult != null) {
            AnimationResult.b(animationResult);
            launcherAnimationRunner.mAnimationResult = null;
        }
        launcherAnimationRunner.mAnimationResult = new AnimationResult(new Z(launcherAnimationRunner, 1), runnable);
        com.android.systemui.animation.v vVar = (RemoteAnimationFactory) launcherAnimationRunner.mFactory.get();
        if (vVar == null) {
            vVar = DEFAULT_FACTORY;
        }
        vVar.onAnimationStart(i4, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, launcherAnimationRunner.mAnimationResult);
    }

    public static void d(LauncherAnimationRunner launcherAnimationRunner) {
        AnimationResult animationResult = launcherAnimationRunner.mAnimationResult;
        if (animationResult != null) {
            AnimationResult.b(animationResult);
            launcherAnimationRunner.mAnimationResult = null;
        }
        com.android.systemui.animation.v vVar = (RemoteAnimationFactory) launcherAnimationRunner.mFactory.get();
        if (vVar == null) {
            vVar = DEFAULT_FACTORY;
        }
        vVar.onAnimationCancelled();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void onAnimationCancelled() {
        Utilities.postAsyncCallback(this.mHandler, new Z(this, 0));
    }

    @Override // com.android.systemui.shared.system.RemoteAnimationRunnerCompat
    public final void onAnimationStart(final int i4, final RemoteAnimationTarget[] remoteAnimationTargetArr, final RemoteAnimationTarget[] remoteAnimationTargetArr2, final RemoteAnimationTarget[] remoteAnimationTargetArr3, final Runnable runnable) {
        Runnable runnable2 = new Runnable() { // from class: com.android.launcher3.Y
            @Override // java.lang.Runnable
            public final void run() {
                LauncherAnimationRunner.b(LauncherAnimationRunner.this, runnable, i4, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3);
            }
        };
        if (this.mStartAtFrontOfQueue) {
            com.android.systemui.shared.recents.utilities.Utilities.postAtFrontOfQueueAsynchronously(this.mHandler, runnable2);
        } else {
            Utilities.postAsyncCallback(this.mHandler, runnable2);
        }
    }
}
