package L;
/* loaded from: classes.dex */
public final class e extends d {

    /* renamed from: c  reason: collision with root package name */
    public final Object f1020c;

    public e() {
        super(12);
        this.f1020c = new Object();
    }

    @Override // L.d
    public final Object a() {
        Object a4;
        synchronized (this.f1020c) {
            a4 = super.a();
        }
        return a4;
    }

    @Override // L.d
    public final boolean b(Object obj) {
        boolean b4;
        synchronized (this.f1020c) {
            b4 = super.b(obj);
        }
        return b4;
    }
}
