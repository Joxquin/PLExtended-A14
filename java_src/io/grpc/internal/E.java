package io.grpc.internal;

import X2.AbstractC0123k;
/* loaded from: classes.dex */
public final class E implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9861d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f9862e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f9863f;

    public /* synthetic */ E(int i4, Object obj, Object obj2) {
        this.f9861d = i4;
        this.f9862e = obj;
        this.f9863f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9861d) {
            case 0:
                ((L) this.f9862e).g(X2.L0.f2129h.f(((StringBuilder) this.f9863f).toString()), true);
                return;
            case 1:
                AbstractC0123k abstractC0123k = ((L) this.f9862e).f9935f;
                X2.L0 l02 = (X2.L0) this.f9863f;
                abstractC0123k.a(l02.f2138b, l02.f2139c);
                return;
            case 2:
                ((L) this.f9862e).f9935f.d(this.f9863f);
                return;
            case 3:
                ((K) this.f9862e).f9924a.b((X2.r0) this.f9863f);
                return;
            default:
                ((K) this.f9862e).f9924a.c(this.f9863f);
                return;
        }
    }
}
