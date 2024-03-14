package androidx.core.view;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: androidx.core.view.x  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0186x {
    public static boolean a(View view) {
        return view.getFitsSystemWindows();
    }

    public static int b(View view) {
        return view.getImportantForAccessibility();
    }

    public static int c(View view) {
        return view.getMinimumHeight();
    }

    public static int d(View view) {
        return view.getMinimumWidth();
    }

    public static int e(View view) {
        return view.getWindowSystemUiVisibility();
    }

    public static boolean f(View view) {
        return view.hasOverlappingRendering();
    }

    public static boolean g(View view) {
        return view.hasTransientState();
    }

    public static boolean h(View view, int i4, Bundle bundle) {
        return view.performAccessibilityAction(i4, bundle);
    }

    public static void i(View view) {
        view.postInvalidateOnAnimation();
    }

    public static void j(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    public static void k(View view, Runnable runnable, long j4) {
        view.postOnAnimationDelayed(runnable, j4);
    }

    public static void l(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public static void m(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public static void n(View view, boolean z4) {
        view.setHasTransientState(z4);
    }

    public static void o(View view, int i4) {
        view.setImportantForAccessibility(i4);
    }
}
