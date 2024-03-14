package O2;

import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final s f1522a = s.f1526a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1523b;

    /* renamed from: c  reason: collision with root package name */
    public long f1524c;

    public final void a() {
        m.k("This stopwatch is already running.", !this.f1523b);
        this.f1523b = true;
        this.f1522a.getClass();
        int i4 = l.f1520a;
        this.f1524c = System.nanoTime();
    }

    public final String toString() {
        long j4;
        String str;
        if (this.f1523b) {
            this.f1522a.getClass();
            int i4 = l.f1520a;
            j4 = (System.nanoTime() - this.f1524c) + 0;
        } else {
            j4 = 0;
        }
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (timeUnit.convert(j4, timeUnit2) <= 0) {
            timeUnit = TimeUnit.HOURS;
            if (timeUnit.convert(j4, timeUnit2) <= 0) {
                timeUnit = TimeUnit.MINUTES;
                if (timeUnit.convert(j4, timeUnit2) <= 0) {
                    timeUnit = TimeUnit.SECONDS;
                    if (timeUnit.convert(j4, timeUnit2) <= 0) {
                        timeUnit = TimeUnit.MILLISECONDS;
                        if (timeUnit.convert(j4, timeUnit2) <= 0) {
                            timeUnit = TimeUnit.MICROSECONDS;
                            if (timeUnit.convert(j4, timeUnit2) <= 0) {
                                timeUnit = timeUnit2;
                            }
                        }
                    }
                }
            }
        }
        double convert = j4 / timeUnit2.convert(1L, timeUnit);
        StringBuilder sb = new StringBuilder();
        int i5 = l.f1520a;
        sb.append(String.format(Locale.ROOT, "%.4g", Double.valueOf(convert)));
        sb.append(" ");
        switch (n.f1521a[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = "h";
                break;
            case 7:
                str = "d";
                break;
            default:
                throw new AssertionError();
        }
        sb.append(str);
        return sb.toString();
    }
}
