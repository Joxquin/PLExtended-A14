package m;

import java.util.HashMap;
/* renamed from: m.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1293a extends C1299g {

    /* renamed from: h  reason: collision with root package name */
    public final HashMap f11567h = new HashMap();

    @Override // m.C1299g
    public final C1295c h(Object obj) {
        return (C1295c) this.f11567h.get(obj);
    }

    @Override // m.C1299g
    public final Object i(Object obj) {
        Object i4 = super.i(obj);
        this.f11567h.remove(obj);
        return i4;
    }

    public final Object j(Object obj, Object obj2) {
        C1295c h4 = h(obj);
        if (h4 != null) {
            return h4.f11570e;
        }
        HashMap hashMap = this.f11567h;
        C1295c c1295c = new C1295c(obj, obj2);
        this.f11581g++;
        C1295c c1295c2 = this.f11579e;
        if (c1295c2 == null) {
            this.f11578d = c1295c;
            this.f11579e = c1295c;
        } else {
            c1295c2.f11571f = c1295c;
            c1295c.f11572g = c1295c2;
            this.f11579e = c1295c;
        }
        hashMap.put(obj, c1295c);
        return null;
    }
}
