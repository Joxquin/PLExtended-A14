package r0;

import com.airbnb.lottie.model.content.ShapeTrimPath$Type;
import m0.InterfaceC1303d;
import m0.v;
import q0.C1360b;
/* loaded from: classes.dex */
public final class r implements InterfaceC1372c {

    /* renamed from: a  reason: collision with root package name */
    public final ShapeTrimPath$Type f12151a;

    /* renamed from: b  reason: collision with root package name */
    public final C1360b f12152b;

    /* renamed from: c  reason: collision with root package name */
    public final C1360b f12153c;

    /* renamed from: d  reason: collision with root package name */
    public final C1360b f12154d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f12155e;

    public r(String str, ShapeTrimPath$Type shapeTrimPath$Type, C1360b c1360b, C1360b c1360b2, C1360b c1360b3, boolean z4) {
        this.f12151a = shapeTrimPath$Type;
        this.f12152b = c1360b;
        this.f12153c = c1360b2;
        this.f12154d = c1360b3;
        this.f12155e = z4;
    }

    @Override // r0.InterfaceC1372c
    public final InterfaceC1303d a(com.airbnb.lottie.a aVar, s0.b bVar) {
        return new v(bVar, this);
    }

    public final String toString() {
        return "Trim Path: {start: " + this.f12152b + ", end: " + this.f12153c + ", offset: " + this.f12154d + "}";
    }
}
