package androidx.activity;

import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.InterfaceC0249o;
import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.Lifecycle$Event;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
final class ImmLeaksCleaner implements InterfaceC0249o {

    /* renamed from: d  reason: collision with root package name */
    public static int f2413d;

    /* renamed from: e  reason: collision with root package name */
    public static Field f2414e;

    /* renamed from: f  reason: collision with root package name */
    public static Field f2415f;

    /* renamed from: g  reason: collision with root package name */
    public static Field f2416g;

    public ImmLeaksCleaner() {
        throw null;
    }

    @Override // androidx.lifecycle.InterfaceC0249o
    public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event != Lifecycle$Event.ON_DESTROY) {
            return;
        }
        if (f2413d == 0) {
            try {
                f2413d = 2;
                Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                f2415f = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                f2416g = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                f2414e = declaredField3;
                declaredField3.setAccessible(true);
                f2413d = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (f2413d == 1) {
            throw null;
        }
    }
}
