package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.window.RefreshRateTracker;
import com.android.quickstep.C0538p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
/* loaded from: classes.dex */
public final class AnimatorPlaybackController implements ValueAnimator.AnimatorUpdateListener {
    private final AnimatorSet mAnim;
    private final ValueAnimator mAnimationPlayer;
    private final Holder[] mChildAnimations;
    protected float mCurrentFraction;
    private final long mDuration;
    private Runnable mEndAction;
    protected boolean mTargetCancelled = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class Holder {
        public final ValueAnimator anim;
        public final float globalEndProgress;
        public final TimeInterpolator interpolator;
        public ProgressMapper mapper = ProgressMapper.DEFAULT;
        public final SpringProperty springProperty;

        public Holder(Animator animator, float f4, SpringProperty springProperty) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            this.anim = valueAnimator;
            this.springProperty = springProperty;
            this.interpolator = valueAnimator.getInterpolator();
            this.globalEndProgress = ((float) animator.getDuration()) / f4;
        }
    }

    /* loaded from: classes.dex */
    final class OnAnimationEndDispatcher extends AnimationSuccessListener {
        boolean mDispatched = false;

        public OnAnimationEndDispatcher() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            this.mCancelled = false;
            this.mDispatched = false;
        }

        @Override // com.android.launcher3.anim.AnimationSuccessListener
        public final void onAnimationSuccess(Animator animator) {
            if (this.mDispatched) {
                return;
            }
            AnimatorPlaybackController.this.dispatchOnEnd();
            if (AnimatorPlaybackController.this.mEndAction != null) {
                AnimatorPlaybackController.this.mEndAction.run();
            }
            this.mDispatched = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface ProgressMapper {
        public static final g DEFAULT = new g();

        float getProgress(float f4, float f5);
    }

    public AnimatorPlaybackController(AnimatorSet animatorSet, long j4, ArrayList arrayList) {
        this.mAnim = animatorSet;
        this.mDuration = j4;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mAnimationPlayer = ofFloat;
        ofFloat.setInterpolator(y0.e.f12949m);
        ofFloat.addListener(new OnAnimationEndDispatcher());
        ofFloat.addUpdateListener(this);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.anim.AnimatorPlaybackController.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                AnimatorPlaybackController.this.mTargetCancelled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                AnimatorPlaybackController.this.mTargetCancelled = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                AnimatorPlaybackController.this.mTargetCancelled = false;
            }
        });
        this.mChildAnimations = (Holder[]) arrayList.toArray(new Holder[arrayList.size()]);
    }

    public static void a(Animator animator, BiConsumer biConsumer) {
        List<Animator.AnimatorListener> listeners = animator.getListeners();
        if (listeners == null) {
            listeners = Collections.emptyList();
        }
        for (Animator.AnimatorListener animatorListener : listeners) {
            biConsumer.accept(animatorListener, animator);
        }
    }

    public static void addAnimationHoldersRecur(Animator animator, long j4, SpringProperty springProperty, ArrayList arrayList) {
        long duration = animator.getDuration();
        TimeInterpolator interpolator = animator.getInterpolator();
        if (animator instanceof ValueAnimator) {
            arrayList.add(new Holder(animator, (float) j4, springProperty));
        } else if (!(animator instanceof AnimatorSet)) {
            throw new RuntimeException("Unknown animation type " + animator);
        } else {
            Iterator<Animator> it = ((AnimatorSet) animator).getChildAnimations().iterator();
            while (it.hasNext()) {
                Animator next = it.next();
                if (duration > 0) {
                    next.setDuration(duration);
                }
                if (interpolator != null) {
                    next.setInterpolator(interpolator);
                }
                addAnimationHoldersRecur(next, j4, springProperty, arrayList);
            }
        }
    }

    public static /* synthetic */ float b(AnimatorPlaybackController animatorPlaybackController, float f4, float f5) {
        animatorPlaybackController.getClass();
        if (f4 <= 0.0f || f5 >= 1.0f) {
            return 1.0f;
        }
        return Utilities.mapToRange(((float) animatorPlaybackController.mAnimationPlayer.getCurrentPlayTime()) / f4, 0.0f, 1.0f, Math.abs(f5), 1.0f, y0.e.f12949m);
    }

    private static void callAnimatorCommandRecursively(Animator animator, d dVar) {
        dVar.accept(animator);
        if (animator instanceof AnimatorSet) {
            List<Animator> childAnimations = ((AnimatorSet) animator).getChildAnimations();
            if (childAnimations == null) {
                childAnimations = Collections.emptyList();
            }
            for (Animator animator2 : childAnimations) {
                callAnimatorCommandRecursively(animator2, dVar);
            }
        }
    }

    public static void callListenerCommandRecursively(Animator animator, BiConsumer biConsumer) {
        callAnimatorCommandRecursively(animator, new d(1, biConsumer));
    }

    public static AnimatorPlaybackController wrap(AnimatorSet animatorSet, long j4) {
        ArrayList arrayList = new ArrayList();
        addAnimationHoldersRecur(animatorSet, j4, SpringProperty.DEFAULT, arrayList);
        return new AnimatorPlaybackController(animatorSet, j4, arrayList);
    }

    public final void dispatchOnCancel() {
        callListenerCommandRecursively(this.mAnim, new c(2));
    }

    public final void dispatchOnEnd() {
        callListenerCommandRecursively(this.mAnim, new c(1));
    }

    public final void dispatchOnStart() {
        callListenerCommandRecursively(this.mAnim, new c(0));
    }

    public final void dispatchSetInterpolator(C0538p c0538p) {
        callAnimatorCommandRecursively(this.mAnim, new d(0, c0538p));
    }

    public final void forceFinishIfCloseToEnd() {
        if (!this.mAnimationPlayer.isRunning() || this.mAnimationPlayer.getAnimatedFraction() <= 0.95f) {
            return;
        }
        this.mAnimationPlayer.end();
    }

    public final ValueAnimator getAnimationPlayer() {
        return this.mAnimationPlayer;
    }

    public final float getInterpolatedProgress() {
        return (this.mAnim.getInterpolator() != null ? this.mAnim.getInterpolator() : y0.e.f12949m).getInterpolation(this.mCurrentFraction);
    }

    public final float getProgressFraction() {
        return this.mCurrentFraction;
    }

    public final AnimatorSet getTarget() {
        return this.mAnim;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        setPlayFraction(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public final void pause() {
        Holder[] holderArr;
        for (Holder holder : this.mChildAnimations) {
            holder.anim.setInterpolator(holder.interpolator);
            holder.mapper = ProgressMapper.DEFAULT;
        }
        this.mAnimationPlayer.cancel();
    }

    public final void reverse() {
        this.mAnimationPlayer.setFloatValues(this.mCurrentFraction, 0.0f);
        ValueAnimator valueAnimator = this.mAnimationPlayer;
        float f4 = this.mCurrentFraction;
        long j4 = this.mDuration;
        float f5 = ((float) j4) * f4;
        valueAnimator.setDuration(f5 <= 0.0f ? 0L : Math.min(f5, j4));
        this.mAnimationPlayer.start();
    }

    public final void setEndAction(Runnable runnable) {
        this.mEndAction = runnable;
    }

    public final void setPlayFraction(float f4) {
        Holder[] holderArr;
        this.mCurrentFraction = f4;
        if (this.mTargetCancelled) {
            return;
        }
        float boundToRange = Utilities.boundToRange(f4, 0.0f, 1.0f);
        for (Holder holder : this.mChildAnimations) {
            holder.anim.setCurrentFraction(holder.mapper.getProgress(boundToRange, holder.globalEndProgress));
        }
    }

    public final void start() {
        this.mAnimationPlayer.setFloatValues(this.mCurrentFraction, 1.0f);
        ValueAnimator valueAnimator = this.mAnimationPlayer;
        float f4 = 1.0f - this.mCurrentFraction;
        long j4 = this.mDuration;
        float f5 = ((float) j4) * f4;
        valueAnimator.setDuration(f5 <= 0.0f ? 0L : Math.min(f5, j4));
        this.mAnimationPlayer.start();
    }

    public final void startWithVelocity(BaseDraggingActivity baseDraggingActivity, boolean z4, float f4, float f5, long j4) {
        float f6;
        int i4;
        Holder[] holderArr;
        float abs = 1.0f / Math.abs(f5);
        float f7 = f4 * abs;
        final float singleFrameMs = RefreshRateTracker.getSingleFrameMs(baseDraggingActivity) * f7;
        float boundToRange = Utilities.boundToRange(this.mCurrentFraction + singleFrameMs, 0.0f, 1.0f);
        int i5 = z4 ? 1 : 2;
        Holder[] holderArr2 = this.mChildAnimations;
        int length = holderArr2.length;
        long j5 = j4;
        int i6 = 0;
        while (i6 < length) {
            Holder holder = holderArr2[i6];
            if ((holder.springProperty.flags & i5) != 0) {
                final SpringAnimationBuilder springAnimationBuilder = new SpringAnimationBuilder(baseDraggingActivity);
                i4 = i5;
                springAnimationBuilder.setStartValue(this.mCurrentFraction);
                springAnimationBuilder.setEndValue(z4 ? 1.0f : 0.0f);
                springAnimationBuilder.setStartVelocity(f7);
                springAnimationBuilder.setMinimumVisibleChange(abs);
                SpringProperty springProperty = holder.springProperty;
                f6 = abs;
                springAnimationBuilder.setDampingRatio(springProperty.mDampingRatio);
                springAnimationBuilder.setStiffness(springProperty.mStiffness);
                springAnimationBuilder.computeParams();
                holderArr = holderArr2;
                long duration = springAnimationBuilder.getDuration();
                j5 = Math.max(duration, j5);
                final float f8 = (float) duration;
                holder.mapper = new ProgressMapper() { // from class: com.android.launcher3.anim.e
                    @Override // com.android.launcher3.anim.AnimatorPlaybackController.ProgressMapper
                    public final float getProgress(float f9, float f10) {
                        return AnimatorPlaybackController.b(AnimatorPlaybackController.this, f8, singleFrameMs);
                    }
                };
                holder.anim.setInterpolator(new TimeInterpolator() { // from class: com.android.launcher3.anim.f
                    @Override // android.animation.TimeInterpolator
                    public final float getInterpolation(float f9) {
                        return SpringAnimationBuilder.this.getInterpolatedValue(f9);
                    }
                });
            } else {
                f6 = abs;
                i4 = i5;
                holderArr = holderArr2;
            }
            i6++;
            holderArr2 = holderArr;
            i5 = i4;
            abs = f6;
        }
        ValueAnimator valueAnimator = this.mAnimationPlayer;
        float[] fArr = new float[2];
        fArr[0] = boundToRange;
        fArr[1] = z4 ? 1.0f : 0.0f;
        valueAnimator.setFloatValues(fArr);
        if (j5 <= j4) {
            this.mAnimationPlayer.setDuration(j4);
            this.mAnimationPlayer.setInterpolator(y0.e.c(f4));
        } else {
            this.mAnimationPlayer.setDuration(j5);
            this.mAnimationPlayer.setInterpolator(y0.e.b(0.0f, ((float) j4) / ((float) j5), y0.e.c(f4)));
        }
        this.mAnimationPlayer.start();
    }
}
