package m;

import java.util.Map;
/* renamed from: m.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1295c implements Map.Entry {

    /* renamed from: d  reason: collision with root package name */
    public final Object f11569d;

    /* renamed from: e  reason: collision with root package name */
    public final Object f11570e;

    /* renamed from: f  reason: collision with root package name */
    public C1295c f11571f;

    /* renamed from: g  reason: collision with root package name */
    public C1295c f11572g;

    public C1295c(Object obj, Object obj2) {
        this.f11569d = obj;
        this.f11570e = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1295c) {
            C1295c c1295c = (C1295c) obj;
            return this.f11569d.equals(c1295c.f11569d) && this.f11570e.equals(c1295c.f11570e);
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f11569d;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f11570e;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f11570e.hashCode() ^ this.f11569d.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public final String toString() {
        return this.f11569d + "=" + this.f11570e;
    }
}
