package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
/* renamed from: kotlinx.coroutines.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1249n extends b0 implements InterfaceC1248m {

    /* renamed from: h  reason: collision with root package name */
    public final InterfaceC1250o f11501h;

    public C1249n(AbstractC1225a abstractC1225a) {
        this.f11501h = abstractC1225a;
    }

    @Override // kotlinx.coroutines.InterfaceC1248m
    public final boolean d(Throwable cause) {
        kotlin.jvm.internal.h.e(cause, "cause");
        h0 l4 = l();
        if (cause instanceof CancellationException) {
            return true;
        }
        return l4.E(cause);
    }

    @Override // m3.l
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        k((Throwable) obj);
        return e3.f.f9037a;
    }

    @Override // kotlinx.coroutines.AbstractC1253s
    public final void k(Throwable th) {
        this.f11501h.t(l());
    }
}
