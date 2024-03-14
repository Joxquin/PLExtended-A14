package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class H {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicReference f7866a = new AtomicReference();

    public static long a(long j4) {
        Calendar d4 = d(null);
        d4.setTimeInMillis(j4);
        return b(d4).getTimeInMillis();
    }

    public static Calendar b(Calendar calendar) {
        Calendar d4 = d(calendar);
        Calendar d5 = d(null);
        d5.set(d4.get(1), d4.get(2), d4.get(5));
        return d5;
    }

    public static Calendar c() {
        G g4 = (G) f7866a.get();
        if (g4 == null) {
            g4 = G.f7863c;
        }
        TimeZone timeZone = g4.f7865b;
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l4 = g4.f7864a;
        if (l4 != null) {
            calendar.setTimeInMillis(l4.longValue());
        }
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.setTimeZone(TimeZone.getTimeZone("UTC"));
        return calendar;
    }

    public static Calendar d(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }
}
