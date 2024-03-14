package com.android.launcher3.util;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.util.Log;
import android.view.ViewTreeObserver;
import androidx.core.view.ViewTreeObserver$OnPreDrawListenerC0181s;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.statemanager.StatefulActivity;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class CannedAnimationCoordinator {
    private final StatefulActivity activity;
    private AnimatorPlaybackController animationController;
    private long animationDuration;
    private Consumer animationFactory;
    private Object animationProvider;
    private AnimatorPlaybackController currentAnim;
    private final ViewTreeObserver.OnGlobalLayoutListener launcherLayoutListener;
    private boolean recreatePending;

    public CannedAnimationCoordinator(StatefulActivity activity) {
        kotlin.jvm.internal.h.e(activity, "activity");
        this.activity = activity;
        this.launcherLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.android.launcher3.util.CannedAnimationCoordinator$launcherLayoutListener$1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                CannedAnimationCoordinator.access$scheduleRecreateAnimOnPreDraw(CannedAnimationCoordinator.this);
            }
        };
    }

    public static final void access$scheduleRecreateAnimOnPreDraw(final CannedAnimationCoordinator cannedAnimationCoordinator) {
        if (cannedAnimationCoordinator.recreatePending) {
            return;
        }
        cannedAnimationCoordinator.recreatePending = true;
        ViewTreeObserver$OnPreDrawListenerC0181s.a(cannedAnimationCoordinator.activity.getRootView(), new Runnable() { // from class: com.android.launcher3.util.CannedAnimationCoordinator$scheduleRecreateAnimOnPreDraw$1
            @Override // java.lang.Runnable
            public final void run() {
                boolean z4;
                Object obj;
                z4 = CannedAnimationCoordinator.this.recreatePending;
                if (z4) {
                    CannedAnimationCoordinator.this.recreatePending = false;
                    obj = CannedAnimationCoordinator.this.animationProvider;
                    if (obj != null) {
                        CannedAnimationCoordinator.this.recreateAnimation(obj);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void endCurrentAnimation(boolean z4) {
        AnimatorPlaybackController animatorPlaybackController = this.currentAnim;
        if (animatorPlaybackController != null) {
            animatorPlaybackController.setPlayFraction(1.0f);
            if (!z4) {
                animatorPlaybackController.dispatchOnCancel();
            }
            animatorPlaybackController.dispatchOnEnd();
        }
        this.currentAnim = null;
    }

    public final AnimatorPlaybackController getPlaybackController(Object provider) {
        kotlin.jvm.internal.h.e(provider, "provider");
        if (kotlin.jvm.internal.h.a(provider, this.animationProvider)) {
            return this.animationController;
        }
        Object obj = this.animationProvider;
        Log.d("CannedAnimCoordinator", "Wrong controller access from " + provider + ", actual provider " + obj);
        return null;
    }

    public final void recreateAnimation(Object provider) {
        kotlin.jvm.internal.h.e(provider, "provider");
        if (!kotlin.jvm.internal.h.a(provider, this.animationProvider)) {
            Object obj = this.animationProvider;
            Log.e("CannedAnimCoordinator", "Ignore recreate request from " + provider + ", actual provider " + obj);
            return;
        }
        endCurrentAnimation(false);
        if (this.animationFactory == null || this.animationController == null) {
            return;
        }
        PendingAnimation pendingAnimation = new PendingAnimation(this.animationDuration);
        Consumer consumer = this.animationFactory;
        if (consumer != null) {
            consumer.accept(pendingAnimation);
        }
        AnimatorPlaybackController createPlaybackController = pendingAnimation.createPlaybackController();
        AnimatorPlaybackController animatorPlaybackController = this.animationController;
        kotlin.jvm.internal.h.b(animatorPlaybackController);
        createPlaybackController.setPlayFraction(animatorPlaybackController.getProgressFraction());
        this.currentAnim = createPlaybackController;
    }

    public final void setAnimation(Object provider, Consumer consumer, long j4) {
        kotlin.jvm.internal.h.e(provider, "provider");
        if (!kotlin.jvm.internal.h.a(provider, this.animationProvider)) {
            Object obj = this.animationProvider;
            Log.e("CannedAnimCoordinator", "Trying to play two animations together, " + provider + " and " + obj);
        }
        endCurrentAnimation(false);
        AnimatorPlaybackController animatorPlaybackController = this.animationController;
        if (animatorPlaybackController != null) {
            animatorPlaybackController.dispatchOnCancel();
            animatorPlaybackController.dispatchOnEnd();
        }
        this.animationProvider = provider;
        this.animationFactory = consumer;
        this.animationDuration = j4;
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setInterpolator(y0.e.f12949m);
        ofFloat.setDuration(j4);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.util.CannedAnimationCoordinator$setAnimation$1$1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AnimatorPlaybackController animatorPlaybackController2;
                animatorPlaybackController2 = CannedAnimationCoordinator.this.currentAnim;
                if (animatorPlaybackController2 != null) {
                    animatorPlaybackController2.setPlayFraction(valueAnimator.getAnimatedFraction());
                }
            }
        });
        animatorSet.play(ofFloat);
        final AnimatorPlaybackController wrap = AnimatorPlaybackController.wrap(animatorSet, j4);
        animatorSet.addListener(AnimatorListeners.forEndCallback(new Consumer() { // from class: com.android.launcher3.util.CannedAnimationCoordinator$setAnimation$2
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                AnimatorPlaybackController animatorPlaybackController2;
                StatefulActivity statefulActivity;
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
                Boolean success = (Boolean) obj2;
                animatorPlaybackController2 = CannedAnimationCoordinator.this.animationController;
                if (kotlin.jvm.internal.h.a(animatorPlaybackController2, wrap)) {
                    CannedAnimationCoordinator cannedAnimationCoordinator = CannedAnimationCoordinator.this;
                    kotlin.jvm.internal.h.d(success, "success");
                    cannedAnimationCoordinator.endCurrentAnimation(success.booleanValue());
                    CannedAnimationCoordinator.this.animationController = null;
                    CannedAnimationCoordinator.this.animationFactory = null;
                    CannedAnimationCoordinator.this.animationProvider = null;
                    statefulActivity = CannedAnimationCoordinator.this.activity;
                    ViewTreeObserver viewTreeObserver = statefulActivity.getRootView().getViewTreeObserver();
                    CannedAnimationCoordinator cannedAnimationCoordinator2 = CannedAnimationCoordinator.this;
                    if (viewTreeObserver.isAlive()) {
                        onGlobalLayoutListener = cannedAnimationCoordinator2.launcherLayoutListener;
                        viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
                    }
                }
            }
        }));
        StatefulActivity statefulActivity = this.activity;
        ViewTreeObserver viewTreeObserver = statefulActivity.getRootView().getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnGlobalLayoutListener(this.launcherLayoutListener);
        }
        this.recreatePending = false;
        statefulActivity.getStateManager().setCurrentUserControlledAnimation(wrap);
        this.animationController = wrap;
        recreateAnimation(provider);
    }
}
