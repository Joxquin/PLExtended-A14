package r0;

import java.util.Arrays;
import java.util.List;
import m0.InterfaceC1303d;
/* loaded from: classes.dex */
public final class o implements InterfaceC1372c {

    /* renamed from: a  reason: collision with root package name */
    public final String f12134a;

    /* renamed from: b  reason: collision with root package name */
    public final List f12135b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f12136c;

    public o(String str, List list, boolean z4) {
        this.f12134a = str;
        this.f12135b = list;
        this.f12136c = z4;
    }

    @Override // r0.InterfaceC1372c
    public final InterfaceC1303d a(com.airbnb.lottie.a aVar, s0.b bVar) {
        return new m0.e(aVar, bVar, this);
    }

    public final String toString() {
        return "ShapeGroup{name='" + this.f12134a + "' Shapes: " + Arrays.toString(this.f12135b.toArray()) + '}';
    }
}
