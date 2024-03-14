package x2;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import androidx.core.view.d0;
/* renamed from: x2.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1468f {
    public static void a(Window window, boolean z4) {
        window.getDecorView();
        d0 d0Var = new d0(window);
        WindowInsetsController windowInsetsController = d0Var.f3108a;
        Window window2 = d0Var.f3109b;
        if (z4) {
            if (window2 != null) {
                View decorView = window2.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
            }
            windowInsetsController.setSystemBarsAppearance(8, 8);
            return;
        }
        if (window2 != null) {
            View decorView2 = window2.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-8193));
        }
        windowInsetsController.setSystemBarsAppearance(0, 8);
    }
}
