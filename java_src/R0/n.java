package r0;

import android.graphics.Path;
import m0.InterfaceC1303d;
import q0.C1359a;
/* loaded from: classes.dex */
public final class n implements InterfaceC1372c {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f12128a;

    /* renamed from: b  reason: collision with root package name */
    public final Path.FillType f12129b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12130c;

    /* renamed from: d  reason: collision with root package name */
    public final C1359a f12131d;

    /* renamed from: e  reason: collision with root package name */
    public final q0.d f12132e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f12133f;

    public n(String str, boolean z4, Path.FillType fillType, C1359a c1359a, q0.d dVar, boolean z5) {
        this.f12130c = str;
        this.f12128a = z4;
        this.f12129b = fillType;
        this.f12131d = c1359a;
        this.f12132e = dVar;
        this.f12133f = z5;
    }

    @Override // r0.InterfaceC1372c
    public final InterfaceC1303d a(com.airbnb.lottie.a aVar, s0.b bVar) {
        return new m0.h(aVar, bVar, this);
    }

    public final String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f12128a + '}';
    }
}
