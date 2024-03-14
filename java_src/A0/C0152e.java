package a0;

import android.os.Bundle;
import androidx.lifecycle.C0243i;
import java.util.Iterator;
import java.util.Map;
import m.AbstractC1297e;
import m.C1295c;
import m.C1299g;
/* renamed from: a0.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0152e {

    /* renamed from: b  reason: collision with root package name */
    public boolean f2383b;

    /* renamed from: c  reason: collision with root package name */
    public Bundle f2384c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2385d;

    /* renamed from: e  reason: collision with root package name */
    public C0148a f2386e;

    /* renamed from: a  reason: collision with root package name */
    public final C1299g f2382a = new C1299g();

    /* renamed from: f  reason: collision with root package name */
    public boolean f2387f = true;

    public final Bundle a(String str) {
        if (this.f2385d) {
            Bundle bundle = this.f2384c;
            if (bundle != null) {
                Bundle bundle2 = bundle.getBundle(str);
                Bundle bundle3 = this.f2384c;
                if (bundle3 != null) {
                    bundle3.remove(str);
                }
                Bundle bundle4 = this.f2384c;
                if (!((bundle4 == null || bundle4.isEmpty()) ? false : true)) {
                    this.f2384c = null;
                }
                return bundle2;
            }
            return null;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component".toString());
    }

    public final InterfaceC0151d b() {
        Map.Entry components;
        InterfaceC0151d interfaceC0151d;
        Iterator it = this.f2382a.iterator();
        do {
            AbstractC1297e abstractC1297e = (AbstractC1297e) it;
            if (!abstractC1297e.hasNext()) {
                return null;
            }
            components = (Map.Entry) abstractC1297e.next();
            kotlin.jvm.internal.h.d(components, "components");
            interfaceC0151d = (InterfaceC0151d) components.getValue();
        } while (!kotlin.jvm.internal.h.a((String) components.getKey(), "androidx.lifecycle.internal.SavedStateHandlesProvider"));
        return interfaceC0151d;
    }

    public final void c(String key, InterfaceC0151d provider) {
        Object obj;
        kotlin.jvm.internal.h.e(key, "key");
        kotlin.jvm.internal.h.e(provider, "provider");
        C1299g c1299g = this.f2382a;
        C1295c h4 = c1299g.h(key);
        if (h4 != null) {
            obj = h4.f11570e;
        } else {
            C1295c c1295c = new C1295c(key, provider);
            c1299g.f11581g++;
            C1295c c1295c2 = c1299g.f11579e;
            if (c1295c2 == null) {
                c1299g.f11578d = c1295c;
                c1299g.f11579e = c1295c;
            } else {
                c1295c2.f11571f = c1295c;
                c1295c.f11572g = c1295c2;
                c1299g.f11579e = c1295c;
            }
            obj = null;
        }
        if (!(((InterfaceC0151d) obj) == null)) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered".toString());
        }
    }

    public final void d() {
        if (!this.f2387f) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState".toString());
        }
        C0148a c0148a = this.f2386e;
        if (c0148a == null) {
            c0148a = new C0148a(this);
        }
        this.f2386e = c0148a;
        try {
            C0243i.class.getDeclaredConstructor(new Class[0]);
            C0148a c0148a2 = this.f2386e;
            if (c0148a2 != null) {
                c0148a2.f2380a.add(C0243i.class.getName());
            }
        } catch (NoSuchMethodException e4) {
            throw new IllegalArgumentException("Class " + C0243i.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e4);
        }
    }
}
