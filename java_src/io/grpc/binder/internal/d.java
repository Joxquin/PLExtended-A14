package io.grpc.binder.internal;

import X2.C0107c;
import X2.L0;
import X2.r;
import X2.r0;
import Y2.k;
import android.os.Parcel;
import io.grpc.internal.ClientStreamListener$RpcProgress;
import io.grpc.internal.I2;
/* loaded from: classes.dex */
public final class d extends e {

    /* renamed from: s  reason: collision with root package name */
    public final boolean f9770s;

    /* renamed from: t  reason: collision with root package name */
    public L0 f9771t;

    /* renamed from: u  reason: collision with root package name */
    public r0 f9772u;

    public d(c cVar, C0107c c0107c, int i4, boolean z4) {
        super(cVar, c0107c, i4);
        this.f9770s = z4;
    }

    @Override // io.grpc.binder.internal.e
    public final boolean c() {
        return this.f9770s;
    }

    @Override // io.grpc.binder.internal.e
    public final void e(L0 l02) {
        this.f9778f.d(l02, ClientStreamListener$RpcProgress.PROCESSED, new r0());
    }

    @Override // io.grpc.binder.internal.e
    public final void f() {
        I2 i22 = this.f9777e;
        r0 r0Var = this.f9772u;
        for (r rVar : i22.f9916a) {
            rVar.d(r0Var);
        }
        I2 i23 = this.f9777e;
        L0 l02 = this.f9771t;
        if (i23.f9917b.compareAndSet(false, true)) {
            for (r rVar2 : i23.f9916a) {
                rVar2.l(l02);
            }
        }
        m(Inbound$State.CLOSED);
        this.f9778f.d(this.f9771t, ClientStreamListener$RpcProgress.PROCESSED, this.f9772u);
        this.f9773a.s(this);
    }

    @Override // io.grpc.binder.internal.e
    public final void h(Parcel parcel) {
        r0 a4 = k.a(parcel, this.f9774b);
        for (r rVar : this.f9777e.f9916a) {
            rVar.a();
        }
        this.f9778f.b(a4);
    }

    @Override // io.grpc.binder.internal.e
    public final void i(Parcel parcel, int i4) {
        L0 c4 = L0.c((16711680 & i4) >> 16);
        if ((i4 & 32) != 0) {
            c4 = c4.f(parcel.readString());
        }
        this.f9771t = c4;
        this.f9772u = k.a(parcel, this.f9774b);
    }
}
