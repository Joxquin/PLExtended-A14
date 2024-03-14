package com.google.android.material.datepicker;

import android.view.View;
import androidx.core.view.c0;
/* loaded from: classes.dex */
public final class u implements androidx.core.view.r {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f7964d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ View f7965e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f7966f;

    public u(int i4, View view, int i5) {
        this.f7964d = i4;
        this.f7965e = view;
        this.f7966f = i5;
    }

    @Override // androidx.core.view.r
    public final c0 b(View view, c0 c0Var) {
        int i4 = c0Var.f3106a.f(7).f330b;
        View view2 = this.f7965e;
        int i5 = this.f7964d;
        if (i5 >= 0) {
            view2.getLayoutParams().height = i5 + i4;
            view2.setLayoutParams(view2.getLayoutParams());
        }
        view2.setPadding(view2.getPaddingLeft(), this.f7966f + i4, view2.getPaddingRight(), view2.getPaddingBottom());
        return c0Var;
    }
}
