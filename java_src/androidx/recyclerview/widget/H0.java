package androidx.recyclerview.widget;

import android.view.View;
/* loaded from: classes.dex */
public final class H0 {
    public static int a(A0 a02, T t4, View view, View view2, AbstractC0280l0 abstractC0280l0, boolean z4) {
        if (abstractC0280l0.getChildCount() == 0 || a02.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (z4) {
            return Math.min(t4.i(), t4.b(view2) - t4.d(view));
        }
        return Math.abs(AbstractC0280l0.getPosition(view) - AbstractC0280l0.getPosition(view2)) + 1;
    }

    public static int b(A0 a02, T t4, View view, View view2, AbstractC0280l0 abstractC0280l0, boolean z4, boolean z5) {
        if (abstractC0280l0.getChildCount() == 0 || a02.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z5 ? Math.max(0, (a02.b() - Math.max(AbstractC0280l0.getPosition(view), AbstractC0280l0.getPosition(view2))) - 1) : Math.max(0, Math.min(AbstractC0280l0.getPosition(view), AbstractC0280l0.getPosition(view2)));
        if (z4) {
            return Math.round((max * (Math.abs(t4.b(view2) - t4.d(view)) / (Math.abs(AbstractC0280l0.getPosition(view) - AbstractC0280l0.getPosition(view2)) + 1))) + (t4.h() - t4.d(view)));
        }
        return max;
    }

    public static int c(A0 a02, T t4, View view, View view2, AbstractC0280l0 abstractC0280l0, boolean z4) {
        if (abstractC0280l0.getChildCount() == 0 || a02.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (z4) {
            return (int) (((t4.b(view2) - t4.d(view)) / (Math.abs(AbstractC0280l0.getPosition(view) - AbstractC0280l0.getPosition(view2)) + 1)) * a02.b());
        }
        return a02.b();
    }
}
