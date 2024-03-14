package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.android.systemui.shared.R;
import java.util.Calendar;
import java.util.Locale;
/* renamed from: com.google.android.material.datepicker.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0735j extends BaseAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final Calendar f7942d;

    /* renamed from: e  reason: collision with root package name */
    public final int f7943e;

    /* renamed from: f  reason: collision with root package name */
    public final int f7944f;

    public C0735j() {
        Calendar d4 = H.d(null);
        this.f7942d = d4;
        this.f7943e = d4.getMaximum(7);
        this.f7944f = d4.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f7943e;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i4) {
        int i5 = this.f7943e;
        if (i4 >= i5) {
            return null;
        }
        int i6 = i4 + this.f7944f;
        if (i6 > i5) {
            i6 -= i5;
        }
        return Integer.valueOf(i6);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i4) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i4, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        Calendar calendar = this.f7942d;
        int i5 = i4 + this.f7944f;
        int i6 = this.f7943e;
        if (i5 > i6) {
            i5 -= i6;
        }
        calendar.set(7, i5);
        textView.setText(this.f7942d.getDisplayName(7, 4, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), this.f7942d.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }

    public C0735j(int i4) {
        Calendar d4 = H.d(null);
        this.f7942d = d4;
        this.f7943e = d4.getMaximum(7);
        this.f7944f = i4;
    }
}
