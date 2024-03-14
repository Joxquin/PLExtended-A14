package io.grpc.internal;

import X2.InterfaceC0142x;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class S implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9983d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f9984e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f9985f;

    public /* synthetic */ S(int i4, Object obj, Object obj2) {
        this.f9983d = i4;
        this.f9984e = obj;
        this.f9985f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9983d) {
            case 0:
                ((W) this.f9984e).f10023c.o((InterfaceC0142x) this.f9985f);
                return;
            case 1:
                ((W) this.f9984e).f10023c.f((X2.H) this.f9985f);
                return;
            case 2:
                ((W) this.f9984e).f10023c.d((X2.E) this.f9985f);
                return;
            case 3:
                ((W) this.f9984e).f10023c.j((String) this.f9985f);
                return;
            case 4:
                ((W) this.f9984e).f10023c.i((InputStream) this.f9985f);
                return;
            case 5:
                ((W) this.f9984e).f10023c.g((X2.L0) this.f9985f);
                return;
            case 6:
                ((V) this.f9984e).f10010a.c((io.grpc.binder.internal.e) this.f9985f);
                return;
            default:
                ((V) this.f9984e).f10010a.b((X2.r0) this.f9985f);
                return;
        }
    }
}
