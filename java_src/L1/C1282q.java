package l1;

import com.android.internal.graphics.cam.Cam;
/* renamed from: l1.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1282q implements InterfaceC1277l {
    @Override // l1.InterfaceC1277l
    public final double a(Cam sourceColor) {
        kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
        double hue = sourceColor.getHue() - 50.0d;
        if (hue >= 0.0d) {
            return hue >= 360.0d ? hue % 360 : hue;
        }
        double d4 = 360;
        return (hue % d4) + d4;
    }
}
