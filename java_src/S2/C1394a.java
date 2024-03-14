package s2;

import A2.c;
import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
/* renamed from: s2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1394a {
    public static int a(Context context, int i4, int i5) {
        TypedValue a4 = c.a(i4, context);
        if (a4 != null) {
            int i6 = a4.resourceId;
            if (i6 != 0) {
                Object obj = B.c.f105a;
                return context.getColor(i6);
            }
            return a4.data;
        }
        return i5;
    }

    public static int b(View view, int i4) {
        Context context = view.getContext();
        TypedValue b4 = c.b(i4, view.getContext(), view.getClass().getCanonicalName());
        int i5 = b4.resourceId;
        if (i5 != 0) {
            Object obj = B.c.f105a;
            return context.getColor(i5);
        }
        return b4.data;
    }

    public static boolean c(int i4) {
        return i4 != 0 && E.a.f(i4) > 0.5d;
    }

    public static int d(int i4, int i5, float f4) {
        return E.a.h(E.a.k(i5, Math.round(Color.alpha(i5) * f4)), i4);
    }
}
