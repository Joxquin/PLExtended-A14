package com.android.launcher3.statemanager;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.states.StateAnimationConfig;
import j.C1080K;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.function.BiConsumer;
/* loaded from: classes.dex */
public final class StateManager {
    private final StatefulActivity mActivity;
    private final AtomicAnimationFactory mAtomicAnimationFactory;
    private final BaseState mBaseState;
    private BaseState mCurrentStableState;
    private BaseState mLastStableState;
    private BaseState mRestState;
    private BaseState mState;
    private StateHandler[] mStateHandlers;
    private final AnimationState mConfig = new AnimationState();
    private final ArrayList mListeners = new ArrayList();
    private final Handler mUiHandler = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.statemanager.StateManager$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends AnimationSuccessListener {
        final /* synthetic */ BaseState val$state;

        public AnonymousClass1(BaseState baseState) {
            this.val$state = baseState;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            StateManager.this.onStateTransitionStart(this.val$state);
        }

        @Override // com.android.launcher3.anim.AnimationSuccessListener
        public final void onAnimationSuccess(Animator animator) {
            StateManager.this.onStateTransitionEnd(this.val$state);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class AnimationState extends StateAnimationConfig implements Animator.AnimatorListener {
        private static final StateAnimationConfig DEFAULT = new StateAnimationConfig();
        public int changeId = 0;
        public AnimatorSet currentAnimation;
        public AnimatorPlaybackController playbackController;
        public Object targetState;

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            AnimatorPlaybackController animatorPlaybackController = this.playbackController;
            if (animatorPlaybackController != null && animatorPlaybackController.getTarget() == animator) {
                this.playbackController = null;
            }
            if (this.currentAnimation == animator) {
                this.currentAnimation = null;
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }

        public final void reset() {
            AnimatorSet animatorSet = this.currentAnimation;
            AnimatorPlaybackController animatorPlaybackController = this.playbackController;
            DEFAULT.copyTo(this);
            this.targetState = null;
            this.currentAnimation = null;
            this.playbackController = null;
            this.changeId++;
            if (animatorPlaybackController != null) {
                animatorPlaybackController.getAnimationPlayer().cancel();
                animatorPlaybackController.dispatchOnCancel();
                animatorPlaybackController.dispatchOnEnd();
            } else if (animatorSet != null) {
                animatorSet.setDuration(0L);
                if (!animatorSet.isStarted()) {
                    AnimatorPlaybackController.callListenerCommandRecursively(animatorSet, new BiConsumer() { // from class: com.android.launcher3.statemanager.b
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            switch (r1) {
                                case 0:
                                    ((Animator.AnimatorListener) obj).onAnimationCancel((Animator) obj2);
                                    return;
                                default:
                                    ((Animator.AnimatorListener) obj).onAnimationEnd((Animator) obj2);
                                    return;
                            }
                        }
                    });
                    AnimatorPlaybackController.callListenerCommandRecursively(animatorSet, new BiConsumer() { // from class: com.android.launcher3.statemanager.b
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            switch (r1) {
                                case 0:
                                    ((Animator.AnimatorListener) obj).onAnimationCancel((Animator) obj2);
                                    return;
                                default:
                                    ((Animator.AnimatorListener) obj).onAnimationEnd((Animator) obj2);
                                    return;
                            }
                        }
                    });
                }
                animatorSet.cancel();
            }
        }
    }

    /* loaded from: classes.dex */
    public class AtomicAnimationFactory {
        protected static final int NEXT_INDEX = 0;
        private final Animator[] mStateElementAnimators;

        public AtomicAnimationFactory(int i4) {
            this.mStateElementAnimators = new Animator[i4];
        }

        public void cancelAllStateElementAnimation() {
            Animator[] animatorArr;
            for (Animator animator : this.mStateElementAnimators) {
                if (animator != null) {
                    animator.cancel();
                }
            }
        }

        public Animator createStateElementAnimation(int i4, float... fArr) {
            throw new RuntimeException(C1080K.a("Unknown gesture animation ", i4));
        }

        public void prepareForAtomicAnimation(Object obj, Object obj2, StateAnimationConfig stateAnimationConfig) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class StartAnimRunnable implements Runnable {
        private final AnimatorSet mAnim;

        public StartAnimRunnable(AnimatorSet animatorSet) {
            this.mAnim = animatorSet;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AnimatorSet animatorSet = StateManager.this.mConfig.currentAnimation;
            AnimatorSet animatorSet2 = this.mAnim;
            if (animatorSet != animatorSet2) {
                return;
            }
            animatorSet2.start();
        }
    }

    /* loaded from: classes.dex */
    public interface StateHandler {
        default void onBackCancelled(Object obj) {
        }

        default void onBackProgressed(Object obj, float f4) {
        }

        void setState(Object obj);

        void setStateWithAnimation(Object obj, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation);
    }

    /* loaded from: classes.dex */
    public interface StateListener {
        default void onStateTransitionComplete(Object obj) {
        }

        default void onStateTransitionStart(Object obj) {
        }
    }

    public StateManager(StatefulActivity statefulActivity, BaseState baseState) {
        this.mActivity = statefulActivity;
        this.mBaseState = baseState;
        this.mCurrentStableState = baseState;
        this.mLastStableState = baseState;
        this.mState = baseState;
        this.mAtomicAnimationFactory = statefulActivity.createAtomicAnimationFactory();
    }

    public static /* synthetic */ void a(StateManager stateManager, int i4, BaseState baseState, BaseState baseState2, Animator.AnimatorListener animatorListener) {
        if (stateManager.mConfig.changeId == i4) {
            stateManager.goToStateAnimated(baseState, baseState2, animatorListener);
        }
    }

    private PendingAnimation createAnimationToNewWorkspaceInternal(BaseState baseState) {
        AnimationState animationState = this.mConfig;
        PendingAnimation pendingAnimation = new PendingAnimation(animationState.duration);
        if (!animationState.hasAnimationFlag(1)) {
            for (StateHandler stateHandler : getStateHandlers()) {
                stateHandler.setStateWithAnimation(baseState, animationState, pendingAnimation);
            }
        }
        pendingAnimation.addListener(new AnonymousClass1(baseState));
        AnimatorSet buildAnim = pendingAnimation.buildAnim();
        animationState.currentAnimation = buildAnim;
        animationState.targetState = baseState;
        buildAnim.addListener(animationState);
        return pendingAnimation;
    }

    private void goToStateAnimated(BaseState baseState, BaseState baseState2, Animator.AnimatorListener animatorListener) {
        BaseState baseState3 = this.mBaseState;
        StatefulActivity statefulActivity = this.mActivity;
        int transitionDuration = baseState == baseState3 ? baseState2.getTransitionDuration(statefulActivity, false) : baseState.getTransitionDuration(statefulActivity, true);
        AnimationState animationState = this.mConfig;
        animationState.duration = transitionDuration;
        this.mAtomicAnimationFactory.prepareForAtomicAnimation(baseState2, baseState, animationState);
        AnimatorSet buildAnim = createAnimationToNewWorkspaceInternal(baseState).buildAnim();
        if (animatorListener != null) {
            buildAnim.addListener(animatorListener);
        }
        this.mUiHandler.post(new StartAnimRunnable(buildAnim));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStateTransitionEnd(BaseState baseState) {
        BaseState baseState2 = this.mCurrentStableState;
        if (baseState != baseState2) {
            this.mLastStableState = baseState.getHistoryForState(baseState2);
            this.mCurrentStableState = baseState;
        }
        this.mActivity.onStateSetEnd(baseState);
        if (baseState == this.mBaseState) {
            this.mRestState = null;
        }
        StringBuilder sb = new StringBuilder("Notifying ");
        ArrayList arrayList = this.mListeners;
        sb.append(arrayList.size());
        sb.append(" listeners for end transition for state: ");
        sb.append(baseState.toString());
        Log.d("b/279059025", sb.toString());
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((StateListener) arrayList.get(size)).onStateTransitionComplete(baseState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStateTransitionStart(BaseState baseState) {
        this.mState = baseState;
        this.mActivity.onStateSetStart(baseState);
        Log.d("b/279059025", "Notifying listeners for state transition start to state: " + baseState.toString());
        ArrayList arrayList = this.mListeners;
        for (int size = arrayList.size() + (-1); size >= 0; size--) {
            ((StateListener) arrayList.get(size)).onStateTransitionStart(baseState);
        }
    }

    public final void addStateListener(StateListener stateListener) {
        this.mListeners.add(stateListener);
    }

    public final void cancelAnimation() {
        Log.d("b/279059025", "current animation cancelled");
        AnimationState animationState = this.mConfig;
        animationState.reset();
        while (true) {
            if (animationState.currentAnimation == null && animationState.playbackController == null) {
                return;
            }
            animationState.reset();
        }
    }

    public final void cancelStateElementAnimation(int i4) {
        AtomicAnimationFactory atomicAnimationFactory = this.mAtomicAnimationFactory;
        if (atomicAnimationFactory.mStateElementAnimators[i4] != null) {
            atomicAnimationFactory.mStateElementAnimators[i4].cancel();
        }
    }

    public final AnimatorPlaybackController createAnimationToNewWorkspace(BaseState baseState, long j4, int i4) {
        StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
        stateAnimationConfig.duration = j4;
        stateAnimationConfig.animFlags = i4;
        return createAnimationToNewWorkspace(baseState, stateAnimationConfig);
    }

    public final AnimatorSet createAtomicAnimation(LauncherState launcherState, LauncherState launcherState2, StateAnimationConfig stateAnimationConfig) {
        PendingAnimation pendingAnimation = new PendingAnimation(stateAnimationConfig.duration);
        this.mAtomicAnimationFactory.prepareForAtomicAnimation(launcherState, launcherState2, stateAnimationConfig);
        for (StateHandler stateHandler : this.mActivity.getStateManager().getStateHandlers()) {
            stateHandler.setStateWithAnimation(launcherState2, stateAnimationConfig, pendingAnimation);
        }
        return pendingAnimation.buildAnim();
    }

    public final Animator createStateElementAnimation(final int i4, float... fArr) {
        cancelStateElementAnimation(i4);
        AtomicAnimationFactory atomicAnimationFactory = this.mAtomicAnimationFactory;
        Animator createStateElementAnimation = atomicAnimationFactory.createStateElementAnimation(i4, fArr);
        atomicAnimationFactory.mStateElementAnimators[i4] = createStateElementAnimation;
        createStateElementAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.statemanager.StateManager.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                StateManager.this.mAtomicAnimationFactory.mStateElementAnimators[i4] = null;
            }
        });
        return createStateElementAnimation;
    }

    public final void dump(String str, PrintWriter printWriter) {
        printWriter.println(str + "StateManager:");
        printWriter.println(str + "\tmLastStableState:" + this.mLastStableState);
        printWriter.println(str + "\tmCurrentStableState:" + this.mCurrentStableState);
        printWriter.println(str + "\tmState:" + this.mState);
        printWriter.println(str + "\tmRestState:" + this.mRestState);
        printWriter.println(str + "\tisInTransition:" + isInTransition());
    }

    public final BaseState getCurrentStableState() {
        return this.mCurrentStableState;
    }

    public final BaseState getLastState() {
        return this.mLastStableState;
    }

    public final BaseState getRestState() {
        BaseState baseState = this.mRestState;
        return baseState == null ? this.mBaseState : baseState;
    }

    public final BaseState getState() {
        return this.mState;
    }

    public final StateHandler[] getStateHandlers() {
        if (this.mStateHandlers == null) {
            ArrayList arrayList = new ArrayList();
            this.mActivity.collectStateHandlers(arrayList);
            this.mStateHandlers = (StateHandler[]) arrayList.toArray(new StateHandler[arrayList.size()]);
        }
        return this.mStateHandlers;
    }

    public final BaseState getTargetState() {
        return (BaseState) this.mConfig.targetState;
    }

    public final void goToState(BaseState baseState) {
        goToState(baseState, shouldAnimateStateChange());
    }

    public final void goToState$1(BaseState baseState) {
        goToState(baseState, true, 500L, null);
    }

    public final boolean isInStableState(BaseState baseState) {
        Object obj;
        return this.mState == baseState && this.mCurrentStableState == baseState && ((obj = this.mConfig.targetState) == null || obj == baseState);
    }

    public final boolean isInTransition() {
        return this.mConfig.currentAnimation != null;
    }

    public final void moveToRestState() {
        moveToRestState(shouldAnimateStateChange());
    }

    public final void reapplyState(boolean z4) {
        AnimatorSet animatorSet;
        AnimationState animationState = this.mConfig;
        boolean z5 = animationState.currentAnimation != null;
        if (z4) {
            if (this.mState.shouldPreserveDataStateOnReapply() && (animatorSet = animationState.currentAnimation) != null) {
                animatorSet.end();
            }
            this.mAtomicAnimationFactory.cancelAllStateElementAnimation();
            cancelAnimation();
        }
        if (animationState.currentAnimation == null) {
            for (StateHandler stateHandler : getStateHandlers()) {
                stateHandler.setState(this.mState);
            }
            if (z5) {
                onStateTransitionEnd(this.mState);
            }
        }
    }

    public final void removeStateListener(StateListener stateListener) {
        this.mListeners.remove(stateListener);
    }

    public final void setCurrentAnimation(AnimatorSet animatorSet, LauncherState launcherState) {
        Log.d("b/279059025", "setting animation to ".concat(launcherState.toString()));
        cancelAnimation();
        setCurrentAnimation(animatorSet, new Animator[0]);
        animatorSet.addListener(new AnonymousClass1(launcherState));
    }

    public final void setCurrentUserControlledAnimation(AnimatorPlaybackController animatorPlaybackController) {
        AnimationState animationState = this.mConfig;
        AnimatorSet animatorSet = animationState.currentAnimation;
        if (animatorSet != null) {
            animatorSet.removeListener(animationState);
            animationState.currentAnimation = null;
        }
        animationState.playbackController = null;
        setCurrentAnimation(animatorPlaybackController.getTarget(), new Animator[0]);
        animationState.userControlled = true;
        animationState.playbackController = animatorPlaybackController;
    }

    public final void setRestState(BaseState baseState) {
        this.mRestState = baseState;
    }

    public final boolean shouldAnimateStateChange() {
        StatefulActivity statefulActivity = this.mActivity;
        return !statefulActivity.isForceInvisible() && statefulActivity.isStarted();
    }

    public final String toString() {
        return " StateManager(mLastStableState:" + this.mLastStableState + ", mCurrentStableState:" + this.mCurrentStableState + ", mState:" + this.mState + ", mRestState:" + this.mRestState + ", isInTransition:" + isInTransition() + ")";
    }

    public final void goToState(BaseState baseState, boolean z4) {
        goToState(baseState, z4, 0L, null);
    }

    public final void moveToRestState(boolean z4) {
        AnimationState animationState = this.mConfig;
        if ((animationState.currentAnimation == null || !animationState.userControlled) && this.mState.shouldDisableRestore()) {
            goToState(getRestState(), z4);
            this.mLastStableState = this.mBaseState;
        }
    }

    public final void goToState(BaseState baseState, boolean z4, Animator.AnimatorListener animatorListener) {
        goToState(baseState, z4, 0L, animatorListener);
    }

    public final void goToState(BaseState baseState, long j4, Animator.AnimatorListener animatorListener) {
        goToState(baseState, true, j4, animatorListener);
    }

    private void goToState(final BaseState baseState, boolean z4, long j4, final Animator.AnimatorListener animatorListener) {
        Log.d("b/279059025", "go to state " + baseState);
        boolean areAnimatorsEnabled = z4 & ValueAnimator.areAnimatorsEnabled();
        boolean isInState = this.mActivity.isInState(baseState);
        AnimationState animationState = this.mConfig;
        if (isInState) {
            if (animationState.currentAnimation == null) {
                if (animatorListener != null) {
                    animatorListener.onAnimationEnd(null);
                    return;
                }
                return;
            } else if ((!animationState.userControlled && areAnimatorsEnabled && animationState.targetState == baseState) || this.mState.shouldPreserveDataStateOnReapply()) {
                if (animatorListener != null) {
                    animationState.currentAnimation.addListener(animatorListener);
                    return;
                }
                return;
            }
        }
        final BaseState baseState2 = this.mState;
        cancelAnimation();
        if (areAnimatorsEnabled) {
            if (j4 > 0) {
                final int i4 = animationState.changeId;
                this.mUiHandler.postDelayed(new Runnable() { // from class: com.android.launcher3.statemanager.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        StateManager.a(StateManager.this, i4, baseState, baseState2, animatorListener);
                    }
                }, j4);
                return;
            }
            goToStateAnimated(baseState, baseState2, animatorListener);
            return;
        }
        this.mAtomicAnimationFactory.cancelAllStateElementAnimation();
        onStateTransitionStart(baseState);
        for (StateHandler stateHandler : getStateHandlers()) {
            stateHandler.setState(baseState);
        }
        onStateTransitionEnd(baseState);
        if (animatorListener != null) {
            animatorListener.onAnimationEnd(null);
        }
    }

    public final AnimatorPlaybackController createAnimationToNewWorkspace(BaseState baseState, StateAnimationConfig stateAnimationConfig) {
        stateAnimationConfig.userControlled = true;
        cancelAnimation();
        AnimationState animationState = this.mConfig;
        stateAnimationConfig.copyTo(animationState);
        AnimatorPlaybackController createPlaybackController = createAnimationToNewWorkspaceInternal(baseState).createPlaybackController();
        animationState.playbackController = createPlaybackController;
        return createPlaybackController;
    }

    public final void setCurrentAnimation(AnimatorSet animatorSet, Animator... animatorArr) {
        AnimationState animationState;
        int length = animatorArr.length;
        int i4 = 0;
        while (true) {
            animationState = this.mConfig;
            if (i4 >= length) {
                break;
            }
            Animator animator = animatorArr[i4];
            if (animator != null) {
                AnimatorPlaybackController animatorPlaybackController = animationState.playbackController;
                if (animatorPlaybackController != null && animatorPlaybackController.getTarget() == animator) {
                    AnimatorSet animatorSet2 = animationState.currentAnimation;
                    if (animatorSet2 != null) {
                        animatorSet2.removeListener(animationState);
                        animationState.currentAnimation = null;
                    }
                    animationState.playbackController = null;
                } else if (animationState.currentAnimation == animator) {
                    AnimatorSet animatorSet3 = animationState.currentAnimation;
                    if (animatorSet3 != null) {
                        animatorSet3.removeListener(animationState);
                        animationState.currentAnimation = null;
                    }
                    animationState.playbackController = null;
                }
            }
            i4++;
        }
        boolean z4 = animationState.currentAnimation != null;
        cancelAnimation();
        if (z4) {
            reapplyState(false);
            onStateTransitionEnd(this.mState);
        }
        animationState.currentAnimation = animatorSet;
        animationState.targetState = null;
        animatorSet.addListener(animationState);
    }
}
