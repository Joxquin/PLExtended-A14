package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.Z;
import com.android.systemui.shared.R;
import java.util.Calendar;
import java.util.Locale;
/* loaded from: classes.dex */
public final class K extends Z {

    /* renamed from: a  reason: collision with root package name */
    public final MaterialCalendar f7870a;

    public K(MaterialCalendar materialCalendar) {
        this.f7870a = materialCalendar;
    }

    @Override // androidx.recyclerview.widget.Z
    public final int getItemCount() {
        return this.f7870a.f7873g.f7925i;
    }

    @Override // androidx.recyclerview.widget.Z
    public final void onBindViewHolder(E0 e02, int i4) {
        MaterialCalendar materialCalendar = this.f7870a;
        int i5 = materialCalendar.f7873g.f7920d.f7971f + i4;
        TextView textView = ((J) e02).f7869d;
        String string = textView.getContext().getString(R.string.mtrl_picker_navigate_to_year_description);
        textView.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i5)));
        textView.setContentDescription(String.format(string, Integer.valueOf(i5)));
        C0731f c0731f = materialCalendar.f7876j;
        Calendar c4 = H.c();
        C0730e c0730e = c4.get(1) == i5 ? c0731f.f7938f : c0731f.f7936d;
        for (Long l4 : materialCalendar.f7872f.i()) {
            c4.setTimeInMillis(l4.longValue());
            if (c4.get(1) == i5) {
                c0730e = c0731f.f7937e;
            }
        }
        c0730e.b(textView);
        textView.setOnClickListener(new I(this, i5));
    }

    @Override // androidx.recyclerview.widget.Z
    public final E0 onCreateViewHolder(RecyclerView recyclerView, int i4) {
        return new J((TextView) LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.mtrl_calendar_year, (ViewGroup) recyclerView, false));
    }
}
