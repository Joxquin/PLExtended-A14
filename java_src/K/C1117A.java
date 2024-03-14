package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;
/* renamed from: k.A  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1117A {

    /* renamed from: b  reason: collision with root package name */
    public static final PorterDuff.Mode f10717b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c  reason: collision with root package name */
    public static C1117A f10718c;

    /* renamed from: a  reason: collision with root package name */
    public H0 f10719a;

    public static synchronized C1117A a() {
        C1117A c1117a;
        synchronized (C1117A.class) {
            if (f10718c == null) {
                d();
            }
            c1117a = f10718c;
        }
        return c1117a;
    }

    public static synchronized PorterDuffColorFilter c(int i4, PorterDuff.Mode mode) {
        PorterDuffColorFilter g4;
        synchronized (C1117A.class) {
            g4 = H0.g(i4, mode);
        }
        return g4;
    }

    public static synchronized void d() {
        synchronized (C1117A.class) {
            if (f10718c == null) {
                C1117A c1117a = new C1117A();
                f10718c = c1117a;
                c1117a.f10719a = H0.c();
                H0 h02 = f10718c.f10719a;
                C1174z c1174z = new C1174z();
                synchronized (h02) {
                    h02.f10775e = c1174z;
                }
            }
        }
    }

    public static void e(Drawable drawable, P0 p02, int[] iArr) {
        PorterDuff.Mode mode = H0.f10768f;
        int[] state = drawable.getState();
        Rect rect = C1154o0.f10945a;
        if (!(drawable.mutate() == drawable)) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z4 = p02.f10818d;
        if (!z4 && !p02.f10817c) {
            drawable.clearColorFilter();
            return;
        }
        PorterDuffColorFilter porterDuffColorFilter = null;
        ColorStateList colorStateList = z4 ? p02.f10815a : null;
        PorterDuff.Mode mode2 = p02.f10817c ? p02.f10816b : H0.f10768f;
        if (colorStateList != null && mode2 != null) {
            porterDuffColorFilter = H0.g(colorStateList.getColorForState(iArr, 0), mode2);
        }
        drawable.setColorFilter(porterDuffColorFilter);
    }

    public final synchronized Drawable b(int i4, Context context) {
        return this.f10719a.e(i4, context);
    }
}
