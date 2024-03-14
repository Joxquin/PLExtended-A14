package kotlinx.coroutines.internal;

import kotlinx.coroutines.AbstractC1258x;
/* renamed from: kotlinx.coroutines.internal.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1244k extends AbstractC1258x implements kotlinx.coroutines.G {

    /* renamed from: f  reason: collision with root package name */
    public final AbstractC1258x f11473f;

    /* renamed from: g  reason: collision with root package name */
    public final int f11474g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.G f11475h;

    /* renamed from: i  reason: collision with root package name */
    public final t3.d f11476i;

    /* renamed from: j  reason: collision with root package name */
    public final q f11477j;

    /* renamed from: k  reason: collision with root package name */
    public final Object f11478k;

    public C1244k(v3.n nVar, int i4) {
        this.f11473f = nVar;
        this.f11474g = i4;
        kotlinx.coroutines.G g4 = nVar instanceof kotlinx.coroutines.G ? (kotlinx.coroutines.G) nVar : null;
        this.f11475h = g4 == null ? kotlinx.coroutines.F.f11305a : g4;
        this.f11476i = t3.c.b(0);
        this.f11477j = new q();
        this.f11478k = new Object();
    }

    @Override // kotlinx.coroutines.AbstractC1258x
    public final void B(kotlin.coroutines.i context, Runnable block) {
        boolean z4;
        Runnable D3;
        kotlin.jvm.internal.h.e(context, "context");
        kotlin.jvm.internal.h.e(block, "block");
        this.f11477j.a(block);
        if (this.f11476i.f12360b < this.f11474g) {
            synchronized (this.f11478k) {
                if (this.f11476i.f12360b >= this.f11474g) {
                    z4 = false;
                } else {
                    this.f11476i.c();
                    z4 = true;
                }
            }
            if (!z4 || (D3 = D()) == null) {
                return;
            }
            this.f11473f.B(this, new RunnableC1243j(this, D3));
        }
    }

    public final Runnable D() {
        while (true) {
            Runnable runnable = (Runnable) this.f11477j.c();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.f11478k) {
                this.f11476i.b();
                if (this.f11477j.b() == 0) {
                    return null;
                }
                this.f11476i.c();
            }
        }
    }
}
