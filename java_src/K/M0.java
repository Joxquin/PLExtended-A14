package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import d.C0792a;
/* loaded from: classes.dex */
public final class M0 {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal f10799a = new ThreadLocal();

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f10800b = {-16842910};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f10801c = {16842908};

    /* renamed from: d  reason: collision with root package name */
    public static final int[] f10802d = {16842919};

    /* renamed from: e  reason: collision with root package name */
    public static final int[] f10803e = {16842912};

    /* renamed from: f  reason: collision with root package name */
    public static final int[] f10804f = new int[0];

    /* renamed from: g  reason: collision with root package name */
    public static final int[] f10805g = new int[1];

    public static void a(View view, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C0792a.f8740j);
        try {
            if (!obtainStyledAttributes.hasValue(117)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static int b(int i4, Context context) {
        ColorStateList d4 = d(i4, context);
        if (d4 == null || !d4.isStateful()) {
            ThreadLocal threadLocal = f10799a;
            TypedValue typedValue = (TypedValue) threadLocal.get();
            if (typedValue == null) {
                typedValue = new TypedValue();
                threadLocal.set(typedValue);
            }
            context.getTheme().resolveAttribute(16842803, typedValue, true);
            float f4 = typedValue.getFloat();
            int c4 = c(i4, context);
            return E.a.k(c4, Math.round(Color.alpha(c4) * f4));
        }
        return d4.getColorForState(f10800b, d4.getDefaultColor());
    }

    public static int c(int i4, Context context) {
        int[] iArr = f10805g;
        iArr[0] = i4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static ColorStateList d(int i4, Context context) {
        ColorStateList colorStateList;
        int resourceId;
        int[] iArr = f10805g;
        iArr[0] = i4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            if (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0 || (colorStateList = B.c.a(resourceId, context)) == null) {
                colorStateList = obtainStyledAttributes.getColorStateList(0);
            }
            return colorStateList;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
