package io.grpc.internal;

import X2.AbstractC0104a0;
import X2.C0107c;
import io.grpc.ConnectivityState;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class N1 extends AbstractC0104a0 {

    /* renamed from: b  reason: collision with root package name */
    public final X2.V f9957b;

    /* renamed from: c  reason: collision with root package name */
    public X2.Y f9958c;

    public N1(X2.V v4) {
        O2.m.h(v4, "helper");
        this.f9957b = v4;
    }

    @Override // X2.AbstractC0104a0
    public final void a(X2.L0 l02) {
        X2.Y y4 = this.f9958c;
        if (y4 != null) {
            y4.e();
            this.f9958c = null;
        }
        this.f9957b.g(ConnectivityState.TRANSIENT_FAILURE, new K1(X2.W.a(l02)));
    }

    @Override // X2.AbstractC0104a0
    public final void b(X2.X x4) {
        X2.Y y4 = this.f9958c;
        List list = x4.f2174a;
        if (y4 != null) {
            y4.g(list);
            return;
        }
        O2.m.b("addrs is empty", !list.isEmpty());
        X2.U u4 = new X2.U(Collections.unmodifiableList(new ArrayList(list)), C0107c.f2181b, (Object[][]) Array.newInstance(Object.class, 0, 2));
        X2.V v4 = this.f9957b;
        X2.Y a4 = v4.a(u4);
        a4.f(new J1(this, a4));
        this.f9958c = a4;
        v4.g(ConnectivityState.CONNECTING, new K1(new X2.W(a4, X2.L0.f2126e, false)));
        a4.d();
    }

    @Override // X2.AbstractC0104a0
    public final void c() {
        X2.Y y4 = this.f9958c;
        if (y4 != null) {
            y4.e();
        }
    }
}
