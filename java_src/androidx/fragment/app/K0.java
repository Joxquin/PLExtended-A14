package androidx.fragment.app;

import a0.C0152e;
import a0.C0153f;
import a0.InterfaceC0154g;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.lifecycle.AbstractC0247m;
import androidx.lifecycle.C0252s;
import androidx.lifecycle.InterfaceC0242h;
import androidx.lifecycle.Lifecycle$Event;
import java.util.Map;
/* loaded from: classes.dex */
public final class K0 implements InterfaceC0242h, InterfaceC0154g, androidx.lifecycle.V {

    /* renamed from: d  reason: collision with root package name */
    public final K f3297d;

    /* renamed from: e  reason: collision with root package name */
    public final androidx.lifecycle.U f3298e;

    /* renamed from: f  reason: collision with root package name */
    public final Runnable f3299f;

    /* renamed from: g  reason: collision with root package name */
    public C0252s f3300g = null;

    /* renamed from: h  reason: collision with root package name */
    public C0153f f3301h = null;

    public K0(K k4, androidx.lifecycle.U u4, RunnableC0231w runnableC0231w) {
        this.f3297d = k4;
        this.f3298e = u4;
        this.f3299f = runnableC0231w;
    }

    public final void a(Lifecycle$Event lifecycle$Event) {
        this.f3300g.f(lifecycle$Event);
    }

    public final void b() {
        if (this.f3300g == null) {
            this.f3300g = new C0252s(this);
            C0153f c0153f = new C0153f(this);
            this.f3301h = c0153f;
            c0153f.a();
            this.f3299f.run();
        }
    }

    @Override // androidx.lifecycle.InterfaceC0242h
    public final V.b getDefaultViewModelCreationExtras() {
        Application application;
        K k4 = this.f3297d;
        Context applicationContext = k4.requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            } else if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            } else {
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
        }
        V.d dVar = new V.d();
        Map map = dVar.f1779a;
        if (application != null) {
            map.put(androidx.lifecycle.O.f3583a, application);
        }
        map.put(androidx.lifecycle.I.f3557a, k4);
        map.put(androidx.lifecycle.I.f3558b, this);
        if (k4.getArguments() != null) {
            map.put(androidx.lifecycle.I.f3559c, k4.getArguments());
        }
        return dVar;
    }

    @Override // androidx.lifecycle.InterfaceC0251q
    public final AbstractC0247m getLifecycle() {
        b();
        return this.f3300g;
    }

    @Override // a0.InterfaceC0154g
    public final C0152e getSavedStateRegistry() {
        b();
        return this.f3301h.f2389b;
    }

    @Override // androidx.lifecycle.V
    public final androidx.lifecycle.U getViewModelStore() {
        b();
        return this.f3298e;
    }
}
