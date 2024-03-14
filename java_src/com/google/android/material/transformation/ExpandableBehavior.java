package com.google.android.material.transformation;

import I2.a;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.A;
import androidx.core.view.J;
import java.util.List;
import java.util.WeakHashMap;
import v2.InterfaceC1438a;
import z.c;
@Deprecated
/* loaded from: classes.dex */
public abstract class ExpandableBehavior extends c {

    /* renamed from: a  reason: collision with root package name */
    public int f8259a;

    public ExpandableBehavior() {
        this.f8259a = 0;
    }

    @Override // z.c
    public abstract boolean b(View view, View view2);

    @Override // z.c
    public final boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        int i4;
        InterfaceC1438a interfaceC1438a = (InterfaceC1438a) view2;
        if (!interfaceC1438a.c() ? this.f8259a != 1 : !((i4 = this.f8259a) == 0 || i4 == 2)) {
            this.f8259a = interfaceC1438a.c() ? 1 : 2;
            s((View) interfaceC1438a, view, interfaceC1438a.c(), true);
            return true;
        }
        return false;
    }

    @Override // z.c
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i4) {
        InterfaceC1438a interfaceC1438a;
        int i5;
        WeakHashMap weakHashMap = J.f3079a;
        if (!A.c(view)) {
            List d4 = coordinatorLayout.d(view);
            int size = d4.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size) {
                    interfaceC1438a = null;
                    break;
                }
                View view2 = (View) d4.get(i6);
                if (b(view, view2)) {
                    interfaceC1438a = (InterfaceC1438a) view2;
                    break;
                }
                i6++;
            }
            if (interfaceC1438a != null) {
                if (!interfaceC1438a.c() ? this.f8259a != 1 : !((i5 = this.f8259a) == 0 || i5 == 2)) {
                    int i7 = interfaceC1438a.c() ? 1 : 2;
                    this.f8259a = i7;
                    view.getViewTreeObserver().addOnPreDrawListener(new a(this, view, i7, interfaceC1438a));
                }
            }
        }
        return false;
    }

    public abstract void s(View view, View view2, boolean z4, boolean z5);

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8259a = 0;
    }
}
