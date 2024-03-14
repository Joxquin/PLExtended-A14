package kotlinx.coroutines.internal;
/* renamed from: kotlinx.coroutines.internal.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1236c {

    /* renamed from: d  reason: collision with root package name */
    public final t3.f f11461d = t3.c.d(null);

    /* renamed from: e  reason: collision with root package name */
    public final t3.f f11462e;

    public AbstractC1236c(AbstractC1236c abstractC1236c) {
        this.f11462e = t3.c.d(abstractC1236c);
    }

    public final void a() {
        this.f11462e.c(null);
    }

    public final AbstractC1236c b() {
        Object obj = this.f11461d.f12366b;
        if (obj == C1235b.f11460a) {
            return null;
        }
        return (AbstractC1236c) obj;
    }

    public abstract boolean c();

    public final void d() {
        Object obj;
        AbstractC1236c b4;
        if (b() == null) {
            return;
        }
        while (true) {
            AbstractC1236c abstractC1236c = (AbstractC1236c) this.f11462e.f12366b;
            while (abstractC1236c != null && abstractC1236c.c()) {
                abstractC1236c = (AbstractC1236c) abstractC1236c.f11462e.f12366b;
            }
            AbstractC1236c b5 = b();
            kotlin.jvm.internal.h.b(b5);
            while (b5.c() && (b4 = b5.b()) != null) {
                b5 = b4;
            }
            t3.f fVar = b5.f11462e;
            do {
                obj = fVar.f12366b;
            } while (!fVar.a(obj, ((AbstractC1236c) obj) == null ? null : abstractC1236c));
            if (abstractC1236c != null) {
                abstractC1236c.f11461d.d(b5);
            }
            if (b5.c()) {
                if (!(b5.b() == null)) {
                    continue;
                }
            }
            if (abstractC1236c == null || !abstractC1236c.c()) {
                return;
            }
        }
    }
}
