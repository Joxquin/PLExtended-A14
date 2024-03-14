package X2;

import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class E implements Comparable {

    /* renamed from: g  reason: collision with root package name */
    public static final D f2093g = new D();

    /* renamed from: h  reason: collision with root package name */
    public static final long f2094h;

    /* renamed from: i  reason: collision with root package name */
    public static final long f2095i;

    /* renamed from: j  reason: collision with root package name */
    public static final long f2096j;

    /* renamed from: d  reason: collision with root package name */
    public final D f2097d;

    /* renamed from: e  reason: collision with root package name */
    public final long f2098e;

    /* renamed from: f  reason: collision with root package name */
    public volatile boolean f2099f;

    static {
        long nanos = TimeUnit.DAYS.toNanos(36500L);
        f2094h = nanos;
        f2095i = -nanos;
        f2096j = TimeUnit.SECONDS.toNanos(1L);
    }

    public E(long j4) {
        D d4 = f2093g;
        long nanoTime = System.nanoTime();
        this.f2097d = d4;
        long min = Math.min(f2094h, Math.max(f2095i, j4));
        this.f2098e = nanoTime + min;
        this.f2099f = min <= 0;
    }

    public final boolean a() {
        if (!this.f2099f) {
            long j4 = this.f2098e;
            this.f2097d.getClass();
            if (j4 - System.nanoTime() > 0) {
                return false;
            }
            this.f2099f = true;
        }
        return true;
    }

    public final long c(TimeUnit timeUnit) {
        this.f2097d.getClass();
        long nanoTime = System.nanoTime();
        if (!this.f2099f && this.f2098e - nanoTime <= 0) {
            this.f2099f = true;
        }
        return timeUnit.convert(this.f2098e - nanoTime, TimeUnit.NANOSECONDS);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        E e4 = (E) obj;
        if (this.f2097d == e4.f2097d) {
            int i4 = ((this.f2098e - e4.f2098e) > 0L ? 1 : ((this.f2098e - e4.f2098e) == 0L ? 0 : -1));
            if (i4 < 0) {
                return -1;
            }
            return i4 > 0 ? 1 : 0;
        }
        throw new AssertionError("Tickers (" + this.f2097d + " and " + e4.f2097d + ") don't match. Custom Ticker should only be used in tests!");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof E) {
            E e4 = (E) obj;
            D d4 = this.f2097d;
            if (d4 != null ? d4 == e4.f2097d : e4.f2097d == null) {
                return this.f2098e == e4.f2098e;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.asList(this.f2097d, Long.valueOf(this.f2098e)).hashCode();
    }

    public final String toString() {
        long c4 = c(TimeUnit.NANOSECONDS);
        long abs = Math.abs(c4);
        long j4 = f2096j;
        long j5 = abs / j4;
        long abs2 = Math.abs(c4) % j4;
        StringBuilder sb = new StringBuilder();
        if (c4 < 0) {
            sb.append('-');
        }
        sb.append(j5);
        if (abs2 > 0) {
            sb.append(String.format(Locale.US, ".%09d", Long.valueOf(abs2)));
        }
        sb.append("s from now");
        if (this.f2097d != f2093g) {
            sb.append(" (ticker=" + this.f2097d + ")");
        }
        return sb.toString();
    }
}
