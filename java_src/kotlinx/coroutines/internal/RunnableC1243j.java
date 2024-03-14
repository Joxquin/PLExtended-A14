package kotlinx.coroutines.internal;

import kotlin.coroutines.EmptyCoroutineContext;
/* renamed from: kotlinx.coroutines.internal.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1243j implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public Runnable f11471d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C1244k f11472e;

    public RunnableC1243j(C1244k c1244k, Runnable runnable) {
        this.f11472e = c1244k;
        this.f11471d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i4 = 0;
        while (true) {
            try {
                this.f11471d.run();
            } catch (Throwable th) {
                kotlinx.coroutines.A.a(EmptyCoroutineContext.f11247d, th);
            }
            Runnable D3 = this.f11472e.D();
            if (D3 == null) {
                return;
            }
            this.f11471d = D3;
            i4++;
            if (i4 >= 16) {
                C1244k c1244k = this.f11472e;
                if (c1244k.f11473f.C(c1244k)) {
                    C1244k c1244k2 = this.f11472e;
                    c1244k2.f11473f.B(c1244k2, this);
                    return;
                }
            }
        }
    }
}
