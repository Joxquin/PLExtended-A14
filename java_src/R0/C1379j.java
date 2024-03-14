package r0;

import m0.InterfaceC1303d;
import q0.C1360b;
/* renamed from: r0.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1379j implements InterfaceC1372c {

    /* renamed from: a  reason: collision with root package name */
    public final String f12114a;

    /* renamed from: b  reason: collision with root package name */
    public final q0.m f12115b;

    /* renamed from: c  reason: collision with root package name */
    public final q0.m f12116c;

    /* renamed from: d  reason: collision with root package name */
    public final C1360b f12117d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f12118e;

    public C1379j(String str, q0.m mVar, q0.f fVar, C1360b c1360b, boolean z4) {
        this.f12114a = str;
        this.f12115b = mVar;
        this.f12116c = fVar;
        this.f12117d = c1360b;
        this.f12118e = z4;
    }

    @Override // r0.InterfaceC1372c
    public final InterfaceC1303d a(com.airbnb.lottie.a aVar, s0.b bVar) {
        return new m0.p(aVar, bVar, this);
    }

    public final String toString() {
        return "RectangleShape{position=" + this.f12115b + ", size=" + this.f12116c + '}';
    }
}
