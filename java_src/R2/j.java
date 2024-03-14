package R2;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes.dex */
public final class j implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final Future f1673d;

    /* renamed from: e  reason: collision with root package name */
    public final i f1674e;

    public j(a3.c cVar, i iVar) {
        this.f1673d = cVar;
        this.f1674e = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Future future = this.f1673d;
        if (future instanceof S2.a) {
            ((S2.a) future).a();
        }
        try {
            this.f1674e.b(com.google.common.util.concurrent.d.b(this.f1673d));
        } catch (Error | RuntimeException e4) {
            this.f1674e.a(e4);
        } catch (ExecutionException e5) {
            this.f1674e.a(e5.getCause());
        }
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        i iVar = this.f1674e;
        O2.h hVar = new O2.h();
        b4.f1518c.f1515c = hVar;
        b4.f1518c = hVar;
        hVar.f1514b = iVar;
        return b4.toString();
    }
}
