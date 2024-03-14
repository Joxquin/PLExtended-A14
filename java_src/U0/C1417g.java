package u0;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader$Token;
/* renamed from: u0.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1417g implements L {

    /* renamed from: a  reason: collision with root package name */
    public static final C1417g f12390a = new C1417g();

    @Override // u0.L
    public final Object a(com.airbnb.lottie.parser.moshi.a aVar, float f4) {
        boolean z4 = aVar.n() == JsonReader$Token.BEGIN_ARRAY;
        if (z4) {
            aVar.a();
        }
        double j4 = aVar.j();
        double j5 = aVar.j();
        double j6 = aVar.j();
        double j7 = aVar.n() == JsonReader$Token.NUMBER ? aVar.j() : 1.0d;
        if (z4) {
            aVar.c();
        }
        if (j4 <= 1.0d && j5 <= 1.0d && j6 <= 1.0d) {
            j4 *= 255.0d;
            j5 *= 255.0d;
            j6 *= 255.0d;
            if (j7 <= 1.0d) {
                j7 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) j7, (int) j4, (int) j5, (int) j6));
    }
}
