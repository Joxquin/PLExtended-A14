package u0;

import com.airbnb.lottie.parser.moshi.JsonReader$Token;
/* loaded from: classes.dex */
public final class E implements L {

    /* renamed from: a  reason: collision with root package name */
    public static final E f12373a = new E();

    @Override // u0.L
    public final Object a(com.airbnb.lottie.parser.moshi.a aVar, float f4) {
        boolean z4 = aVar.n() == JsonReader$Token.BEGIN_ARRAY;
        if (z4) {
            aVar.a();
        }
        float j4 = (float) aVar.j();
        float j5 = (float) aVar.j();
        while (aVar.h()) {
            aVar.u();
        }
        if (z4) {
            aVar.c();
        }
        return new x0.d((j4 / 100.0f) * f4, (j5 / 100.0f) * f4);
    }
}
