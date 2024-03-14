package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;
/* loaded from: classes.dex */
public final class r implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f7959d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ D f7960e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f7961f;

    public /* synthetic */ r(MaterialCalendar materialCalendar, D d4, int i4) {
        this.f7959d = i4;
        this.f7961f = materialCalendar;
        this.f7960e = d4;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f7959d) {
            case 0:
                int findFirstVisibleItemPosition = ((LinearLayoutManager) this.f7961f.f7878l.getLayoutManager()).findFirstVisibleItemPosition() + 1;
                if (findFirstVisibleItemPosition < this.f7961f.f7878l.getAdapter().getItemCount()) {
                    MaterialCalendar materialCalendar = this.f7961f;
                    Calendar b4 = H.b(this.f7960e.f7859a.f7920d.f7969d);
                    b4.add(2, findFirstVisibleItemPosition);
                    materialCalendar.d(new z(b4));
                    return;
                }
                return;
            default:
                int findLastVisibleItemPosition = ((LinearLayoutManager) this.f7961f.f7878l.getLayoutManager()).findLastVisibleItemPosition() - 1;
                if (findLastVisibleItemPosition >= 0) {
                    MaterialCalendar materialCalendar2 = this.f7961f;
                    Calendar b5 = H.b(this.f7960e.f7859a.f7920d.f7969d);
                    b5.add(2, findLastVisibleItemPosition);
                    materialCalendar2.d(new z(b5));
                    return;
                }
                return;
        }
    }
}
