package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.ColorDrawable;
import android.util.FloatProperty;
import android.util.IntProperty;
import android.view.View;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.views.ScrimView;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class AnimatedPropertySetter extends PropertySetter {
    protected final AnimatorSet mAnim = new AnimatorSet();
    protected ValueAnimator mProgressAnimator;

    @Override // com.android.launcher3.anim.PropertySetter
    public void add(Animator animator) {
        this.mAnim.play(animator);
    }

    @Override // com.android.launcher3.anim.PropertySetter
    public final void addEndListener(Consumer consumer) {
        if (this.mProgressAnimator == null) {
            this.mProgressAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
        }
        this.mProgressAnimator.addListener(new AnimatorListeners.EndStateCallbackWrapper(consumer));
    }

    public final void addListener(Animator.AnimatorListener animatorListener) {
        this.mAnim.addListener(animatorListener);
    }

    public final void addOnFrameCallback(final Runnable runnable) {
        addOnFrameListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.anim.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                runnable.run();
            }
        });
    }

    public final void addOnFrameListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        if (this.mProgressAnimator == null) {
            this.mProgressAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
        }
        this.mProgressAnimator.addUpdateListener(animatorUpdateListener);
    }

    @Override // com.android.launcher3.anim.PropertySetter
    public AnimatorSet buildAnim() {
        ValueAnimator valueAnimator = this.mProgressAnimator;
        if (valueAnimator != null) {
            add(valueAnimator);
            this.mProgressAnimator = null;
        }
        return this.mAnim;
    }

    @Override // com.android.launcher3.anim.PropertySetter
    public final Animator setColor(Object obj, IntProperty intProperty, int i4, TimeInterpolator timeInterpolator) {
        if (((Integer) intProperty.get(obj)).intValue() == i4) {
            return PropertySetter.NO_OP;
        }
        ObjectAnimator ofArgb = ObjectAnimator.ofArgb(obj, intProperty, i4);
        ofArgb.setInterpolator(timeInterpolator);
        add(ofArgb);
        return ofArgb;
    }

    @Override // com.android.launcher3.anim.PropertySetter
    public final Animator setFloat(Object obj, FloatProperty floatProperty, float f4, TimeInterpolator timeInterpolator) {
        if (((Float) floatProperty.get(obj)).floatValue() == f4) {
            return PropertySetter.NO_OP;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(obj, floatProperty, f4);
        ofFloat.setInterpolator(timeInterpolator);
        add(ofFloat);
        return ofFloat;
    }

    @Override // com.android.launcher3.anim.PropertySetter
    public final Animator setInt(Object obj, IntProperty intProperty, int i4, TimeInterpolator timeInterpolator) {
        if (((Integer) intProperty.get(obj)).intValue() == i4) {
            return PropertySetter.NO_OP;
        }
        ObjectAnimator ofInt = ObjectAnimator.ofInt(obj, intProperty, i4);
        ofInt.setInterpolator(timeInterpolator);
        add(ofInt);
        return ofInt;
    }

    @Override // com.android.launcher3.anim.PropertySetter
    public final Animator setViewAlpha(View view, float f4, TimeInterpolator timeInterpolator) {
        AnimatorSet animatorSet = PropertySetter.NO_OP;
        if (view == null) {
            return animatorSet;
        }
        if (Float.compare(view.getAlpha(), f4) == 0) {
            AlphaUpdateListener.updateVisibility(view, 4);
            return animatorSet;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, View.ALPHA, f4);
        ofFloat.addListener(new AlphaUpdateListener(view));
        ofFloat.setInterpolator(timeInterpolator);
        add(ofFloat);
        return ofFloat;
    }

    @Override // com.android.launcher3.anim.PropertySetter
    public final void setViewBackgroundColor(ScrimView scrimView, int i4, TimeInterpolator timeInterpolator) {
        if (scrimView != null) {
            if ((scrimView.getBackground() instanceof ColorDrawable) && ((ColorDrawable) scrimView.getBackground()).getColor() == i4) {
                return;
            }
            ObjectAnimator ofArgb = ObjectAnimator.ofArgb(scrimView, LauncherAnimUtils.VIEW_BACKGROUND_COLOR, i4);
            ofArgb.setInterpolator(timeInterpolator);
            add(ofArgb);
        }
    }
}
