package r0;

import m0.InterfaceC1303d;
import q0.C1360b;
/* loaded from: classes.dex */
public final class k implements InterfaceC1372c {

    /* renamed from: a  reason: collision with root package name */
    public final String f12119a;

    /* renamed from: b  reason: collision with root package name */
    public final C1360b f12120b;

    /* renamed from: c  reason: collision with root package name */
    public final C1360b f12121c;

    /* renamed from: d  reason: collision with root package name */
    public final q0.l f12122d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f12123e;

    public k(String str, C1360b c1360b, C1360b c1360b2, q0.l lVar, boolean z4) {
        this.f12119a = str;
        this.f12120b = c1360b;
        this.f12121c = c1360b2;
        this.f12122d = lVar;
        this.f12123e = z4;
    }

    @Override // r0.InterfaceC1372c
    public final InterfaceC1303d a(com.airbnb.lottie.a aVar, s0.b bVar) {
        return new m0.q(aVar, bVar, this);
    }
}
