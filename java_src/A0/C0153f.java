package a0;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0247m;
import androidx.lifecycle.InterfaceC0249o;
import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.savedstate.Recreator;
import java.util.Map;
import m.C1296d;
import m.C1299g;
/* renamed from: a0.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0153f {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC0154g f2388a;

    /* renamed from: b  reason: collision with root package name */
    public final C0152e f2389b = new C0152e();

    /* renamed from: c  reason: collision with root package name */
    public boolean f2390c;

    public C0153f(InterfaceC0154g interfaceC0154g) {
        this.f2388a = interfaceC0154g;
    }

    public final void a() {
        InterfaceC0154g interfaceC0154g = this.f2388a;
        AbstractC0247m lifecycle = interfaceC0154g.getLifecycle();
        if (!(lifecycle.b() == Lifecycle$State.INITIALIZED)) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage".toString());
        }
        lifecycle.a(new Recreator(interfaceC0154g));
        final C0152e c0152e = this.f2389b;
        c0152e.getClass();
        if (!(!c0152e.f2383b)) {
            throw new IllegalStateException("SavedStateRegistry was already attached.".toString());
        }
        lifecycle.a(new InterfaceC0249o() { // from class: a0.b
            @Override // androidx.lifecycle.InterfaceC0249o
            public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
                C0152e this$0 = C0152e.this;
                kotlin.jvm.internal.h.e(this$0, "this$0");
                if (lifecycle$Event == Lifecycle$Event.ON_START) {
                    this$0.f2387f = true;
                } else if (lifecycle$Event == Lifecycle$Event.ON_STOP) {
                    this$0.f2387f = false;
                }
            }
        });
        c0152e.f2383b = true;
        this.f2390c = true;
    }

    public final void b(Bundle bundle) {
        if (!this.f2390c) {
            a();
        }
        AbstractC0247m lifecycle = this.f2388a.getLifecycle();
        if (!(!lifecycle.b().a(Lifecycle$State.STARTED))) {
            throw new IllegalStateException(("performRestore cannot be called when owner is " + lifecycle.b()).toString());
        }
        C0152e c0152e = this.f2389b;
        if (!c0152e.f2383b) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).".toString());
        }
        if (!(!c0152e.f2385d)) {
            throw new IllegalStateException("SavedStateRegistry was already restored.".toString());
        }
        c0152e.f2384c = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        c0152e.f2385d = true;
    }

    public final void c(Bundle outBundle) {
        kotlin.jvm.internal.h.e(outBundle, "outBundle");
        C0152e c0152e = this.f2389b;
        c0152e.getClass();
        Bundle bundle = new Bundle();
        Bundle bundle2 = c0152e.f2384c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        C1299g c1299g = c0152e.f2382a;
        c1299g.getClass();
        C1296d c1296d = new C1296d(c1299g);
        c1299g.f11580f.put(c1296d, Boolean.FALSE);
        while (c1296d.hasNext()) {
            Map.Entry entry = (Map.Entry) c1296d.next();
            bundle.putBundle((String) entry.getKey(), ((InterfaceC0151d) entry.getValue()).a());
        }
        if (bundle.isEmpty()) {
            return;
        }
        outBundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle);
    }
}
