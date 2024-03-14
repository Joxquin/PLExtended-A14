package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class AnimatorListeners {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class EndStateCallbackWrapper extends AnimatorListenerAdapter {
        private final Consumer mListener;
        private boolean mListenerCalled = false;

        public EndStateCallbackWrapper(Consumer consumer) {
            this.mListener = consumer;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            if (this.mListenerCalled) {
                return;
            }
            this.mListenerCalled = true;
            this.mListener.accept(Boolean.FALSE);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.mListenerCalled) {
                return;
            }
            boolean z4 = true;
            this.mListenerCalled = true;
            Consumer consumer = this.mListener;
            if ((animator instanceof ValueAnimator) && ((ValueAnimator) animator).getAnimatedFraction() <= 0.5f) {
                z4 = false;
            }
            consumer.accept(Boolean.valueOf(z4));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class RunnableSuccessListener extends AnimationSuccessListener {
        private final Runnable mRunnable;

        public RunnableSuccessListener(Runnable runnable) {
            this.mRunnable = runnable;
        }

        @Override // com.android.launcher3.anim.AnimationSuccessListener
        public final void onAnimationSuccess(Animator animator) {
            this.mRunnable.run();
        }
    }

    public static Animator.AnimatorListener forEndCallback(Consumer consumer) {
        return new EndStateCallbackWrapper(consumer);
    }

    public static Animator.AnimatorListener forSuccessCallback(Runnable runnable) {
        return new RunnableSuccessListener(runnable);
    }

    public static Animator.AnimatorListener forEndCallback(final Runnable runnable) {
        return new AnimatorListenerAdapter() { // from class: com.android.launcher3.anim.AnimatorListeners.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                runnable.run();
            }
        };
    }
}
