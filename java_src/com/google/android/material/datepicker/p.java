package com.google.android.material.datepicker;

import androidx.recyclerview.widget.AbstractC0290q0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
/* loaded from: classes.dex */
public final class p extends AbstractC0290q0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ D f7955a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ MaterialButton f7956b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f7957c;

    public p(MaterialCalendar materialCalendar, D d4, MaterialButton materialButton) {
        this.f7957c = materialCalendar;
        this.f7955a = d4;
        this.f7956b = materialButton;
    }

    @Override // androidx.recyclerview.widget.AbstractC0290q0
    public final void onScrollStateChanged(RecyclerView recyclerView, int i4) {
        if (i4 == 0) {
            recyclerView.announceForAccessibility(this.f7956b.getText());
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0290q0
    public final void onScrolled(RecyclerView recyclerView, int i4, int i5) {
        MaterialCalendar materialCalendar = this.f7957c;
        int findFirstVisibleItemPosition = i4 < 0 ? ((LinearLayoutManager) materialCalendar.f7878l.getLayoutManager()).findFirstVisibleItemPosition() : ((LinearLayoutManager) materialCalendar.f7878l.getLayoutManager()).findLastVisibleItemPosition();
        D d4 = this.f7955a;
        Calendar b4 = H.b(d4.f7859a.f7920d.f7969d);
        b4.add(2, findFirstVisibleItemPosition);
        materialCalendar.f7874h = new z(b4);
        Calendar b5 = H.b(d4.f7859a.f7920d.f7969d);
        b5.add(2, findFirstVisibleItemPosition);
        this.f7956b.setText(new z(b5).q());
    }
}
