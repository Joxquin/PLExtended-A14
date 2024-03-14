package m;

import java.util.Iterator;
/* renamed from: m.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1297e extends AbstractC1298f implements Iterator {

    /* renamed from: d  reason: collision with root package name */
    public C1295c f11576d;

    /* renamed from: e  reason: collision with root package name */
    public C1295c f11577e;

    public AbstractC1297e(C1295c c1295c, C1295c c1295c2) {
        this.f11576d = c1295c2;
        this.f11577e = c1295c;
    }

    @Override // m.AbstractC1298f
    public final void a(C1295c c1295c) {
        C1295c c1295c2;
        if (this.f11576d == c1295c && c1295c == this.f11577e) {
            this.f11577e = null;
            this.f11576d = null;
        }
        C1295c c1295c3 = this.f11576d;
        if (c1295c3 == c1295c) {
            switch (((C1294b) this).f11568f) {
                case 0:
                    c1295c2 = c1295c3.f11572g;
                    break;
                default:
                    c1295c2 = c1295c3.f11571f;
                    break;
            }
            this.f11576d = c1295c2;
        }
        if (this.f11577e == c1295c) {
            this.f11577e = b();
        }
    }

    public final C1295c b() {
        C1295c c1295c = this.f11577e;
        C1295c c1295c2 = this.f11576d;
        if (c1295c == c1295c2 || c1295c2 == null) {
            return null;
        }
        switch (((C1294b) this).f11568f) {
            case 0:
                return c1295c.f11571f;
            default:
                return c1295c.f11572g;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f11577e != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        C1295c c1295c = this.f11577e;
        this.f11577e = b();
        return c1295c;
    }
}
