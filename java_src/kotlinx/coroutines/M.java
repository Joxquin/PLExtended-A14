package kotlinx.coroutines;
/* loaded from: classes.dex */
public final class M implements V {

    /* renamed from: d  reason: collision with root package name */
    public final boolean f11311d;

    public M(boolean z4) {
        this.f11311d = z4;
    }

    @Override // kotlinx.coroutines.V
    public final boolean a() {
        return this.f11311d;
    }

    @Override // kotlinx.coroutines.V
    public final l0 b() {
        return null;
    }

    public final String toString() {
        return E.c.a("Empty{", this.f11311d ? "Active" : "New", "}");
    }
}
