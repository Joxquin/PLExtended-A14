package v3;
/* loaded from: classes.dex */
public final class d extends g {

    /* renamed from: g  reason: collision with root package name */
    public static final d f12666g = new d();

    public d() {
        super(m.f12675c, m.f12676d, m.f12677e, m.f12673a);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.AbstractC1258x
    public final String toString() {
        return "Dispatchers.Default";
    }
}
