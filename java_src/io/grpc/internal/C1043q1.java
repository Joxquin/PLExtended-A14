package io.grpc.internal;

import X2.C0107c;
import io.grpc.InternalChannelz$ChannelTrace$Event$Severity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.q1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1043q1 extends X2.Y {

    /* renamed from: a  reason: collision with root package name */
    public final X2.U f10218a;

    /* renamed from: b  reason: collision with root package name */
    public final C1007g1 f10219b;

    /* renamed from: c  reason: collision with root package name */
    public final X2.Q f10220c;

    /* renamed from: d  reason: collision with root package name */
    public final C1025l f10221d;

    /* renamed from: e  reason: collision with root package name */
    public final C1029m f10222e;

    /* renamed from: f  reason: collision with root package name */
    public List f10223f;

    /* renamed from: g  reason: collision with root package name */
    public H0 f10224g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f10225h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f10226i;

    /* renamed from: j  reason: collision with root package name */
    public X2.O0 f10227j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ C1048s1 f10228k;

    public C1043q1(C1048s1 c1048s1, X2.U u4, C1007g1 c1007g1) {
        this.f10228k = c1048s1;
        List list = u4.f2166a;
        this.f10223f = list;
        Logger logger = C1048s1.f10283j0;
        c1048s1.getClass();
        this.f10218a = u4;
        O2.m.h(c1007g1, "helper");
        this.f10219b = c1007g1;
        X2.Q q4 = new X2.Q("Subchannel", c1048s1.a(), X2.Q.f2159d.incrementAndGet());
        this.f10220c = q4;
        K2 k22 = c1048s1.f10339q;
        long a4 = k22.a();
        C1029m c1029m = new C1029m(q4, a4, "Subchannel for " + list);
        this.f10222e = c1029m;
        this.f10221d = new C1025l(c1029m, k22);
    }

    @Override // X2.Y
    public final List a() {
        this.f10228k.f10340r.d();
        O2.m.k("not started", this.f10225h);
        return this.f10223f;
    }

    @Override // X2.Y
    public final C0107c b() {
        return this.f10218a.f2167b;
    }

    @Override // X2.Y
    public final Object c() {
        O2.m.k("Subchannel is not started", this.f10225h);
        return this.f10224g;
    }

    @Override // X2.Y
    public final void d() {
        this.f10228k.f10340r.d();
        O2.m.k("not started", this.f10225h);
        this.f10224g.a();
    }

    @Override // X2.Y
    public final void e() {
        X2.O0 o02;
        C1048s1 c1048s1 = this.f10228k;
        c1048s1.f10340r.d();
        if (this.f10224g == null) {
            this.f10226i = true;
            return;
        }
        if (!this.f10226i) {
            this.f10226i = true;
        } else if (!c1048s1.f10303M || (o02 = this.f10227j) == null) {
            return;
        } else {
            o02.a();
            this.f10227j = null;
        }
        if (!c1048s1.f10303M) {
            this.f10227j = c1048s1.f10340r.c(new P0(new Z0(2, this)), 5L, TimeUnit.SECONDS, c1048s1.f10332j.s());
            return;
        }
        H0 h02 = this.f10224g;
        X2.L0 l02 = C1048s1.f10286m0;
        h02.getClass();
        h02.f9901n.execute(new RunnableC1065y0(h02, l02, 0));
    }

    @Override // X2.Y
    public final void f(X2.Z z4) {
        C1048s1 c1048s1 = this.f10228k;
        c1048s1.f10340r.d();
        O2.m.k("already started", !this.f10225h);
        O2.m.k("already shutdown", !this.f10226i);
        O2.m.k("Channel is being terminated", !c1048s1.f10303M);
        this.f10225h = true;
        List list = this.f10218a.f2166a;
        String a4 = c1048s1.a();
        C1002f0 c1002f0 = c1048s1.f10346x;
        C1017j c1017j = c1048s1.f10332j;
        H0 h02 = new H0(list, a4, c1002f0, c1017j, c1017j.s(), c1048s1.f10343u, c1048s1.f10340r, new U0(this, z4), c1048s1.f10310T, new C1021k((K2) c1048s1.f10306P.f10006a), this.f10222e, this.f10220c, this.f10221d);
        InternalChannelz$ChannelTrace$Event$Severity internalChannelz$ChannelTrace$Event$Severity = InternalChannelz$ChannelTrace$Event$Severity.CT_INFO;
        Long valueOf = Long.valueOf(c1048s1.f10339q.a());
        O2.m.h(valueOf, "timestampNanos");
        c1048s1.f10308R.b(new X2.L("Child Subchannel started", internalChannelz$ChannelTrace$Event$Severity, valueOf.longValue(), h02));
        this.f10224g = h02;
        X2.M.a(c1048s1.f10310T.f2142b, h02);
        ((HashSet) c1048s1.f10295E).add(h02);
    }

    @Override // X2.Y
    public final void g(List list) {
        this.f10228k.f10340r.d();
        this.f10223f = list;
        H0 h02 = this.f10224g;
        h02.getClass();
        O2.m.h(list, "newAddressGroups");
        for (Object obj : list) {
            O2.m.h(obj, "newAddressGroups contains null entry");
        }
        O2.m.b("newAddressGroups is empty", !list.isEmpty());
        h02.f9901n.execute(new RunnableC1062x0(0, h02, Collections.unmodifiableList(new ArrayList(list))));
    }

    public final String toString() {
        return this.f10220c.toString();
    }
}
