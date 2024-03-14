package x2;

import android.graphics.PorterDuff;
import android.view.View;
import androidx.core.view.C0187y;
import androidx.core.view.J;
import java.util.WeakHashMap;
/* renamed from: x2.w  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1485w {
    public static boolean a(View view) {
        WeakHashMap weakHashMap = J.f3079a;
        return C0187y.c(view) == 1;
    }

    public static PorterDuff.Mode b(int i4, PorterDuff.Mode mode) {
        if (i4 != 3) {
            if (i4 != 5) {
                if (i4 != 9) {
                    switch (i4) {
                        case 14:
                            return PorterDuff.Mode.MULTIPLY;
                        case 15:
                            return PorterDuff.Mode.SCREEN;
                        case 16:
                            return PorterDuff.Mode.ADD;
                        default:
                            return mode;
                    }
                }
                return PorterDuff.Mode.SRC_ATOP;
            }
            return PorterDuff.Mode.SRC_IN;
        }
        return PorterDuff.Mode.SRC_OVER;
    }
}
