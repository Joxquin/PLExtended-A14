package k;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import androidx.core.view.C0187y;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class c1 {

    /* renamed from: a  reason: collision with root package name */
    public static final Method f10879a;

    static {
        try {
            Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
            f10879a = declaredMethod;
            if (declaredMethod.isAccessible()) {
                return;
            }
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
        }
    }

    public static boolean a(View view) {
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        return C0187y.c(view) == 1;
    }
}
