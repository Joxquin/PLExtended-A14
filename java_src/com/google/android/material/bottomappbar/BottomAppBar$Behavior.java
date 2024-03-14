package com.google.android.material.bottomappbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.A;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;
import m2.C1307b;
import m2.C1311f;
import m2.View$OnLayoutChangeListenerC1308c;
import w2.g;
import w2.p;
import z.f;
/* loaded from: classes.dex */
public class BottomAppBar$Behavior extends HideBottomViewOnScrollBehavior {

    /* renamed from: f  reason: collision with root package name */
    public final Rect f7747f;

    /* renamed from: g  reason: collision with root package name */
    public WeakReference f7748g;

    /* renamed from: h  reason: collision with root package name */
    public final View$OnLayoutChangeListenerC1308c f7749h;

    public BottomAppBar$Behavior() {
        this.f7749h = new View$OnLayoutChangeListenerC1308c(this);
        this.f7747f = new Rect();
    }

    @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, z.c
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i4) {
        C1311f c1311f = (C1311f) view;
        this.f7748g = new WeakReference(c1311f);
        int i5 = C1311f.f11737U;
        View A3 = c1311f.A();
        if (A3 != null) {
            WeakHashMap weakHashMap = J.f3079a;
            if (!A.c(A3)) {
                ((f) A3.getLayoutParams()).f12970d = 17;
                int i6 = ((ViewGroup.MarginLayoutParams) ((f) A3.getLayoutParams())).bottomMargin;
                if (A3 instanceof g) {
                    g gVar = (g) A3;
                    if (gVar.e().f12793d == null) {
                        gVar.e().f12793d = j2.g.a(R.animator.mtrl_fab_show_motion_spec, gVar.getContext());
                    }
                    if (gVar.e().f12794e == null) {
                        gVar.e().f12794e = j2.g.a(R.animator.mtrl_fab_hide_motion_spec, gVar.getContext());
                    }
                    gVar.addOnLayoutChangeListener(this.f7749h);
                    p e4 = gVar.e();
                    if (e4.f12799j == null) {
                        e4.f12799j = new ArrayList();
                    }
                    e4.f12799j.add(null);
                    C1307b c1307b = new C1307b(c1311f);
                    p e5 = gVar.e();
                    if (e5.f12798i == null) {
                        e5.f12798i = new ArrayList();
                    }
                    e5.f12798i.add(c1307b);
                    p e6 = gVar.e();
                    w2.f fVar = new w2.f(gVar);
                    if (e6.f12800k == null) {
                        e6.f12800k = new ArrayList();
                    }
                    e6.f12800k.add(fVar);
                }
                throw null;
            }
        }
        coordinatorLayout.n(c1311f, i4);
        super.h(coordinatorLayout, c1311f, i4);
        return false;
    }

    @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, z.c
    public final boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, int i4, int i5) {
        C1311f c1311f = (C1311f) view;
        return false;
    }

    public BottomAppBar$Behavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7749h = new View$OnLayoutChangeListenerC1308c(this);
        this.f7747f = new Rect();
    }
}
