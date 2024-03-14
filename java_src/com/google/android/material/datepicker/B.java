package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class B implements AdapterView.OnItemClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ MaterialCalendarGridView f7855d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ D f7856e;

    public B(D d4, MaterialCalendarGridView materialCalendarGridView) {
        this.f7856e = d4;
        this.f7855d = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i4, long j4) {
        A adapter2 = this.f7855d.getAdapter2();
        if (i4 >= adapter2.b() && i4 <= (adapter2.b() + adapter2.f7850d.f7973h) + (-1)) {
            n nVar = this.f7856e.f7861c;
            long longValue = this.f7855d.getAdapter2().getItem(i4).longValue();
            MaterialCalendar materialCalendar = nVar.f7951a;
            if (materialCalendar.f7873g.f7922f.g(longValue)) {
                materialCalendar.f7872f.a();
                Iterator it = materialCalendar.f7912d.iterator();
                while (it.hasNext()) {
                    ((E) it.next()).a(materialCalendar.f7872f.k());
                }
                materialCalendar.f7878l.getAdapter().notifyDataSetChanged();
                RecyclerView recyclerView = materialCalendar.f7877k;
                if (recyclerView != null) {
                    recyclerView.getAdapter().notifyDataSetChanged();
                }
            }
        }
    }
}
