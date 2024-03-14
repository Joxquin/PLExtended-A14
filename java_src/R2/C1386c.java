package r2;

import android.animation.TypeEvaluator;
/* renamed from: r2.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1386c implements TypeEvaluator {

    /* renamed from: b  reason: collision with root package name */
    public static final C1386c f12157b = new C1386c();

    /* renamed from: a  reason: collision with root package name */
    public final C1389f f12158a = new C1389f();

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f4, Object obj, Object obj2) {
        C1389f c1389f = (C1389f) obj;
        C1389f c1389f2 = (C1389f) obj2;
        C1389f c1389f3 = this.f12158a;
        float f5 = c1389f.f12161a;
        float f6 = 1.0f - f4;
        float f7 = (c1389f2.f12161a * f4) + (f5 * f6);
        float f8 = c1389f.f12162b;
        float f9 = c1389f2.f12162b * f4;
        float f10 = c1389f.f12163c;
        float f11 = f4 * c1389f2.f12163c;
        c1389f3.f12161a = f7;
        c1389f3.f12162b = f9 + (f8 * f6);
        c1389f3.f12163c = f11 + (f6 * f10);
        return c1389f3;
    }
}
