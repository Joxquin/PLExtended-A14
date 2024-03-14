package androidx.core.view;

import android.view.Display;
import android.view.View;
/* renamed from: androidx.core.view.y  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0187y {
    public static int a() {
        return View.generateViewId();
    }

    public static Display b(View view) {
        return view.getDisplay();
    }

    public static int c(View view) {
        return view.getLayoutDirection();
    }

    public static int d(View view) {
        return view.getPaddingEnd();
    }

    public static int e(View view) {
        return view.getPaddingStart();
    }

    public static boolean f(View view) {
        return view.isPaddingRelative();
    }

    public static void g(View view, int i4) {
        view.setLabelFor(i4);
    }

    public static void h(View view, int i4, int i5, int i6, int i7) {
        view.setPaddingRelative(i4, i5, i6, i7);
    }
}
