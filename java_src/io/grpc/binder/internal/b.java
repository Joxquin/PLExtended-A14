package io.grpc.binder.internal;

import X2.C0103a;
import X2.C0107c;
import X2.C0115g;
import X2.L0;
import X2.r;
import X2.r0;
import X2.u0;
import Y2.m;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteException;
import io.grpc.MethodDescriptor$MethodType;
import io.grpc.SecurityLevel;
import io.grpc.internal.C1010h0;
import io.grpc.internal.C1026l0;
import io.grpc.internal.C1044r0;
import io.grpc.internal.ClientStreamListener$RpcProgress;
import io.grpc.internal.D1;
import io.grpc.internal.H1;
import io.grpc.internal.I2;
import io.grpc.internal.InterfaceC1052u;
import io.grpc.internal.InterfaceC1067z;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class b extends c implements InterfaceC1067z, Y2.a {

    /* renamed from: A  reason: collision with root package name */
    public static final /* synthetic */ int f9746A = 0;

    /* renamed from: s  reason: collision with root package name */
    public final H1 f9747s;

    /* renamed from: t  reason: collision with root package name */
    public final Executor f9748t;

    /* renamed from: u  reason: collision with root package name */
    public final io.grpc.binder.h f9749u;

    /* renamed from: v  reason: collision with root package name */
    public final h f9750v;

    /* renamed from: w  reason: collision with root package name */
    public final AtomicInteger f9751w;

    /* renamed from: x  reason: collision with root package name */
    public final m f9752x;

    /* renamed from: y  reason: collision with root package name */
    public D1 f9753y;

    /* renamed from: z  reason: collision with root package name */
    public int f9754z;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b(android.content.Context r7, io.grpc.binder.AndroidComponentAddress r8, io.grpc.binder.a r9, java.util.concurrent.Executor r10, io.grpc.internal.H1 r11, io.grpc.internal.H1 r12, io.grpc.binder.h r13, io.grpc.binder.e r14, X2.C0107c r15) {
        /*
            r6 = this;
            X2.a r0 = new X2.a
            X2.c r1 = X2.C0107c.f2181b
            r0.<init>(r1)
            X2.b r1 = io.grpc.internal.C1026l0.f10161a
            io.grpc.SecurityLevel r2 = io.grpc.SecurityLevel.NONE
            r0.c(r1, r2)
            X2.b r1 = io.grpc.internal.C1026l0.f10162b
            r0.c(r1, r15)
            X2.b r15 = X2.K.f2118b
            int r1 = io.grpc.binder.AndroidComponentAddress.f9694d
            java.lang.Class r1 = r7.getClass()
            android.content.ComponentName r2 = new android.content.ComponentName
            r2.<init>(r7, r1)
            io.grpc.binder.AndroidComponentAddress r1 = new io.grpc.binder.AndroidComponentAddress
            android.content.Intent r3 = new android.content.Intent
            java.lang.String r4 = "grpc.io.action.BIND"
            r3.<init>(r4)
            android.content.Intent r2 = r3.setComponent(r2)
            r1.<init>(r2)
            r0.c(r15, r1)
            X2.b r15 = X2.K.f2117a
            r0.c(r15, r8)
            X2.b r15 = io.grpc.binder.internal.c.f9757r
            r0.c(r15, r14)
            X2.c r14 = r0.a()
            java.lang.Class<io.grpc.binder.internal.b> r15 = io.grpc.binder.internal.b.class
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Class r1 = r7.getClass()
            java.lang.String r1 = r1.getSimpleName()
            r0.append(r1)
            java.lang.String r1 = "->"
            r0.append(r1)
            android.content.ComponentName r1 = r8.b()
            java.lang.String r1 = r1.toShortString()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            X2.Q r15 = X2.Q.a(r15, r0)
            r6.<init>(r11, r14, r15)
            r11 = 1001(0x3e9, float:1.403E-42)
            r6.f9754z = r11
            r6.f9747s = r12
            r6.f9749u = r13
            java.lang.Object r11 = r12.a()
            java.util.concurrent.Executor r11 = (java.util.concurrent.Executor) r11
            r6.f9748t = r11
            java.util.concurrent.atomic.AtomicInteger r11 = new java.util.concurrent.atomic.AtomicInteger
            r11.<init>()
            r6.f9751w = r11
            Y2.m r11 = new Y2.m
            r11.<init>()
            r6.f9752x = r11
            io.grpc.binder.internal.h r11 = new io.grpc.binder.internal.h
            android.content.Intent r3 = r8.a()
            int r4 = r9.f9696a
            r0 = r11
            r1 = r10
            r2 = r7
            r5 = r6
            r0.<init>(r1, r2, r3, r4, r5)
            r6.f9750v = r11
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.binder.internal.b.<init>(android.content.Context, io.grpc.binder.AndroidComponentAddress, io.grpc.binder.a, java.util.concurrent.Executor, io.grpc.internal.H1, io.grpc.internal.H1, io.grpc.binder.h, io.grpc.binder.e, X2.c):void");
    }

    @Override // io.grpc.internal.E1
    public final synchronized Runnable b(D1 d12) {
        this.f9753y = d12;
        return new Y2.c(this, 1);
    }

    @Override // io.grpc.internal.InterfaceC1058w
    public final synchronized InterfaceC1052u c(u0 u0Var, r0 r0Var, C0115g c0115g, r[] rVarArr) {
        int i4 = 0;
        if (k()) {
            L0 l02 = this.f9765k;
            C0107c c0107c = this.f9763i;
            I2 i22 = new I2(rVarArr);
            for (r rVar : rVarArr) {
                rVar.m(c0107c, r0Var);
            }
            r[] rVarArr2 = i22.f9916a;
            int length = rVarArr2.length;
            while (i4 < length) {
                rVarArr2[i4].g();
                i4++;
            }
            return new C1010h0(l02, ClientStreamListener$RpcProgress.PROCESSED, rVarArr);
        }
        int i5 = this.f9754z;
        int i6 = i5 + 1;
        this.f9754z = i6;
        if (i6 == 16777215) {
            this.f9754z = 1001;
        }
        C0107c c0107c2 = this.f9763i;
        I2 i23 = new I2(rVarArr);
        for (r rVar2 : rVarArr) {
            rVar2.m(c0107c2, r0Var);
        }
        C0107c c0107c3 = this.f9763i;
        boolean z4 = !Boolean.TRUE.equals(c0115g.a(C1044r0.f10242i));
        d dVar = new d(this, c0107c3, i5, z4);
        if (this.f9762h.putIfAbsent(Integer.valueOf(i5), dVar) == null) {
            if (z4 && this.f9751w.getAndIncrement() == 0) {
                this.f9753y.c(true);
            }
            g gVar = new g(this, i5, u0Var, r0Var, i23);
            MethodDescriptor$MethodType methodDescriptor$MethodType = u0Var.f2230a;
            methodDescriptor$MethodType.getClass();
            if (((methodDescriptor$MethodType == MethodDescriptor$MethodType.UNARY || methodDescriptor$MethodType == MethodDescriptor$MethodType.SERVER_STREAMING) ? 1 : 1) != 0) {
                return new i(dVar, gVar);
            }
            return new f(dVar, gVar);
        }
        L0 f4 = L0.f2134m.f("Clashing call IDs");
        q(f4, true);
        C0107c c0107c4 = this.f9763i;
        I2 i24 = new I2(rVarArr);
        for (r rVar3 : rVarArr) {
            rVar3.m(c0107c4, r0Var);
        }
        r[] rVarArr3 = i24.f9916a;
        int length2 = rVarArr3.length;
        while (i4 < length2) {
            rVarArr3[i4].g();
            i4++;
        }
        return new C1010h0(f4, ClientStreamListener$RpcProgress.PROCESSED, rVarArr);
    }

    @Override // io.grpc.internal.E1
    public final synchronized void d(L0 l02) {
        O2.m.h(l02, "reason");
        q(l02, true);
    }

    @Override // io.grpc.internal.E1
    public final synchronized void f(L0 l02) {
        O2.m.h(l02, "reason");
        q(l02, false);
    }

    @Override // io.grpc.binder.internal.c
    public final void g(Parcel parcel) {
        m mVar = this.f9752x;
        parcel.readInt();
        synchronized (mVar) {
        }
    }

    @Override // io.grpc.binder.internal.c
    public final void h(Parcel parcel) {
        C0107c c0107c = this.f9763i;
        int callingUid = Binder.getCallingUid();
        c0107c.getClass();
        C0103a c0103a = new C0103a(c0107c);
        c0103a.c(c.f9756q, Integer.valueOf(callingUid));
        c0103a.c(C1026l0.f10161a, callingUid == Process.myUid() ? SecurityLevel.PRIVACY_AND_INTEGRITY : SecurityLevel.INTEGRITY);
        this.f9763i = c0103a.a();
        if (j(BinderTransport$TransportState.SETUP)) {
            int readInt = parcel.readInt();
            final IBinder readStrongBinder = parcel.readStrongBinder();
            if (readInt != 1) {
                q(L0.f2135n.f("Wire format version mismatch"), true);
            } else if (readStrongBinder == null) {
                q(L0.f2135n.f("Malformed SETUP_TRANSPORT data"), true);
            } else {
                this.f9748t.execute(new Runnable() { // from class: io.grpc.binder.internal.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        Integer num;
                        b bVar = b.this;
                        IBinder iBinder = readStrongBinder;
                        synchronized (bVar) {
                            num = (Integer) bVar.f9763i.a(c.f9756q);
                        }
                        L0 f4 = num == null ? L0.f2131j.f("No remote UID available") : bVar.f9749u.a(num.intValue());
                        synchronized (bVar) {
                            if (bVar.j(BinderTransport$TransportState.SETUP)) {
                                if (f4.d()) {
                                    bVar.f9766l = iBinder;
                                    boolean z4 = false;
                                    try {
                                        iBinder.linkToDeath(bVar, 0);
                                        z4 = true;
                                    } catch (RemoteException unused) {
                                    }
                                    if (!z4) {
                                        bVar.q(L0.f2135n.f("Failed to observe outgoing binder"), true);
                                    } else if (!bVar.k()) {
                                        bVar.p(BinderTransport$TransportState.READY);
                                        bVar.f9753y.d();
                                    }
                                } else {
                                    bVar.q(f4, true);
                                }
                            }
                        }
                    }
                });
            }
        }
    }

    @Override // io.grpc.binder.internal.c
    public final void l(L0 l02) {
        this.f9753y.b(l02);
    }

    @Override // io.grpc.binder.internal.c
    public final void m() {
        if (this.f9751w.getAndSet(0) > 0) {
            this.f9753y.c(false);
        }
        h hVar = this.f9750v;
        hVar.getClass();
        hVar.d(L0.f2127f);
        this.f9753y.a();
    }

    @Override // io.grpc.binder.internal.c
    public final void n() {
        super.n();
        this.f9747s.b(this.f9748t);
    }

    @Override // io.grpc.binder.internal.c
    public final void s(e eVar) {
        if (eVar.c() && this.f9751w.decrementAndGet() == 0) {
            this.f9753y.c(false);
        }
        super.s(eVar);
    }
}
