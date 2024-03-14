package X2;

import io.grpc.Status$Code;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;
/* loaded from: classes.dex */
public final class L0 {

    /* renamed from: d  reason: collision with root package name */
    public static final List f2125d;

    /* renamed from: e  reason: collision with root package name */
    public static final L0 f2126e;

    /* renamed from: f  reason: collision with root package name */
    public static final L0 f2127f;

    /* renamed from: g  reason: collision with root package name */
    public static final L0 f2128g;

    /* renamed from: h  reason: collision with root package name */
    public static final L0 f2129h;

    /* renamed from: i  reason: collision with root package name */
    public static final L0 f2130i;

    /* renamed from: j  reason: collision with root package name */
    public static final L0 f2131j;

    /* renamed from: k  reason: collision with root package name */
    public static final L0 f2132k;

    /* renamed from: l  reason: collision with root package name */
    public static final L0 f2133l;

    /* renamed from: m  reason: collision with root package name */
    public static final L0 f2134m;

    /* renamed from: n  reason: collision with root package name */
    public static final L0 f2135n;

    /* renamed from: o  reason: collision with root package name */
    public static final K0 f2136o;

    /* renamed from: a  reason: collision with root package name */
    public final Status$Code f2137a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2138b;

    /* renamed from: c  reason: collision with root package name */
    public final Throwable f2139c;

    static {
        Status$Code[] values;
        L0 l02;
        Boolean.parseBoolean(System.getProperty("io.grpc.Status.failOnEqualsForTest", "false"));
        TreeMap treeMap = new TreeMap();
        for (Status$Code status$Code : Status$Code.values()) {
            if (((L0) treeMap.put(Integer.valueOf(status$Code.d()), new L0(status$Code, null, null))) != null) {
                throw new IllegalStateException("Code value duplication between " + l02.f2137a.name() + " & " + status$Code.name());
            }
        }
        f2125d = Collections.unmodifiableList(new ArrayList(treeMap.values()));
        f2126e = Status$Code.OK.c();
        f2127f = Status$Code.CANCELLED.c();
        f2128g = Status$Code.UNKNOWN.c();
        Status$Code.INVALID_ARGUMENT.c();
        f2129h = Status$Code.DEADLINE_EXCEEDED.c();
        Status$Code.NOT_FOUND.c();
        Status$Code.ALREADY_EXISTS.c();
        f2130i = Status$Code.PERMISSION_DENIED.c();
        f2131j = Status$Code.UNAUTHENTICATED.c();
        f2132k = Status$Code.RESOURCE_EXHAUSTED.c();
        Status$Code.FAILED_PRECONDITION.c();
        Status$Code.ABORTED.c();
        Status$Code.OUT_OF_RANGE.c();
        f2133l = Status$Code.UNIMPLEMENTED.c();
        f2134m = Status$Code.INTERNAL.c();
        f2135n = Status$Code.UNAVAILABLE.c();
        Status$Code.DATA_LOSS.c();
        new C0134p0("grpc-status", false, new J0());
        K0 k02 = new K0();
        f2136o = k02;
        new C0134p0("grpc-message", false, k02);
    }

    public L0(Status$Code status$Code, String str, Throwable th) {
        O2.m.h(status$Code, "code");
        this.f2137a = status$Code;
        this.f2138b = str;
        this.f2139c = th;
    }

    public static String b(L0 l02) {
        String str = l02.f2138b;
        Status$Code status$Code = l02.f2137a;
        if (str == null) {
            return status$Code.toString();
        }
        return status$Code + ": " + l02.f2138b;
    }

    public static L0 c(int i4) {
        if (i4 >= 0) {
            List list = f2125d;
            if (i4 <= list.size()) {
                return (L0) list.get(i4);
            }
        }
        return f2128g.f("Unknown code " + i4);
    }

    public final L0 a(String str) {
        if (str == null) {
            return this;
        }
        Throwable th = this.f2139c;
        Status$Code status$Code = this.f2137a;
        String str2 = this.f2138b;
        if (str2 == null) {
            return new L0(status$Code, str, th);
        }
        return new L0(status$Code, str2 + "\n" + str, th);
    }

    public final boolean d() {
        return Status$Code.OK == this.f2137a;
    }

    public final L0 e(Throwable th) {
        return O2.k.a(this.f2139c, th) ? this : new L0(this.f2137a, this.f2138b, th);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final L0 f(String str) {
        return O2.k.a(this.f2138b, str) ? this : new L0(this.f2137a, str, this.f2139c);
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f2137a.name(), "code");
        b4.a(this.f2138b, "description");
        Throwable th = this.f2139c;
        String str = th;
        if (th != null) {
            Object obj = O2.r.f1525a;
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            str = stringWriter.toString();
        }
        b4.a(str, "cause");
        return b4.toString();
    }
}
