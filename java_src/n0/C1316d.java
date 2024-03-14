package n0;

import java.util.List;
import x0.C1456a;
/* renamed from: n0.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1316d implements InterfaceC1315c {

    /* renamed from: a  reason: collision with root package name */
    public final List f11741a;

    /* renamed from: c  reason: collision with root package name */
    public C1456a f11743c = null;

    /* renamed from: d  reason: collision with root package name */
    public float f11744d = -1.0f;

    /* renamed from: b  reason: collision with root package name */
    public C1456a f11742b = f(0.0f);

    public C1316d(List list) {
        this.f11741a = list;
    }

    @Override // n0.InterfaceC1315c
    public final float a() {
        List list = this.f11741a;
        return ((C1456a) list.get(list.size() - 1)).a();
    }

    @Override // n0.InterfaceC1315c
    public final boolean b(float f4) {
        C1456a c1456a = this.f11743c;
        C1456a c1456a2 = this.f11742b;
        if (c1456a == c1456a2 && this.f11744d == f4) {
            return true;
        }
        this.f11743c = c1456a2;
        this.f11744d = f4;
        return false;
    }

    @Override // n0.InterfaceC1315c
    public final float c() {
        return ((C1456a) this.f11741a.get(0)).b();
    }

    @Override // n0.InterfaceC1315c
    public final C1456a d() {
        return this.f11742b;
    }

    @Override // n0.InterfaceC1315c
    public final boolean e(float f4) {
        C1456a c1456a = this.f11742b;
        if (f4 >= c1456a.b() && f4 < c1456a.a()) {
            return !this.f11742b.c();
        }
        this.f11742b = f(f4);
        return true;
    }

    public final C1456a f(float f4) {
        List list = this.f11741a;
        C1456a c1456a = (C1456a) list.get(list.size() - 1);
        if (f4 >= c1456a.b()) {
            return c1456a;
        }
        int size = list.size() - 2;
        while (true) {
            boolean z4 = false;
            if (size < 1) {
                return (C1456a) list.get(0);
            }
            C1456a c1456a2 = (C1456a) list.get(size);
            if (this.f11742b != c1456a2) {
                if (f4 >= c1456a2.b() && f4 < c1456a2.a()) {
                    z4 = true;
                }
                if (z4) {
                    return c1456a2;
                }
            }
            size--;
        }
    }

    @Override // n0.InterfaceC1315c
    public final boolean isEmpty() {
        return false;
    }
}
