package t3;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes.dex */
public final class b {
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f12355c = AtomicIntegerFieldUpdater.newUpdater(b.class, "b");

    /* renamed from: a  reason: collision with root package name */
    public final h f12356a;

    /* renamed from: b  reason: collision with root package name */
    public volatile int f12357b;

    public b(boolean z4, g gVar) {
        this.f12356a = gVar;
        this.f12357b = z4 ? 1 : 0;
    }

    public final boolean a() {
        boolean compareAndSet = f12355c.compareAndSet(this, 0, 1);
        if (compareAndSet) {
            g gVar = g.f12367a;
            h hVar = this.f12356a;
            if (hVar != gVar) {
                hVar.getClass();
                h.a("CAS(false, true)");
            }
        }
        return compareAndSet;
    }

    public final void b() {
        this.f12357b = 1;
        h hVar = this.f12356a;
        if (hVar != g.f12367a) {
            hVar.getClass();
            h.a("set(true)");
        }
    }

    public final String toString() {
        return String.valueOf(this.f12357b != 0);
    }
}
