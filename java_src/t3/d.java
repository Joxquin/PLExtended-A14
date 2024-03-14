package t3;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes.dex */
public final class d {
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f12358c = AtomicIntegerFieldUpdater.newUpdater(d.class, "b");

    /* renamed from: a  reason: collision with root package name */
    public final h f12359a;

    /* renamed from: b  reason: collision with root package name */
    public volatile int f12360b;

    public d(int i4, g gVar) {
        this.f12359a = gVar;
        this.f12360b = i4;
    }

    public final boolean a(int i4, int i5) {
        boolean compareAndSet = f12358c.compareAndSet(this, i4, i5);
        if (compareAndSet) {
            g gVar = g.f12367a;
            h hVar = this.f12359a;
            if (hVar != gVar) {
                hVar.getClass();
                h.a("CAS(" + i4 + ", " + i5 + ")");
            }
        }
        return compareAndSet;
    }

    public final void b() {
        int decrementAndGet = f12358c.decrementAndGet(this);
        g gVar = g.f12367a;
        h hVar = this.f12359a;
        if (hVar != gVar) {
            hVar.getClass();
            h.a("decAndGet():" + decrementAndGet);
        }
    }

    public final int c() {
        int incrementAndGet = f12358c.incrementAndGet(this);
        g gVar = g.f12367a;
        h hVar = this.f12359a;
        if (hVar != gVar) {
            hVar.getClass();
            h.a("incAndGet():" + incrementAndGet);
        }
        return incrementAndGet;
    }

    public final void d(int i4) {
        this.f12360b = i4;
        h hVar = this.f12359a;
        if (hVar != g.f12367a) {
            hVar.getClass();
            h.a("set(" + i4 + ")");
        }
    }

    public final String toString() {
        return String.valueOf(this.f12360b);
    }
}
