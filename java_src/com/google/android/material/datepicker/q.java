package com.google.android.material.datepicker;

import android.view.View;
import com.google.android.material.datepicker.MaterialCalendar;
/* loaded from: classes.dex */
public final class q implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f7958d;

    public q(MaterialCalendar materialCalendar) {
        this.f7958d = materialCalendar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MaterialCalendar materialCalendar = this.f7958d;
        MaterialCalendar.CalendarSelector calendarSelector = materialCalendar.f7875i;
        MaterialCalendar.CalendarSelector calendarSelector2 = MaterialCalendar.CalendarSelector.YEAR;
        MaterialCalendar.CalendarSelector calendarSelector3 = MaterialCalendar.CalendarSelector.DAY;
        if (calendarSelector == calendarSelector2) {
            materialCalendar.e(calendarSelector3);
        } else if (calendarSelector == calendarSelector3) {
            materialCalendar.e(calendarSelector2);
        }
    }
}
