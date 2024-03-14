package u0;

import android.graphics.Color;
import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader$Token;
import java.util.ArrayList;
import java.util.List;
import v0.C1430a;
/* loaded from: classes.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public static final C1430a f12417a = C1430a.a("x", "y");

    public static int a(com.airbnb.lottie.parser.moshi.a aVar) {
        aVar.a();
        int j4 = (int) (aVar.j() * 255.0d);
        int j5 = (int) (aVar.j() * 255.0d);
        int j6 = (int) (aVar.j() * 255.0d);
        while (aVar.h()) {
            aVar.u();
        }
        aVar.c();
        return Color.argb(255, j4, j5, j6);
    }

    public static PointF b(com.airbnb.lottie.parser.moshi.a aVar, float f4) {
        int ordinal = aVar.n().ordinal();
        if (ordinal == 0) {
            aVar.a();
            float j4 = (float) aVar.j();
            float j5 = (float) aVar.j();
            while (aVar.n() != JsonReader$Token.END_ARRAY) {
                aVar.u();
            }
            aVar.c();
            return new PointF(j4 * f4, j5 * f4);
        } else if (ordinal != 2) {
            if (ordinal != 6) {
                throw new IllegalArgumentException("Unknown point starts with " + aVar.n());
            }
            float j6 = (float) aVar.j();
            float j7 = (float) aVar.j();
            while (aVar.h()) {
                aVar.u();
            }
            return new PointF(j6 * f4, j7 * f4);
        } else {
            aVar.b();
            float f5 = 0.0f;
            float f6 = 0.0f;
            while (aVar.h()) {
                int r4 = aVar.r(f12417a);
                if (r4 == 0) {
                    f5 = d(aVar);
                } else if (r4 != 1) {
                    aVar.t();
                    aVar.u();
                } else {
                    f6 = d(aVar);
                }
            }
            aVar.d();
            return new PointF(f5 * f4, f6 * f4);
        }
    }

    public static List c(com.airbnb.lottie.parser.moshi.a aVar, float f4) {
        ArrayList arrayList = new ArrayList();
        aVar.a();
        while (aVar.n() == JsonReader$Token.BEGIN_ARRAY) {
            aVar.a();
            arrayList.add(b(aVar, f4));
            aVar.c();
        }
        aVar.c();
        return arrayList;
    }

    public static float d(com.airbnb.lottie.parser.moshi.a aVar) {
        JsonReader$Token n4 = aVar.n();
        int ordinal = n4.ordinal();
        if (ordinal != 0) {
            if (ordinal == 6) {
                return (float) aVar.j();
            }
            throw new IllegalArgumentException("Unknown value for token of type " + n4);
        }
        aVar.a();
        float j4 = (float) aVar.j();
        while (aVar.h()) {
            aVar.u();
        }
        aVar.c();
        return j4;
    }
}
