package R2;
/* loaded from: classes.dex */
public final class e extends a {
    @Override // R2.a
    public final boolean a(com.google.common.util.concurrent.c cVar, com.google.common.util.concurrent.b bVar, com.google.common.util.concurrent.b bVar2) {
        synchronized (cVar) {
            if (cVar.f8483e == bVar) {
                cVar.f8483e = bVar2;
                return true;
            }
            return false;
        }
    }

    @Override // R2.a
    public final boolean b(com.google.common.util.concurrent.c cVar, Object obj, Object obj2) {
        synchronized (cVar) {
            if (cVar.f8482d == obj) {
                cVar.f8482d = obj2;
                return true;
            }
            return false;
        }
    }

    @Override // R2.a
    public final boolean c(com.google.common.util.concurrent.c cVar, h hVar, h hVar2) {
        synchronized (cVar) {
            if (cVar.f8484f == hVar) {
                cVar.f8484f = hVar2;
                return true;
            }
            return false;
        }
    }

    @Override // R2.a
    public final com.google.common.util.concurrent.b d(com.google.common.util.concurrent.c cVar, com.google.common.util.concurrent.b bVar) {
        com.google.common.util.concurrent.b bVar2;
        synchronized (cVar) {
            bVar2 = cVar.f8483e;
            if (bVar2 != bVar) {
                cVar.f8483e = bVar;
            }
        }
        return bVar2;
    }

    @Override // R2.a
    public final h e(com.google.common.util.concurrent.c cVar) {
        h hVar;
        h hVar2 = h.f1670c;
        synchronized (cVar) {
            hVar = cVar.f8484f;
            if (hVar != hVar2) {
                cVar.f8484f = hVar2;
            }
        }
        return hVar;
    }

    @Override // R2.a
    public final void f(h hVar, h hVar2) {
        hVar.f1672b = hVar2;
    }

    @Override // R2.a
    public final void g(h hVar, Thread thread) {
        hVar.f1671a = thread;
    }
}
