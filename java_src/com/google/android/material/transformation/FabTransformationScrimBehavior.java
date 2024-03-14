package com.google.android.material.transformation;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import j2.C1115b;
import j2.h;
import java.util.ArrayList;
import w2.g;
@Deprecated
/* loaded from: classes.dex */
public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {

    /* renamed from: c  reason: collision with root package name */
    public final h f8267c;

    /* renamed from: d  reason: collision with root package name */
    public final h f8268d;

    public FabTransformationScrimBehavior() {
        this.f8267c = new h(75L);
        this.f8268d = new h(0L);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, z.c
    public final boolean b(View view, View view2) {
        return view2 instanceof g;
    }

    @Override // z.c
    public final boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return false;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    public final AnimatorSet t(View view, View view2, boolean z4, boolean z5) {
        ObjectAnimator ofFloat;
        ArrayList arrayList = new ArrayList();
        new ArrayList();
        h hVar = z4 ? this.f8267c : this.f8268d;
        if (z4) {
            if (!z5) {
                view2.setAlpha(0.0f);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, View.ALPHA, 1.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, View.ALPHA, 0.0f);
        }
        hVar.a(ofFloat);
        arrayList.add(ofFloat);
        AnimatorSet animatorSet = new AnimatorSet();
        C1115b.a(animatorSet, arrayList);
        animatorSet.addListener(new I2.h(z4, view2));
        return animatorSet;
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8267c = new h(75L);
        this.f8268d = new h(0L);
    }
}
