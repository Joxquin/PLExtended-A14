package q;
/* renamed from: q.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1351b extends AbstractC1358i {

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ int f11936g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ C1355f f11937h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1351b(C1355f c1355f, int i4) {
        super(c1355f.f11967f);
        this.f11936g = i4;
        if (i4 != 1) {
            this.f11937h = c1355f;
            return;
        }
        this.f11937h = c1355f;
        super(c1355f.f11967f);
    }

    @Override // q.AbstractC1358i
    public final Object a(int i4) {
        switch (this.f11936g) {
            case 0:
                return this.f11937h.g(i4);
            default:
                return this.f11937h.j(i4);
        }
    }

    @Override // q.AbstractC1358i
    public final void b(int i4) {
        switch (this.f11936g) {
            case 0:
                this.f11937h.h(i4);
                return;
            default:
                this.f11937h.h(i4);
                return;
        }
    }
}
