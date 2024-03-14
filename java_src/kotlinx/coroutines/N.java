package kotlinx.coroutines;
/* loaded from: classes.dex */
public abstract class N extends AbstractC1258x {

    /* renamed from: f  reason: collision with root package name */
    public long f11312f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f11313g;

    /* renamed from: h  reason: collision with root package name */
    public kotlin.collections.j f11314h;

    public final void D() {
        long j4 = this.f11312f - 4294967296L;
        this.f11312f = j4;
        if (j4 <= 0 && this.f11313g) {
            shutdown();
        }
    }

    public final void E(H task) {
        kotlin.jvm.internal.h.e(task, "task");
        kotlin.collections.j jVar = this.f11314h;
        if (jVar == null) {
            jVar = new kotlin.collections.j();
            this.f11314h = jVar;
        }
        jVar.addLast(task);
    }

    public final void F(boolean z4) {
        this.f11312f = (z4 ? 4294967296L : 1L) + this.f11312f;
        if (z4) {
            return;
        }
        this.f11313g = true;
    }

    public final boolean G() {
        kotlin.collections.j jVar = this.f11314h;
        if (jVar == null) {
            return false;
        }
        H h4 = (H) (jVar.isEmpty() ? null : jVar.removeFirst());
        if (h4 == null) {
            return false;
        }
        h4.run();
        return true;
    }

    public void shutdown() {
    }
}
