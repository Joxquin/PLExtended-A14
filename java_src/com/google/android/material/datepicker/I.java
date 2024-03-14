package com.google.android.material.datepicker;

import android.view.View;
import com.google.android.material.datepicker.MaterialCalendar;
/* loaded from: classes.dex */
public final class I implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f7867d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ K f7868e;

    public I(K k4, int i4) {
        this.f7868e = k4;
        this.f7867d = i4;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        z o4 = z.o(this.f7867d, this.f7868e.f7870a.f7874h.f7970e);
        C0729d c0729d = this.f7868e.f7870a.f7873g;
        if (o4.f7969d.compareTo(c0729d.f7920d.f7969d) < 0) {
            o4 = c0729d.f7920d;
        } else {
            if (o4.f7969d.compareTo(c0729d.f7921e.f7969d) > 0) {
                o4 = c0729d.f7921e;
            }
        }
        this.f7868e.f7870a.d(o4);
        this.f7868e.f7870a.e(MaterialCalendar.CalendarSelector.DAY);
    }
}
