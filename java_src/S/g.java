package s;
/* loaded from: classes.dex */
public final class g extends b {
    @Override // s.b
    public final boolean a(i iVar, d dVar, d dVar2) {
        synchronized (iVar) {
            if (iVar.f12184e == dVar) {
                iVar.f12184e = dVar2;
                return true;
            }
            return false;
        }
    }

    @Override // s.b
    public final boolean b(i iVar, Object obj, Object obj2) {
        synchronized (iVar) {
            if (iVar.f12183d == obj) {
                iVar.f12183d = obj2;
                return true;
            }
            return false;
        }
    }

    @Override // s.b
    public final boolean c(i iVar, h hVar, h hVar2) {
        synchronized (iVar) {
            if (iVar.f12185f == hVar) {
                iVar.f12185f = hVar2;
                return true;
            }
            return false;
        }
    }

    @Override // s.b
    public final void d(h hVar, h hVar2) {
        hVar.f12178b = hVar2;
    }

    @Override // s.b
    public final void e(h hVar, Thread thread) {
        hVar.f12177a = thread;
    }
}
