package io.grpc.internal;

import X2.AbstractC0121j;
/* loaded from: classes.dex */
public final class D implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9848d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ X2.r0 f9849e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f9850f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Object f9851g;

    public /* synthetic */ D(Object obj, Object obj2, X2.r0 r0Var, int i4) {
        this.f9848d = i4;
        this.f9851g = obj;
        this.f9850f = obj2;
        this.f9849e = r0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9848d) {
            case 0:
                ((L) this.f9851g).f9935f.e((AbstractC0121j) this.f9850f, this.f9849e);
                return;
            default:
                ((K) this.f9851g).f9924a.a((X2.L0) this.f9850f, this.f9849e);
                return;
        }
    }
}
