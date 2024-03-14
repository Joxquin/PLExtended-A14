package n0;

import java.util.List;
import x0.C1456a;
/* loaded from: classes.dex */
public final class e implements InterfaceC1315c {

    /* renamed from: a  reason: collision with root package name */
    public final C1456a f11745a;

    /* renamed from: b  reason: collision with root package name */
    public float f11746b = -1.0f;

    public e(List list) {
        this.f11745a = (C1456a) list.get(0);
    }

    @Override // n0.InterfaceC1315c
    public final float a() {
        return this.f11745a.a();
    }

    @Override // n0.InterfaceC1315c
    public final boolean b(float f4) {
        if (this.f11746b == f4) {
            return true;
        }
        this.f11746b = f4;
        return false;
    }

    @Override // n0.InterfaceC1315c
    public final float c() {
        return this.f11745a.b();
    }

    @Override // n0.InterfaceC1315c
    public final C1456a d() {
        return this.f11745a;
    }

    @Override // n0.InterfaceC1315c
    public final boolean e(float f4) {
        return !this.f11745a.c();
    }

    @Override // n0.InterfaceC1315c
    public final boolean isEmpty() {
        return false;
    }
}
