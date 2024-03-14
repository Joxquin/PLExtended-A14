package X2;

import io.grpc.MethodDescriptor$MethodType;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes.dex */
public final class u0 {

    /* renamed from: a  reason: collision with root package name */
    public final MethodDescriptor$MethodType f2230a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2231b;

    /* renamed from: c  reason: collision with root package name */
    public final String f2232c;

    /* renamed from: d  reason: collision with root package name */
    public final t0 f2233d;

    /* renamed from: e  reason: collision with root package name */
    public final t0 f2234e;

    /* renamed from: f  reason: collision with root package name */
    public final Object f2235f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f2236g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f2237h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f2238i;

    public u0(MethodDescriptor$MethodType methodDescriptor$MethodType, String str, t0 t0Var, t0 t0Var2, boolean z4) {
        new AtomicReferenceArray(2);
        O2.m.h(methodDescriptor$MethodType, "type");
        this.f2230a = methodDescriptor$MethodType;
        O2.m.h(str, "fullMethodName");
        this.f2231b = str;
        int lastIndexOf = str.lastIndexOf(47);
        this.f2232c = lastIndexOf == -1 ? null : str.substring(0, lastIndexOf);
        O2.m.h(t0Var, "requestMarshaller");
        this.f2233d = t0Var;
        O2.m.h(t0Var2, "responseMarshaller");
        this.f2234e = t0Var2;
        this.f2235f = null;
        this.f2236g = false;
        this.f2237h = false;
        this.f2238i = z4;
    }

    public static String a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        O2.m.h(str, "fullServiceName");
        sb.append(str);
        sb.append("/");
        O2.m.h(str2, "methodName");
        sb.append(str2);
        return sb.toString();
    }

    public static s0 b() {
        s0 s0Var = new s0();
        s0Var.f2224a = null;
        s0Var.f2225b = null;
        return s0Var;
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f2231b, "fullMethodName");
        b4.a(this.f2230a, "type");
        b4.c("idempotent", this.f2236g);
        b4.c("safe", this.f2237h);
        b4.c("sampledToLocalTracing", this.f2238i);
        b4.a(this.f2233d, "requestMarshaller");
        b4.a(this.f2234e, "responseMarshaller");
        b4.a(this.f2235f, "schemaDescriptor");
        b4.f1519d = true;
        return b4.toString();
    }
}
