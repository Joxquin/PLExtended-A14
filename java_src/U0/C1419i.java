package u0;

import com.airbnb.lottie.model.DocumentData$Justification;
import p0.C1340b;
import v0.C1430a;
/* renamed from: u0.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1419i implements L {

    /* renamed from: a  reason: collision with root package name */
    public static final C1419i f12392a = new C1419i();

    /* renamed from: b  reason: collision with root package name */
    public static final C1430a f12393b = C1430a.a("t", "f", "s", "j", "tr", "lh", "ls", "fc", "sc", "sw", "of");

    @Override // u0.L
    public final Object a(com.airbnb.lottie.parser.moshi.a aVar, float f4) {
        DocumentData$Justification documentData$Justification = DocumentData$Justification.CENTER;
        aVar.b();
        DocumentData$Justification documentData$Justification2 = documentData$Justification;
        String str = null;
        String str2 = null;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        float f8 = 0.0f;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        boolean z4 = true;
        while (aVar.h()) {
            switch (aVar.r(f12393b)) {
                case 0:
                    str = aVar.l();
                    break;
                case 1:
                    str2 = aVar.l();
                    break;
                case 2:
                    f5 = (float) aVar.j();
                    break;
                case 3:
                    int k4 = aVar.k();
                    if (k4 <= 2 && k4 >= 0) {
                        documentData$Justification2 = DocumentData$Justification.values()[k4];
                        break;
                    } else {
                        documentData$Justification2 = documentData$Justification;
                        break;
                    }
                case 4:
                    i4 = aVar.k();
                    break;
                case 5:
                    f6 = (float) aVar.j();
                    break;
                case 6:
                    f7 = (float) aVar.j();
                    break;
                case 7:
                    i5 = s.a(aVar);
                    break;
                case 8:
                    i6 = s.a(aVar);
                    break;
                case 9:
                    f8 = (float) aVar.j();
                    break;
                case 10:
                    z4 = aVar.i();
                    break;
                default:
                    aVar.t();
                    aVar.u();
                    break;
            }
        }
        aVar.d();
        return new C1340b(str, str2, f5, documentData$Justification2, i4, f6, f7, i5, i6, f8, z4);
    }
}
