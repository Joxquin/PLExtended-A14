package i;

import android.view.InflateException;
import android.view.MenuItem;
import java.lang.reflect.Method;
/* renamed from: i.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class MenuItem$OnMenuItemClickListenerC0976h implements MenuItem.OnMenuItemClickListener {

    /* renamed from: f  reason: collision with root package name */
    public static final Class[] f9556f = {MenuItem.class};

    /* renamed from: d  reason: collision with root package name */
    public final Object f9557d;

    /* renamed from: e  reason: collision with root package name */
    public final Method f9558e;

    public MenuItem$OnMenuItemClickListenerC0976h(Object obj, String str) {
        this.f9557d = obj;
        Class<?> cls = obj.getClass();
        try {
            this.f9558e = cls.getMethod(str, f9556f);
        } catch (Exception e4) {
            InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
            inflateException.initCause(e4);
            throw inflateException;
        }
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        try {
            if (this.f9558e.getReturnType() == Boolean.TYPE) {
                return ((Boolean) this.f9558e.invoke(this.f9557d, menuItem)).booleanValue();
            }
            this.f9558e.invoke(this.f9557d, menuItem);
            return true;
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }
}
