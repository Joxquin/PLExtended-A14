package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import j2.C1114a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import l2.C1287a;
import l2.InterfaceC1288b;
import z.c;
/* loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior extends c {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedHashSet f7735a;

    /* renamed from: b  reason: collision with root package name */
    public int f7736b;

    /* renamed from: c  reason: collision with root package name */
    public int f7737c;

    /* renamed from: d  reason: collision with root package name */
    public int f7738d;

    /* renamed from: e  reason: collision with root package name */
    public ViewPropertyAnimator f7739e;

    public HideBottomViewOnScrollBehavior() {
        this.f7735a = new LinkedHashSet();
        this.f7736b = 0;
        this.f7737c = 2;
        this.f7738d = 0;
    }

    @Override // z.c
    public boolean h(CoordinatorLayout coordinatorLayout, View view, int i4) {
        this.f7736b = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        return false;
    }

    @Override // z.c
    public final void l(CoordinatorLayout coordinatorLayout, View view, int i4, int i5, int i6, int[] iArr) {
        LinkedHashSet linkedHashSet = this.f7735a;
        if (i4 > 0) {
            if (this.f7737c == 1) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator = this.f7739e;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                view.clearAnimation();
            }
            this.f7737c = 1;
            Iterator it = linkedHashSet.iterator();
            while (it.hasNext()) {
                ((InterfaceC1288b) it.next()).a();
            }
            s(view, this.f7736b + this.f7738d, 175L, C1114a.f10702c);
        } else if (i4 < 0) {
            if (this.f7737c == 2) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator2 = this.f7739e;
            if (viewPropertyAnimator2 != null) {
                viewPropertyAnimator2.cancel();
                view.clearAnimation();
            }
            this.f7737c = 2;
            Iterator it2 = linkedHashSet.iterator();
            while (it2.hasNext()) {
                ((InterfaceC1288b) it2.next()).a();
            }
            s(view, 0, 225L, C1114a.f10703d);
        }
    }

    @Override // z.c
    public boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, int i4, int i5) {
        return i4 == 2;
    }

    public final void s(View view, int i4, long j4, TimeInterpolator timeInterpolator) {
        this.f7739e = view.animate().translationY(i4).setInterpolator(timeInterpolator).setDuration(j4).setListener(new C1287a(this));
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7735a = new LinkedHashSet();
        this.f7736b = 0;
        this.f7737c = 2;
        this.f7738d = 0;
    }
}
