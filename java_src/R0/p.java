package r0;

import m0.InterfaceC1303d;
import m0.s;
/* loaded from: classes.dex */
public final class p implements InterfaceC1372c {

    /* renamed from: a  reason: collision with root package name */
    public final String f12137a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12138b;

    /* renamed from: c  reason: collision with root package name */
    public final q0.h f12139c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f12140d;

    public p(String str, int i4, q0.h hVar, boolean z4) {
        this.f12137a = str;
        this.f12138b = i4;
        this.f12139c = hVar;
        this.f12140d = z4;
    }

    @Override // r0.InterfaceC1372c
    public final InterfaceC1303d a(com.airbnb.lottie.a aVar, s0.b bVar) {
        return new s(aVar, bVar, this);
    }

    public final String toString() {
        return "ShapePath{name=" + this.f12137a + ", index=" + this.f12138b + '}';
    }
}
