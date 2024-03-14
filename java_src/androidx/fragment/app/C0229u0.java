package androidx.fragment.app;

import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
/* renamed from: androidx.fragment.app.u0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0229u0 extends androidx.lifecycle.N {

    /* renamed from: j  reason: collision with root package name */
    public static final C0227t0 f3512j = new C0227t0();

    /* renamed from: g  reason: collision with root package name */
    public final boolean f3516g;

    /* renamed from: d  reason: collision with root package name */
    public final HashMap f3513d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public final HashMap f3514e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    public final HashMap f3515f = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    public boolean f3517h = false;

    /* renamed from: i  reason: collision with root package name */
    public boolean f3518i = false;

    public C0229u0(boolean z4) {
        this.f3516g = z4;
    }

    @Override // androidx.lifecycle.N
    public final void b() {
        if (AbstractC0220p0.H(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f3517h = true;
    }

    public final void c(K k4) {
        if (this.f3518i) {
            if (AbstractC0220p0.H(2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        HashMap hashMap = this.f3513d;
        if (hashMap.containsKey(k4.mWho)) {
            return;
        }
        hashMap.put(k4.mWho, k4);
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + k4);
        }
    }

    public final void d(K k4) {
        if (AbstractC0220p0.H(3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + k4);
        }
        e(k4.mWho);
    }

    public final void e(String str) {
        HashMap hashMap = this.f3514e;
        C0229u0 c0229u0 = (C0229u0) hashMap.get(str);
        if (c0229u0 != null) {
            c0229u0.b();
            hashMap.remove(str);
        }
        HashMap hashMap2 = this.f3515f;
        androidx.lifecycle.U u4 = (androidx.lifecycle.U) hashMap2.get(str);
        if (u4 != null) {
            u4.a();
            hashMap2.remove(str);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0229u0.class != obj.getClass()) {
            return false;
        }
        C0229u0 c0229u0 = (C0229u0) obj;
        return this.f3513d.equals(c0229u0.f3513d) && this.f3514e.equals(c0229u0.f3514e) && this.f3515f.equals(c0229u0.f3515f);
    }

    public final void f(K k4) {
        if (this.f3518i) {
            if (AbstractC0220p0.H(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        if ((this.f3513d.remove(k4.mWho) != null) && AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + k4);
        }
    }

    public final int hashCode() {
        int hashCode = this.f3514e.hashCode();
        return this.f3515f.hashCode() + ((hashCode + (this.f3513d.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.f3513d.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.f3514e.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.f3515f.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
