package t3;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes.dex */
public final class f {
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f12364c = AtomicReferenceFieldUpdater.newUpdater(f.class, Object.class, "b");

    /* renamed from: a  reason: collision with root package name */
    public final h f12365a;

    /* renamed from: b  reason: collision with root package name */
    public volatile Object f12366b;

    public f(Object obj, g gVar) {
        this.f12365a = gVar;
        this.f12366b = obj;
    }

    public final boolean a(Object obj, Object obj2) {
        boolean compareAndSet = f12364c.compareAndSet(this, obj, obj2);
        if (compareAndSet) {
            g gVar = g.f12367a;
            h hVar = this.f12365a;
            if (hVar != gVar) {
                hVar.getClass();
                h.a("CAS(" + obj + ", " + obj2 + ")");
            }
        }
        return compareAndSet;
    }

    public final Object b(Object obj) {
        Object andSet = f12364c.getAndSet(this, obj);
        g gVar = g.f12367a;
        h hVar = this.f12365a;
        if (hVar != gVar) {
            hVar.getClass();
            h.a("getAndSet(" + obj + "):" + andSet);
        }
        return andSet;
    }

    public final void c(Object obj) {
        f12364c.lazySet(this, obj);
        g gVar = g.f12367a;
        h hVar = this.f12365a;
        if (hVar != gVar) {
            hVar.getClass();
            h.a("lazySet(" + obj + ")");
        }
    }

    public final void d(Object obj) {
        this.f12366b = obj;
        h hVar = this.f12365a;
        if (hVar != g.f12367a) {
            hVar.getClass();
            h.a("set(" + obj + ")");
        }
    }

    public final String toString() {
        return String.valueOf(this.f12366b);
    }
}
