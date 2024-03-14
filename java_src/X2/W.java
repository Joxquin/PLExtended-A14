package X2;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class W {

    /* renamed from: e  reason: collision with root package name */
    public static final W f2169e = new W(null, L0.f2126e, false);

    /* renamed from: a  reason: collision with root package name */
    public final Y f2170a;

    /* renamed from: b  reason: collision with root package name */
    public final AbstractC0133p f2171b = null;

    /* renamed from: c  reason: collision with root package name */
    public final L0 f2172c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f2173d;

    public W(Y y4, L0 l02, boolean z4) {
        this.f2170a = y4;
        O2.m.h(l02, "status");
        this.f2172c = l02;
        this.f2173d = z4;
    }

    public static W a(L0 l02) {
        O2.m.b("error status shouldn't be OK", !l02.d());
        return new W(null, l02, false);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof W) {
            W w4 = (W) obj;
            return O2.k.a(this.f2170a, w4.f2170a) && O2.k.a(this.f2172c, w4.f2172c) && O2.k.a(this.f2171b, w4.f2171b) && this.f2173d == w4.f2173d;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2170a, this.f2172c, this.f2171b, Boolean.valueOf(this.f2173d)});
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f2170a, "subchannel");
        b4.a(this.f2171b, "streamTracerFactory");
        b4.a(this.f2172c, "status");
        b4.c("drop", this.f2173d);
        return b4.toString();
    }
}
