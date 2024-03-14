package androidx.core.view;

import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
/* loaded from: classes.dex */
public final class A {
    public static int a(View view) {
        return view.getAccessibilityLiveRegion();
    }

    public static boolean b(View view) {
        return view.isAttachedToWindow();
    }

    public static boolean c(View view) {
        return view.isLaidOut();
    }

    public static void d(ViewParent viewParent, View view, View view2, int i4) {
        viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i4);
    }

    public static void e(View view, int i4) {
        view.setAccessibilityLiveRegion(i4);
    }

    public static void f(AccessibilityEvent accessibilityEvent, int i4) {
        accessibilityEvent.setContentChangeTypes(i4);
    }
}
