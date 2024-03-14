package C2;

import android.view.View;
import android.view.ViewParent;
import androidx.core.view.D;
import androidx.core.view.J;
import java.util.WeakHashMap;
import u2.C1424a;
/* loaded from: classes.dex */
public final class j {
    public static d a(int i4) {
        if (i4 != 0 && i4 == 1) {
            return new e();
        }
        return new l();
    }

    public static void b(View view, i iVar) {
        C1424a c1424a = iVar.f160d.f138b;
        if (c1424a != null && c1424a.f12434a) {
            float f4 = 0.0f;
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                WeakHashMap weakHashMap = J.f3079a;
                f4 += D.d((View) parent);
            }
            h hVar = iVar.f160d;
            if (hVar.f149m != f4) {
                hVar.f149m = f4;
                iVar.o();
            }
        }
    }
}
