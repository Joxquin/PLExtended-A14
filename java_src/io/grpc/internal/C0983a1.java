package io.grpc.internal;

import X2.C0115g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
/* renamed from: io.grpc.internal.a1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0983a1 extends r2 {

    /* renamed from: B  reason: collision with root package name */
    public final /* synthetic */ X2.u0 f10051B;

    /* renamed from: C  reason: collision with root package name */
    public final /* synthetic */ C0115g f10052C;

    /* renamed from: D  reason: collision with root package name */
    public final /* synthetic */ X2.C f10053D;

    /* renamed from: E  reason: collision with root package name */
    public final /* synthetic */ C0987b1 f10054E;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0983a1(io.grpc.internal.C0987b1 r14, X2.u0 r15, X2.r0 r16, X2.C0115g r17, io.grpc.internal.s2 r18, io.grpc.internal.C1047s0 r19, io.grpc.internal.q2 r20, X2.C r21) {
        /*
            r13 = this;
            r0 = r13
            r1 = r14
            r2 = r17
            r0.f10054E = r1
            r3 = r15
            r0.f10051B = r3
            r0.f10052C = r2
            r4 = r21
            r0.f10053D = r4
            io.grpc.internal.s1 r1 = r1.f10060a
            io.grpc.internal.h2 r4 = r1.f10316Z
            long r5 = r1.f10317a0
            long r7 = r1.f10318b0
            java.util.concurrent.Executor r2 = r2.f2192b
            if (r2 != 0) goto L1d
            java.util.concurrent.Executor r2 = r1.f10334l
        L1d:
            r9 = r2
            io.grpc.internal.j r1 = r1.f10332j
            java.util.concurrent.ScheduledExecutorService r10 = r1.s()
            r0 = r13
            r1 = r15
            r2 = r16
            r3 = r4
            r4 = r5
            r6 = r7
            r8 = r9
            r9 = r10
            r10 = r18
            r11 = r19
            r12 = r20
            r0.<init>(r1, r2, r3, r4, r6, r8, r9, r10, r11, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.C0983a1.<init>(io.grpc.internal.b1, X2.u0, X2.r0, X2.g, io.grpc.internal.s2, io.grpc.internal.s0, io.grpc.internal.q2, X2.C):void");
    }

    @Override // io.grpc.internal.r2
    public final InterfaceC1052u x(X2.r0 r0Var, C0992c2 c0992c2, int i4, boolean z4) {
        InterfaceC1058w interfaceC1058w;
        C0115g c0115g = this.f10052C;
        c0115g.getClass();
        C0115g c0115g2 = new C0115g(c0115g);
        ArrayList arrayList = new ArrayList(c0115g.f2197g.size() + 1);
        arrayList.addAll(c0115g.f2197g);
        arrayList.add(c0992c2);
        c0115g2.f2197g = Collections.unmodifiableList(arrayList);
        X2.r[] a4 = C1044r0.a(c0115g2, r0Var, i4, z4);
        X2.u0 u0Var = this.f10051B;
        O2.m.h(u0Var, "method");
        C0987b1 c0987b1 = this.f10054E;
        X2.V v4 = c0987b1.f10060a.f10293C;
        if (c0987b1.f10060a.f10301K.get()) {
            interfaceC1058w = c0987b1.f10060a.f10299I;
        } else if (v4 == null) {
            c0987b1.f10060a.f10340r.execute(new Z0(0, c0987b1));
            interfaceC1058w = c0987b1.f10060a.f10299I;
        } else {
            InterfaceC1058w c4 = C1044r0.c(v4.e(), Boolean.TRUE.equals(c0115g2.f2198h));
            interfaceC1058w = c4 != null ? c4 : c0987b1.f10060a.f10299I;
        }
        X2.C c5 = this.f10053D;
        X2.C a5 = c5.a();
        try {
            return interfaceC1058w.c(u0Var, r0Var, c0115g2, a4);
        } finally {
            c5.c(a5);
        }
    }

    @Override // io.grpc.internal.r2
    public final void y() {
        X2.L0 l02;
        C1045r1 c1045r1 = this.f10054E.f10060a.f10300J;
        synchronized (c1045r1.f10247a) {
            ((HashSet) c1045r1.f10248b).remove(this);
            if (((HashSet) c1045r1.f10248b).isEmpty()) {
                l02 = c1045r1.f10249c;
                c1045r1.f10248b = new HashSet();
            } else {
                l02 = null;
            }
        }
        if (l02 != null) {
            c1045r1.f10250d.f10299I.f(l02);
        }
    }

    @Override // io.grpc.internal.r2
    public final X2.L0 z() {
        C1045r1 c1045r1 = this.f10054E.f10060a.f10300J;
        synchronized (c1045r1.f10247a) {
            X2.L0 l02 = c1045r1.f10249c;
            if (l02 != null) {
                return l02;
            }
            ((HashSet) c1045r1.f10248b).add(this);
            return null;
        }
    }
}
