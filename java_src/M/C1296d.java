package m;

import java.util.Iterator;
/* renamed from: m.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1296d extends AbstractC1298f implements Iterator {

    /* renamed from: d  reason: collision with root package name */
    public C1295c f11573d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f11574e = true;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C1299g f11575f;

    public C1296d(C1299g c1299g) {
        this.f11575f = c1299g;
    }

    @Override // m.AbstractC1298f
    public final void a(C1295c c1295c) {
        C1295c c1295c2 = this.f11573d;
        if (c1295c == c1295c2) {
            C1295c c1295c3 = c1295c2.f11572g;
            this.f11573d = c1295c3;
            this.f11574e = c1295c3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f11574e) {
            return this.f11575f.f11578d != null;
        }
        C1295c c1295c = this.f11573d;
        return (c1295c == null || c1295c.f11571f == null) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f11574e) {
            this.f11574e = false;
            this.f11573d = this.f11575f.f11578d;
        } else {
            C1295c c1295c = this.f11573d;
            this.f11573d = c1295c != null ? c1295c.f11571f : null;
        }
        return this.f11573d;
    }
}
