package u0;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader$Token;
/* loaded from: classes.dex */
public final class z implements L {

    /* renamed from: a  reason: collision with root package name */
    public static final z f12432a = new z();

    @Override // u0.L
    public final Object a(com.airbnb.lottie.parser.moshi.a aVar, float f4) {
        JsonReader$Token n4 = aVar.n();
        if (n4 != JsonReader$Token.BEGIN_ARRAY && n4 != JsonReader$Token.BEGIN_OBJECT) {
            if (n4 != JsonReader$Token.NUMBER) {
                throw new IllegalArgumentException("Cannot convert json to point. Next token is " + n4);
            }
            PointF pointF = new PointF(((float) aVar.j()) * f4, ((float) aVar.j()) * f4);
            while (aVar.h()) {
                aVar.u();
            }
            return pointF;
        }
        return s.b(aVar, f4);
    }
}
