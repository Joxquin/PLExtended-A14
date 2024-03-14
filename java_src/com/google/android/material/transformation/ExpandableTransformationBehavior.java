package com.google.android.material.transformation;

import I2.b;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
@Deprecated
/* loaded from: classes.dex */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* renamed from: b  reason: collision with root package name */
    public AnimatorSet f8260b;

    public ExpandableTransformationBehavior() {
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    public void s(View view, View view2, boolean z4, boolean z5) {
        AnimatorSet animatorSet = this.f8260b;
        boolean z6 = animatorSet != null;
        if (z6) {
            animatorSet.cancel();
        }
        AnimatorSet t4 = t(view, view2, z4, z6);
        this.f8260b = t4;
        t4.addListener(new b(this));
        this.f8260b.start();
        if (z5) {
            return;
        }
        this.f8260b.end();
    }

    public abstract AnimatorSet t(View view, View view2, boolean z4, boolean z5);

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
