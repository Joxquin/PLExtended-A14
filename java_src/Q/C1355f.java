package q;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: q.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1355f extends m implements Map {

    /* renamed from: g  reason: collision with root package name */
    public C1350a f11944g;

    /* renamed from: h  reason: collision with root package name */
    public C1352c f11945h;

    /* renamed from: i  reason: collision with root package name */
    public C1354e f11946i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1355f(C1355f c1355f) {
        super(0);
        if (c1355f != null) {
            int i4 = c1355f.f11967f;
            c(this.f11967f + i4);
            if (this.f11967f != 0) {
                for (int i5 = 0; i5 < i4; i5++) {
                    put(c1355f.g(i5), c1355f.j(i5));
                }
            } else if (i4 > 0) {
                kotlin.collections.m.d(0, 0, c1355f.f11965d, this.f11965d, i4);
                kotlin.collections.m.c(0, 0, i4 << 1, c1355f.f11966e, this.f11966e);
                this.f11967f = i4;
            }
        }
    }

    @Override // q.m, java.util.Map
    public final boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    @Override // q.m, java.util.Map
    public final boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        C1350a c1350a = this.f11944g;
        if (c1350a == null) {
            C1350a c1350a2 = new C1350a(this);
            this.f11944g = c1350a2;
            return c1350a2;
        }
        return c1350a;
    }

    @Override // q.m, java.util.Map
    public final Object get(Object obj) {
        return super.get(obj);
    }

    public final boolean k(Collection collection) {
        for (Object obj : collection) {
            if (!super.containsKey(obj)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Map
    public final Set keySet() {
        C1352c c1352c = this.f11945h;
        if (c1352c == null) {
            C1352c c1352c2 = new C1352c(this);
            this.f11945h = c1352c2;
            return c1352c2;
        }
        return c1352c;
    }

    public final boolean l(Collection collection) {
        int i4 = this.f11967f;
        for (Object obj : collection) {
            super.remove(obj);
        }
        return i4 != this.f11967f;
    }

    public final boolean m(Collection collection) {
        int i4 = this.f11967f;
        for (int i5 = i4 - 1; i5 >= 0; i5--) {
            if (!collection.contains(g(i5))) {
                h(i5);
            }
        }
        return i4 != this.f11967f;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        c(map.size() + this.f11967f);
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // q.m, java.util.Map
    public final Object remove(Object obj) {
        return super.remove(obj);
    }

    @Override // java.util.Map
    public final Collection values() {
        C1354e c1354e = this.f11946i;
        if (c1354e == null) {
            C1354e c1354e2 = new C1354e(this);
            this.f11946i = c1354e2;
            return c1354e2;
        }
        return c1354e;
    }

    public C1355f() {
    }
}
