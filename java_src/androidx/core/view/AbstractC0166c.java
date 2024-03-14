package androidx.core.view;

import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import j.SubMenuC1081L;
/* renamed from: androidx.core.view.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0166c {

    /* renamed from: a  reason: collision with root package name */
    public j.q f3104a;

    public boolean a() {
        return false;
    }

    public boolean b() {
        return true;
    }

    public abstract View c();

    public View d(MenuItem menuItem) {
        return c();
    }

    public boolean e() {
        return false;
    }

    public void f(SubMenuC1081L subMenuC1081L) {
    }

    public boolean g() {
        return false;
    }

    public void h(j.q qVar) {
        if (this.f3104a != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f3104a = qVar;
    }
}
