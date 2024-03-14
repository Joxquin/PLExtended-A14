package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import androidx.recyclerview.widget.C0282m0;
import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.Z;
import com.android.systemui.shared.R;
import java.util.Calendar;
/* loaded from: classes.dex */
public final class D extends Z {

    /* renamed from: a  reason: collision with root package name */
    public final C0729d f7859a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC0732g f7860b;

    /* renamed from: c  reason: collision with root package name */
    public final n f7861c;

    /* renamed from: d  reason: collision with root package name */
    public final int f7862d;

    public D(Context context, InterfaceC0732g interfaceC0732g, C0729d c0729d, n nVar) {
        z zVar = c0729d.f7920d;
        z zVar2 = c0729d.f7921e;
        z zVar3 = c0729d.f7923g;
        if (zVar.f7969d.compareTo(zVar3.f7969d) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (zVar3.f7969d.compareTo(zVar2.f7969d) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        int i4 = A.f7848i;
        Object obj = MaterialCalendar.MONTHS_VIEW_GROUP_TAG;
        this.f7862d = (context.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * i4) + (MaterialDatePicker.e(context) ? context.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) : 0);
        this.f7859a = c0729d;
        this.f7860b = interfaceC0732g;
        this.f7861c = nVar;
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.Z
    public final int getItemCount() {
        return this.f7859a.f7926j;
    }

    @Override // androidx.recyclerview.widget.Z
    public final long getItemId(int i4) {
        Calendar b4 = H.b(this.f7859a.f7920d.f7969d);
        b4.add(2, i4);
        return new z(b4).f7969d.getTimeInMillis();
    }

    @Override // androidx.recyclerview.widget.Z
    public final void onBindViewHolder(E0 e02, int i4) {
        C c4 = (C) e02;
        C0729d c0729d = this.f7859a;
        Calendar b4 = H.b(c0729d.f7920d.f7969d);
        b4.add(2, i4);
        z zVar = new z(b4);
        c4.f7857d.setText(zVar.q());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) c4.f7858e.findViewById(R.id.month_grid);
        if (materialCalendarGridView.getAdapter2() == null || !zVar.equals(materialCalendarGridView.getAdapter2().f7850d)) {
            A a4 = new A(zVar, this.f7860b, c0729d);
            materialCalendarGridView.setNumColumns(zVar.f7972g);
            materialCalendarGridView.setAdapter((ListAdapter) a4);
        } else {
            materialCalendarGridView.invalidate();
            A adapter2 = materialCalendarGridView.getAdapter2();
            for (Long l4 : adapter2.f7852f) {
                adapter2.e(materialCalendarGridView, l4.longValue());
            }
            InterfaceC0732g interfaceC0732g = adapter2.f7851e;
            if (interfaceC0732g != null) {
                for (Long l5 : interfaceC0732g.i()) {
                    adapter2.e(materialCalendarGridView, l5.longValue());
                }
                adapter2.f7852f = adapter2.f7851e.i();
            }
        }
        materialCalendarGridView.setOnItemClickListener(new B(this, materialCalendarGridView));
    }

    @Override // androidx.recyclerview.widget.Z
    public final E0 onCreateViewHolder(RecyclerView recyclerView, int i4) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, (ViewGroup) recyclerView, false);
        if (MaterialDatePicker.e(recyclerView.getContext())) {
            linearLayout.setLayoutParams(new C0282m0(-1, this.f7862d));
            return new C(linearLayout, true);
        }
        return new C(linearLayout, false);
    }
}
