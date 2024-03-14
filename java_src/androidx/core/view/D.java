package androidx.core.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.view.View;
import android.view.WindowInsets;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class D {
    public static c0 a(View view, c0 c0Var, Rect rect) {
        WindowInsets f4 = c0Var.f();
        if (f4 != null) {
            return c0.g(view.computeSystemWindowInsets(f4, rect), view);
        }
        rect.setEmpty();
        return c0Var;
    }

    public static ColorStateList b(View view) {
        return view.getBackgroundTintList();
    }

    public static PorterDuff.Mode c(View view) {
        return view.getBackgroundTintMode();
    }

    public static float d(View view) {
        return view.getElevation();
    }

    public static String e(View view) {
        return view.getTransitionName();
    }

    public static float f(View view) {
        return view.getTranslationZ();
    }

    public static float g(View view) {
        return view.getZ();
    }

    public static boolean h(View view) {
        return view.isNestedScrollingEnabled();
    }

    public static void i(View view, ColorStateList colorStateList) {
        view.setBackgroundTintList(colorStateList);
    }

    public static void j(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
    }

    public static void k(View view, float f4) {
        view.setElevation(f4);
    }

    public static void l(View view, r rVar) {
        if (rVar == null) {
            view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
        } else {
            view.setOnApplyWindowInsetsListener(new C(view, rVar));
        }
    }

    public static void m(View view, String str) {
        view.setTransitionName(str);
    }

    public static void n(View view, float f4) {
        view.setTranslationZ(f4);
    }

    public static void o(View view, float f4) {
        view.setZ(f4);
    }

    public static void p(View view) {
        view.stopNestedScroll();
    }
}
