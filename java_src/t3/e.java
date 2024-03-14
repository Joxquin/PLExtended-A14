package t3;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
/* loaded from: classes.dex */
public final class e {
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicLongFieldUpdater f12361c = AtomicLongFieldUpdater.newUpdater(e.class, "b");

    /* renamed from: a  reason: collision with root package name */
    public final h f12362a;

    /* renamed from: b  reason: collision with root package name */
    public volatile long f12363b;

    public e(long j4, g gVar) {
        this.f12362a = gVar;
        this.f12363b = j4;
    }

    public final long a(long j4) {
        long addAndGet = f12361c.addAndGet(this, j4);
        g gVar = g.f12367a;
        h hVar = this.f12362a;
        if (hVar != gVar) {
            hVar.getClass();
            h.a("addAndGet(" + j4 + "):" + addAndGet);
        }
        return addAndGet;
    }

    public final boolean b(long j4, long j5) {
        boolean compareAndSet = f12361c.compareAndSet(this, j4, j5);
        if (compareAndSet) {
            g gVar = g.f12367a;
            h hVar = this.f12362a;
            if (hVar != gVar) {
                hVar.getClass();
                h.a("CAS(" + j4 + ", " + j5 + ")");
            }
        }
        return compareAndSet;
    }

    public final long c() {
        long andIncrement = f12361c.getAndIncrement(this);
        g gVar = g.f12367a;
        h hVar = this.f12362a;
        if (hVar != gVar) {
            hVar.getClass();
            h.a("getAndInc():" + andIncrement);
        }
        return andIncrement;
    }

    public final void d(long j4) {
        this.f12363b = j4;
        h hVar = this.f12362a;
        if (hVar != g.f12367a) {
            hVar.getClass();
            h.a("set(" + j4 + ")");
        }
    }

    public final String toString() {
        return String.valueOf(this.f12363b);
    }
}
