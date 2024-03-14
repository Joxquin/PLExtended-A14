package androidx.core.view;

import android.view.View;
import android.view.WindowInsets;
/* loaded from: classes.dex */
public final class E {
    public static c0 a(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        c0 g4 = c0.g(rootWindowInsets, null);
        a0 a0Var = g4.f3106a;
        a0Var.q(g4);
        a0Var.d(view.getRootView());
        return g4;
    }

    public static void b(View view, int i4, int i5) {
        view.setScrollIndicators(i4, i5);
    }
}
