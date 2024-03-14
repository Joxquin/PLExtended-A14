package com.google.android.material.datepicker;

import androidx.recyclerview.widget.A0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes.dex */
public final class m extends LinearLayoutManager {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7949a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f7950b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(MaterialCalendar materialCalendar, int i4, int i5) {
        super(i4);
        this.f7950b = materialCalendar;
        this.f7949a = i5;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void calculateExtraLayoutSpace(A0 a02, int[] iArr) {
        int i4 = this.f7949a;
        MaterialCalendar materialCalendar = this.f7950b;
        if (i4 == 0) {
            iArr[0] = materialCalendar.f7878l.getWidth();
            iArr[1] = materialCalendar.f7878l.getWidth();
            return;
        }
        iArr[0] = materialCalendar.f7878l.getHeight();
        iArr[1] = materialCalendar.f7878l.getHeight();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final void smoothScrollToPosition(RecyclerView recyclerView, int i4) {
        F f4 = new F(recyclerView.getContext());
        f4.g(i4);
        startSmoothScroll(f4);
    }
}
