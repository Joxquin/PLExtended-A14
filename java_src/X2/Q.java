package X2;

import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public final class Q {

    /* renamed from: d  reason: collision with root package name */
    public static final AtomicLong f2159d = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    public final String f2160a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2161b;

    /* renamed from: c  reason: collision with root package name */
    public final long f2162c;

    public Q(String str, String str2, long j4) {
        O2.m.h(str, "typeName");
        O2.m.b("empty type", !str.isEmpty());
        this.f2160a = str;
        this.f2161b = str2;
        this.f2162c = j4;
    }

    public static Q a(Class cls, String str) {
        String simpleName = cls.getSimpleName();
        if (simpleName.isEmpty()) {
            simpleName = cls.getName().substring(cls.getPackage().getName().length() + 1);
        }
        return new Q(simpleName, str, f2159d.incrementAndGet());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2160a + "<" + this.f2162c + ">");
        String str = this.f2161b;
        if (str != null) {
            sb.append(": (");
            sb.append(str);
            sb.append(')');
        }
        return sb.toString();
    }
}
