package n0;
/* loaded from: classes.dex */
public final class h extends x0.c {

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ x0.c f11755c;

    public h(x0.c cVar) {
        this.f11755c = cVar;
    }

    @Override // x0.c
    public final Object a(x0.b bVar) {
        Float f4 = (Float) this.f11755c.a(bVar);
        if (f4 == null) {
            return null;
        }
        return Float.valueOf(f4.floatValue() * 2.55f);
    }
}
