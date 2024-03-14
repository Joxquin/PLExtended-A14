package androidx.fragment.app;

import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public final class A0 {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f3230a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public final HashMap f3231b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final HashMap f3232c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public C0229u0 f3233d;

    public final void a(K k4) {
        if (this.f3230a.contains(k4)) {
            throw new IllegalStateException("Fragment already added: " + k4);
        }
        synchronized (this.f3230a) {
            this.f3230a.add(k4);
        }
        k4.mAdded = true;
    }

    public final K b(String str) {
        z0 z0Var = (z0) this.f3231b.get(str);
        if (z0Var != null) {
            return z0Var.f3543c;
        }
        return null;
    }

    public final K c(String str) {
        K findFragmentByWho;
        for (z0 z0Var : this.f3231b.values()) {
            if (z0Var != null && (findFragmentByWho = z0Var.f3543c.findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    public final List d() {
        ArrayList arrayList = new ArrayList();
        for (z0 z0Var : this.f3231b.values()) {
            if (z0Var != null) {
                arrayList.add(z0Var);
            }
        }
        return arrayList;
    }

    public final List e() {
        ArrayList arrayList = new ArrayList();
        for (z0 z0Var : this.f3231b.values()) {
            if (z0Var != null) {
                arrayList.add(z0Var.f3543c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public final List f() {
        ArrayList arrayList;
        if (this.f3230a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f3230a) {
            arrayList = new ArrayList(this.f3230a);
        }
        return arrayList;
    }

    public final void g(z0 z0Var) {
        K k4 = z0Var.f3543c;
        String str = k4.mWho;
        HashMap hashMap = this.f3231b;
        if (hashMap.get(str) != null) {
            return;
        }
        hashMap.put(k4.mWho, z0Var);
        if (k4.mRetainInstanceChangedWhileDetached) {
            if (k4.mRetainInstance) {
                this.f3233d.c(k4);
            } else {
                this.f3233d.f(k4);
            }
            k4.mRetainInstanceChangedWhileDetached = false;
        }
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + k4);
        }
    }

    public final void h(z0 z0Var) {
        K k4 = z0Var.f3543c;
        if (k4.mRetainInstance) {
            this.f3233d.f(k4);
        }
        if (((z0) this.f3231b.put(k4.mWho, null)) != null && AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + k4);
        }
    }

    public final Bundle i(String str, Bundle bundle) {
        HashMap hashMap = this.f3232c;
        return bundle != null ? (Bundle) hashMap.put(str, bundle) : (Bundle) hashMap.remove(str);
    }
}
