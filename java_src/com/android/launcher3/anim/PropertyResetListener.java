package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
/* loaded from: classes.dex */
public final class PropertyResetListener extends AnimatorListenerAdapter {
    private Property mPropertyToReset;
    private Object mResetToValue;

    public PropertyResetListener(Property property, Object obj) {
        this.mPropertyToReset = property;
        this.mResetToValue = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.mPropertyToReset.set(((ObjectAnimator) animator).getTarget(), this.mResetToValue);
    }
}
