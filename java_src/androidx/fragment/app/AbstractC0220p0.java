package androidx.fragment.app;

import a0.C0152e;
import a0.InterfaceC0151d;
import a0.InterfaceC0154g;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.InterfaceC0169f;
import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.Lifecycle$State;
import c.C0319c;
import c.C0320d;
import com.android.systemui.shared.R;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import s.C1391a;
/* renamed from: androidx.fragment.app.p0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0220p0 {

    /* renamed from: A  reason: collision with root package name */
    public androidx.activity.result.e f3450A;

    /* renamed from: B  reason: collision with root package name */
    public androidx.activity.result.e f3451B;

    /* renamed from: C  reason: collision with root package name */
    public androidx.activity.result.e f3452C;

    /* renamed from: E  reason: collision with root package name */
    public boolean f3454E;

    /* renamed from: F  reason: collision with root package name */
    public boolean f3455F;

    /* renamed from: G  reason: collision with root package name */
    public boolean f3456G;

    /* renamed from: H  reason: collision with root package name */
    public boolean f3457H;

    /* renamed from: I  reason: collision with root package name */
    public boolean f3458I;

    /* renamed from: J  reason: collision with root package name */
    public ArrayList f3459J;

    /* renamed from: K  reason: collision with root package name */
    public ArrayList f3460K;

    /* renamed from: L  reason: collision with root package name */
    public ArrayList f3461L;

    /* renamed from: M  reason: collision with root package name */
    public C0229u0 f3462M;

    /* renamed from: b  reason: collision with root package name */
    public boolean f3465b;

    /* renamed from: d  reason: collision with root package name */
    public ArrayList f3467d;

    /* renamed from: e  reason: collision with root package name */
    public ArrayList f3468e;

    /* renamed from: g  reason: collision with root package name */
    public androidx.activity.s f3470g;

    /* renamed from: u  reason: collision with root package name */
    public W f3484u;

    /* renamed from: v  reason: collision with root package name */
    public U f3485v;

    /* renamed from: w  reason: collision with root package name */
    public K f3486w;

    /* renamed from: x  reason: collision with root package name */
    public K f3487x;

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f3464a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public final A0 f3466c = new A0();

    /* renamed from: f  reason: collision with root package name */
    public final Y f3469f = new Y(this);

    /* renamed from: h  reason: collision with root package name */
    public final C0200f0 f3471h = new C0200f0(this);

    /* renamed from: i  reason: collision with root package name */
    public final AtomicInteger f3472i = new AtomicInteger();

    /* renamed from: j  reason: collision with root package name */
    public final Map f3473j = Collections.synchronizedMap(new HashMap());

    /* renamed from: k  reason: collision with root package name */
    public final Map f3474k = Collections.synchronizedMap(new HashMap());

    /* renamed from: l  reason: collision with root package name */
    public final Map f3475l = Collections.synchronizedMap(new HashMap());

    /* renamed from: m  reason: collision with root package name */
    public final C0190a0 f3476m = new C0190a0(this);

    /* renamed from: n  reason: collision with root package name */
    public final CopyOnWriteArrayList f3477n = new CopyOnWriteArrayList();

    /* renamed from: o  reason: collision with root package name */
    public final C0192b0 f3478o = new L.a(this) { // from class: androidx.fragment.app.b0

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AbstractC0220p0 f3385b;

        {
            this.f3385b = this;
        }

        @Override // L.a
        public final void accept(Object obj) {
            int i4 = r2;
            AbstractC0220p0 abstractC0220p0 = this.f3385b;
            switch (i4) {
                case 0:
                    Configuration configuration = (Configuration) obj;
                    if (abstractC0220p0.J()) {
                        abstractC0220p0.h(false, configuration);
                        return;
                    }
                    return;
                case 1:
                    Integer num = (Integer) obj;
                    if (abstractC0220p0.J() && num.intValue() == 80) {
                        abstractC0220p0.l(false);
                        return;
                    }
                    return;
                case 2:
                    B.g gVar = (B.g) obj;
                    if (abstractC0220p0.J()) {
                        abstractC0220p0.m(gVar.f106a, false);
                        return;
                    }
                    return;
                default:
                    B.k kVar = (B.k) obj;
                    if (abstractC0220p0.J()) {
                        abstractC0220p0.r(kVar.f107a, false);
                        return;
                    }
                    return;
            }
        }
    };

    /* renamed from: p  reason: collision with root package name */
    public final C0192b0 f3479p = new L.a(this) { // from class: androidx.fragment.app.b0

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AbstractC0220p0 f3385b;

        {
            this.f3385b = this;
        }

        @Override // L.a
        public final void accept(Object obj) {
            int i4 = r2;
            AbstractC0220p0 abstractC0220p0 = this.f3385b;
            switch (i4) {
                case 0:
                    Configuration configuration = (Configuration) obj;
                    if (abstractC0220p0.J()) {
                        abstractC0220p0.h(false, configuration);
                        return;
                    }
                    return;
                case 1:
                    Integer num = (Integer) obj;
                    if (abstractC0220p0.J() && num.intValue() == 80) {
                        abstractC0220p0.l(false);
                        return;
                    }
                    return;
                case 2:
                    B.g gVar = (B.g) obj;
                    if (abstractC0220p0.J()) {
                        abstractC0220p0.m(gVar.f106a, false);
                        return;
                    }
                    return;
                default:
                    B.k kVar = (B.k) obj;
                    if (abstractC0220p0.J()) {
                        abstractC0220p0.r(kVar.f107a, false);
                        return;
                    }
                    return;
            }
        }
    };

    /* renamed from: q  reason: collision with root package name */
    public final C0192b0 f3480q = new L.a(this) { // from class: androidx.fragment.app.b0

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AbstractC0220p0 f3385b;

        {
            this.f3385b = this;
        }

        @Override // L.a
        public final void accept(Object obj) {
            int i4 = r2;
            AbstractC0220p0 abstractC0220p0 = this.f3385b;
            switch (i4) {
                case 0:
                    Configuration configuration = (Configuration) obj;
                    if (abstractC0220p0.J()) {
                        abstractC0220p0.h(false, configuration);
                        return;
                    }
                    return;
                case 1:
                    Integer num = (Integer) obj;
                    if (abstractC0220p0.J() && num.intValue() == 80) {
                        abstractC0220p0.l(false);
                        return;
                    }
                    return;
                case 2:
                    B.g gVar = (B.g) obj;
                    if (abstractC0220p0.J()) {
                        abstractC0220p0.m(gVar.f106a, false);
                        return;
                    }
                    return;
                default:
                    B.k kVar = (B.k) obj;
                    if (abstractC0220p0.J()) {
                        abstractC0220p0.r(kVar.f107a, false);
                        return;
                    }
                    return;
            }
        }
    };

    /* renamed from: r  reason: collision with root package name */
    public final C0192b0 f3481r = new L.a(this) { // from class: androidx.fragment.app.b0

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AbstractC0220p0 f3385b;

        {
            this.f3385b = this;
        }

        @Override // L.a
        public final void accept(Object obj) {
            int i4 = r2;
            AbstractC0220p0 abstractC0220p0 = this.f3385b;
            switch (i4) {
                case 0:
                    Configuration configuration = (Configuration) obj;
                    if (abstractC0220p0.J()) {
                        abstractC0220p0.h(false, configuration);
                        return;
                    }
                    return;
                case 1:
                    Integer num = (Integer) obj;
                    if (abstractC0220p0.J() && num.intValue() == 80) {
                        abstractC0220p0.l(false);
                        return;
                    }
                    return;
                case 2:
                    B.g gVar = (B.g) obj;
                    if (abstractC0220p0.J()) {
                        abstractC0220p0.m(gVar.f106a, false);
                        return;
                    }
                    return;
                default:
                    B.k kVar = (B.k) obj;
                    if (abstractC0220p0.J()) {
                        abstractC0220p0.r(kVar.f107a, false);
                        return;
                    }
                    return;
            }
        }
    };

    /* renamed from: s  reason: collision with root package name */
    public final C0202g0 f3482s = new C0202g0(this);

    /* renamed from: t  reason: collision with root package name */
    public int f3483t = -1;

    /* renamed from: y  reason: collision with root package name */
    public final C0204h0 f3488y = new C0204h0(this);

    /* renamed from: z  reason: collision with root package name */
    public final C0198e0 f3489z = new C0198e0(this, 1);

    /* renamed from: D  reason: collision with root package name */
    public ArrayDeque f3453D = new ArrayDeque();

    /* renamed from: N  reason: collision with root package name */
    public final RunnableC0206i0 f3463N = new RunnableC0206i0(this);

    public static boolean H(int i4) {
        return Log.isLoggable("FragmentManager", i4);
    }

    public static boolean I(K k4) {
        boolean z4;
        if (k4.mHasMenu && k4.mMenuVisible) {
            return true;
        }
        Iterator it = ((ArrayList) k4.mChildFragmentManager.f3466c.e()).iterator();
        boolean z5 = false;
        while (true) {
            if (!it.hasNext()) {
                z4 = false;
                break;
            }
            K k5 = (K) it.next();
            if (k5 != null) {
                z5 = I(k5);
                continue;
            }
            if (z5) {
                z4 = true;
                break;
            }
        }
        return z4;
    }

    public static boolean K(K k4) {
        if (k4 == null) {
            return true;
        }
        AbstractC0220p0 abstractC0220p0 = k4.mFragmentManager;
        return k4.equals(abstractC0220p0.f3487x) && K(abstractC0220p0.f3486w);
    }

    public static void a0(K k4) {
        if (H(2)) {
            Log.v("FragmentManager", "show: " + k4);
        }
        if (k4.mHidden) {
            k4.mHidden = false;
            k4.mHiddenChanged = !k4.mHiddenChanged;
        }
    }

    public final K A(String str) {
        return this.f3466c.b(str);
    }

    public final K B(int i4) {
        A0 a02 = this.f3466c;
        ArrayList arrayList = a02.f3230a;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                for (z0 z0Var : a02.f3231b.values()) {
                    if (z0Var != null) {
                        K k4 = z0Var.f3543c;
                        if (k4.mFragmentId == i4) {
                            return k4;
                        }
                    }
                }
                return null;
            }
            K k5 = (K) arrayList.get(size);
            if (k5 != null && k5.mFragmentId == i4) {
                return k5;
            }
        }
    }

    public final K C(String str) {
        A0 a02 = this.f3466c;
        ArrayList arrayList = a02.f3230a;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                for (z0 z0Var : a02.f3231b.values()) {
                    if (z0Var != null) {
                        K k4 = z0Var.f3543c;
                        if (str.equals(k4.mTag)) {
                            return k4;
                        }
                    }
                }
                return null;
            }
            K k5 = (K) arrayList.get(size);
            if (k5 != null && str.equals(k5.mTag)) {
                return k5;
            }
        }
    }

    public final ViewGroup D(K k4) {
        ViewGroup viewGroup = k4.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (k4.mContainerId > 0 && this.f3485v.c()) {
            View b4 = this.f3485v.b(k4.mContainerId);
            if (b4 instanceof ViewGroup) {
                return (ViewGroup) b4;
            }
        }
        return null;
    }

    public final C0204h0 E() {
        K k4 = this.f3486w;
        return k4 != null ? k4.mFragmentManager.E() : this.f3488y;
    }

    public final C0198e0 F() {
        K k4 = this.f3486w;
        return k4 != null ? k4.mFragmentManager.F() : this.f3489z;
    }

    public final void G(K k4) {
        if (H(2)) {
            Log.v("FragmentManager", "hide: " + k4);
        }
        if (k4.mHidden) {
            return;
        }
        k4.mHidden = true;
        k4.mHiddenChanged = true ^ k4.mHiddenChanged;
        Z(k4);
    }

    public final boolean J() {
        K k4 = this.f3486w;
        if (k4 == null) {
            return true;
        }
        return k4.isAdded() && this.f3486w.getParentFragmentManager().J();
    }

    public final boolean L() {
        return this.f3455F || this.f3456G;
    }

    public final void M(int i4, boolean z4) {
        HashMap hashMap;
        W w4;
        if (this.f3484u == null && i4 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z4 || i4 != this.f3483t) {
            this.f3483t = i4;
            A0 a02 = this.f3466c;
            Iterator it = a02.f3230a.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                hashMap = a02.f3231b;
                if (!hasNext) {
                    break;
                }
                z0 z0Var = (z0) hashMap.get(((K) it.next()).mWho);
                if (z0Var != null) {
                    z0Var.k();
                }
            }
            Iterator it2 = hashMap.values().iterator();
            while (true) {
                boolean z5 = false;
                if (!it2.hasNext()) {
                    break;
                }
                z0 z0Var2 = (z0) it2.next();
                if (z0Var2 != null) {
                    z0Var2.k();
                    K k4 = z0Var2.f3543c;
                    if (k4.mRemoving && !k4.isInBackStack()) {
                        z5 = true;
                    }
                    if (z5) {
                        if (k4.mBeingSaved && !a02.f3232c.containsKey(k4.mWho)) {
                            a02.i(k4.mWho, z0Var2.n());
                        }
                        a02.h(z0Var2);
                    }
                }
            }
            b0();
            if (this.f3454E && (w4 = this.f3484u) != null && this.f3483t == 7) {
                w4.h();
                this.f3454E = false;
            }
        }
    }

    public final void N() {
        if (this.f3484u == null) {
            return;
        }
        this.f3455F = false;
        this.f3456G = false;
        this.f3462M.f3518i = false;
        for (K k4 : this.f3466c.f()) {
            if (k4 != null) {
                k4.noteStateNotSaved();
            }
        }
    }

    public final boolean O() {
        return P(-1, 0);
    }

    public final boolean P(int i4, int i5) {
        x(false);
        w(true);
        K k4 = this.f3487x;
        if (k4 == null || i4 >= 0 || !k4.getChildFragmentManager().O()) {
            boolean Q3 = Q(this.f3459J, this.f3460K, null, i4, i5);
            if (Q3) {
                this.f3465b = true;
                try {
                    S(this.f3459J, this.f3460K);
                } finally {
                    d();
                }
            }
            d0();
            if (this.f3458I) {
                this.f3458I = false;
                b0();
            }
            this.f3466c.f3231b.values().removeAll(Collections.singleton(null));
            return Q3;
        }
        return true;
    }

    public final boolean Q(ArrayList arrayList, ArrayList arrayList2, String str, int i4, int i5) {
        boolean z4 = (i5 & 1) != 0;
        ArrayList arrayList3 = this.f3467d;
        int i6 = -1;
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            if (str != null || i4 >= 0) {
                int size = this.f3467d.size() - 1;
                while (size >= 0) {
                    C0189a c0189a = (C0189a) this.f3467d.get(size);
                    if ((str != null && str.equals(c0189a.f3370i)) || (i4 >= 0 && i4 == c0189a.f3381t)) {
                        break;
                    }
                    size--;
                }
                if (size >= 0) {
                    if (z4) {
                        while (size > 0) {
                            int i7 = size - 1;
                            C0189a c0189a2 = (C0189a) this.f3467d.get(i7);
                            if ((str == null || !str.equals(c0189a2.f3370i)) && (i4 < 0 || i4 != c0189a2.f3381t)) {
                                break;
                            }
                            size = i7;
                        }
                    } else if (size != this.f3467d.size() - 1) {
                        size++;
                    }
                }
                i6 = size;
            } else {
                i6 = z4 ? 0 : (-1) + this.f3467d.size();
            }
        }
        if (i6 < 0) {
            return false;
        }
        for (int size2 = this.f3467d.size() - 1; size2 >= i6; size2--) {
            arrayList.add((C0189a) this.f3467d.remove(size2));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void R(K k4) {
        if (H(2)) {
            Log.v("FragmentManager", "remove: " + k4 + " nesting=" + k4.mBackStackNesting);
        }
        boolean z4 = !k4.isInBackStack();
        if (!k4.mDetached || z4) {
            A0 a02 = this.f3466c;
            synchronized (a02.f3230a) {
                a02.f3230a.remove(k4);
            }
            k4.mAdded = false;
            if (I(k4)) {
                this.f3454E = true;
            }
            k4.mRemoving = true;
            Z(k4);
        }
    }

    public final void S(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i4 = 0;
        int i5 = 0;
        while (i4 < size) {
            if (!((C0189a) arrayList.get(i4)).f3377p) {
                if (i5 != i4) {
                    z(arrayList, arrayList2, i5, i4);
                }
                i5 = i4 + 1;
                if (((Boolean) arrayList2.get(i4)).booleanValue()) {
                    while (i5 < size && ((Boolean) arrayList2.get(i5)).booleanValue() && !((C0189a) arrayList.get(i5)).f3377p) {
                        i5++;
                    }
                }
                z(arrayList, arrayList2, i4, i5);
                i4 = i5 - 1;
            }
            i4++;
        }
        if (i5 != size) {
            z(arrayList, arrayList2, i5, size);
        }
    }

    public final void T(Parcelable parcelable) {
        C0190a0 c0190a0;
        int i4;
        z0 z0Var;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3 = (Bundle) parcelable;
        for (String str : bundle3.keySet()) {
            if (str.startsWith("result_") && (bundle2 = bundle3.getBundle(str)) != null) {
                bundle2.setClassLoader(this.f3484u.f3356e.getClassLoader());
                this.f3474k.put(str.substring(7), bundle2);
            }
        }
        HashMap hashMap = new HashMap();
        for (String str2 : bundle3.keySet()) {
            if (str2.startsWith("fragment_") && (bundle = bundle3.getBundle(str2)) != null) {
                bundle.setClassLoader(this.f3484u.f3356e.getClassLoader());
                hashMap.put(str2.substring(9), bundle);
            }
        }
        A0 a02 = this.f3466c;
        HashMap hashMap2 = a02.f3232c;
        hashMap2.clear();
        hashMap2.putAll(hashMap);
        C0225s0 c0225s0 = (C0225s0) bundle3.getParcelable("state");
        if (c0225s0 == null) {
            return;
        }
        HashMap hashMap3 = a02.f3231b;
        hashMap3.clear();
        Iterator it = c0225s0.f3492d.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            c0190a0 = this.f3476m;
            if (!hasNext) {
                break;
            }
            Bundle i5 = a02.i((String) it.next(), null);
            if (i5 != null) {
                K k4 = (K) this.f3462M.f3513d.get(((x0) i5.getParcelable("state")).f3524e);
                if (k4 != null) {
                    if (H(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + k4);
                    }
                    z0Var = new z0(c0190a0, a02, k4, i5);
                } else {
                    z0Var = new z0(this.f3476m, this.f3466c, this.f3484u.f3356e.getClassLoader(), E(), i5);
                }
                K k5 = z0Var.f3543c;
                k5.mSavedFragmentState = i5;
                k5.mFragmentManager = this;
                if (H(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + k5.mWho + "): " + k5);
                }
                z0Var.l(this.f3484u.f3356e.getClassLoader());
                a02.g(z0Var);
                z0Var.f3545e = this.f3483t;
            }
        }
        C0229u0 c0229u0 = this.f3462M;
        c0229u0.getClass();
        Iterator it2 = new ArrayList(c0229u0.f3513d.values()).iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            K k6 = (K) it2.next();
            if ((hashMap3.get(k6.mWho) != null ? 1 : 0) == 0) {
                if (H(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + k6 + " that was not found in the set of active Fragments " + c0225s0.f3492d);
                }
                this.f3462M.f(k6);
                k6.mFragmentManager = this;
                z0 z0Var2 = new z0(c0190a0, a02, k6);
                z0Var2.f3545e = 1;
                z0Var2.k();
                k6.mRemoving = true;
                z0Var2.k();
            }
        }
        ArrayList<String> arrayList = c0225s0.f3493e;
        a02.f3230a.clear();
        if (arrayList != null) {
            for (String str3 : arrayList) {
                K b4 = a02.b(str3);
                if (b4 == null) {
                    throw new IllegalStateException(E.c.a("No instantiated fragment for (", str3, ")"));
                }
                if (H(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str3 + "): " + b4);
                }
                a02.a(b4);
            }
        }
        if (c0225s0.f3494f != null) {
            this.f3467d = new ArrayList(c0225s0.f3494f.length);
            int i6 = 0;
            while (true) {
                C0193c[] c0193cArr = c0225s0.f3494f;
                if (i6 >= c0193cArr.length) {
                    break;
                }
                C0193c c0193c = c0193cArr[i6];
                c0193c.getClass();
                C0189a c0189a = new C0189a(this);
                int i7 = 0;
                int i8 = 0;
                while (i7 < c0193c.f3386d.length) {
                    B0 b02 = new B0();
                    int i9 = i7 + 1;
                    b02.f3234a = c0193c.f3386d[i7];
                    if (H(2)) {
                        Log.v("FragmentManager", "Instantiate " + c0189a + " op #" + i8 + " base fragment #" + c0193c.f3386d[i9]);
                    }
                    b02.f3241h = Lifecycle$State.values()[c0193c.f3388f[i8]];
                    b02.f3242i = Lifecycle$State.values()[c0193c.f3389g[i8]];
                    int[] iArr = c0193c.f3386d;
                    int i10 = i9 + 1;
                    b02.f3236c = iArr[i9] != 0;
                    int i11 = i10 + 1;
                    int i12 = iArr[i10];
                    b02.f3237d = i12;
                    int i13 = i11 + 1;
                    int i14 = iArr[i11];
                    b02.f3238e = i14;
                    int i15 = i13 + 1;
                    int i16 = iArr[i13];
                    b02.f3239f = i16;
                    int i17 = iArr[i15];
                    b02.f3240g = i17;
                    c0189a.f3363b = i12;
                    c0189a.f3364c = i14;
                    c0189a.f3365d = i16;
                    c0189a.f3366e = i17;
                    c0189a.b(b02);
                    i8++;
                    i7 = i15 + 1;
                }
                c0189a.f3367f = c0193c.f3390h;
                c0189a.f3370i = c0193c.f3391i;
                c0189a.f3368g = true;
                c0189a.f3371j = c0193c.f3393k;
                c0189a.f3372k = c0193c.f3394l;
                c0189a.f3373l = c0193c.f3395m;
                c0189a.f3374m = c0193c.f3396n;
                c0189a.f3375n = c0193c.f3397o;
                c0189a.f3376o = c0193c.f3398p;
                c0189a.f3377p = c0193c.f3399q;
                c0189a.f3381t = c0193c.f3392j;
                for (int i18 = 0; i18 < c0193c.f3387e.size(); i18++) {
                    String str4 = (String) c0193c.f3387e.get(i18);
                    if (str4 != null) {
                        ((B0) c0189a.f3362a.get(i18)).f3235b = A(str4);
                    }
                }
                c0189a.c(1);
                if (H(2)) {
                    StringBuilder a4 = C0196d0.a("restoreAllState: back stack #", i6, " (index ");
                    a4.append(c0189a.f3381t);
                    a4.append("): ");
                    a4.append(c0189a);
                    Log.v("FragmentManager", a4.toString());
                    PrintWriter printWriter = new PrintWriter(new N0());
                    c0189a.f("  ", printWriter, false);
                    printWriter.close();
                }
                this.f3467d.add(c0189a);
                i6++;
            }
        } else {
            this.f3467d = null;
        }
        this.f3472i.set(c0225s0.f3495g);
        String str5 = c0225s0.f3496h;
        if (str5 != null) {
            K A3 = A(str5);
            this.f3487x = A3;
            q(A3);
        }
        ArrayList arrayList2 = c0225s0.f3497i;
        if (arrayList2 != null) {
            while (i4 < arrayList2.size()) {
                this.f3473j.put((String) arrayList2.get(i4), (C0197e) c0225s0.f3498j.get(i4));
                i4++;
            }
        }
        this.f3453D = new ArrayDeque(c0225s0.f3499k);
    }

    public final Bundle U() {
        int i4;
        C0193c[] c0193cArr;
        ArrayList arrayList;
        int size;
        Bundle bundle = new Bundle();
        Iterator it = ((HashSet) e()).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            U0 u02 = (U0) it.next();
            if (u02.f3353e) {
                if (H(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
                }
                u02.f3353e = false;
                u02.g();
            }
        }
        Iterator it2 = ((HashSet) e()).iterator();
        while (it2.hasNext()) {
            ((U0) it2.next()).i();
        }
        x(true);
        this.f3455F = true;
        this.f3462M.f3518i = true;
        A0 a02 = this.f3466c;
        a02.getClass();
        HashMap hashMap = a02.f3231b;
        ArrayList arrayList2 = new ArrayList(hashMap.size());
        for (z0 z0Var : hashMap.values()) {
            if (z0Var != null) {
                K k4 = z0Var.f3543c;
                a02.i(k4.mWho, z0Var.n());
                arrayList2.add(k4.mWho);
                if (H(2)) {
                    Log.v("FragmentManager", "Saved state of " + k4 + ": " + k4.mSavedFragmentState);
                }
            }
        }
        HashMap hashMap2 = this.f3466c.f3232c;
        if (!hashMap2.isEmpty()) {
            A0 a03 = this.f3466c;
            synchronized (a03.f3230a) {
                c0193cArr = null;
                if (a03.f3230a.isEmpty()) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(a03.f3230a.size());
                    Iterator it3 = a03.f3230a.iterator();
                    while (it3.hasNext()) {
                        K k5 = (K) it3.next();
                        arrayList.add(k5.mWho);
                        if (H(2)) {
                            Log.v("FragmentManager", "saveAllState: adding fragment (" + k5.mWho + "): " + k5);
                        }
                    }
                }
            }
            ArrayList arrayList3 = this.f3467d;
            if (arrayList3 != null && (size = arrayList3.size()) > 0) {
                c0193cArr = new C0193c[size];
                for (i4 = 0; i4 < size; i4++) {
                    c0193cArr[i4] = new C0193c((C0189a) this.f3467d.get(i4));
                    if (H(2)) {
                        StringBuilder a4 = C0196d0.a("saveAllState: adding back stack #", i4, ": ");
                        a4.append(this.f3467d.get(i4));
                        Log.v("FragmentManager", a4.toString());
                    }
                }
            }
            C0225s0 c0225s0 = new C0225s0();
            c0225s0.f3492d = arrayList2;
            c0225s0.f3493e = arrayList;
            c0225s0.f3494f = c0193cArr;
            c0225s0.f3495g = this.f3472i.get();
            K k6 = this.f3487x;
            if (k6 != null) {
                c0225s0.f3496h = k6.mWho;
            }
            c0225s0.f3497i.addAll(this.f3473j.keySet());
            c0225s0.f3498j.addAll(this.f3473j.values());
            c0225s0.f3499k = new ArrayList(this.f3453D);
            bundle.putParcelable("state", c0225s0);
            for (String str : this.f3474k.keySet()) {
                bundle.putBundle(androidx.constraintlayout.widget.j.a("result_", str), (Bundle) this.f3474k.get(str));
            }
            for (String str2 : hashMap2.keySet()) {
                bundle.putBundle(androidx.constraintlayout.widget.j.a("fragment_", str2), (Bundle) hashMap2.get(str2));
            }
        } else if (H(2)) {
            Log.v("FragmentManager", "saveAllState: no fragments!");
        }
        return bundle;
    }

    public final void V() {
        synchronized (this.f3464a) {
            boolean z4 = true;
            if (this.f3464a.size() != 1) {
                z4 = false;
            }
            if (z4) {
                this.f3484u.f3357f.removeCallbacks(this.f3463N);
                this.f3484u.f3357f.post(this.f3463N);
                d0();
            }
        }
    }

    public final void W(K k4, boolean z4) {
        ViewGroup D3 = D(k4);
        if (D3 == null || !(D3 instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) D3).f3268g = !z4;
    }

    public final void X(K k4, Lifecycle$State lifecycle$State) {
        if (k4.equals(A(k4.mWho)) && (k4.mHost == null || k4.mFragmentManager == this)) {
            k4.mMaxState = lifecycle$State;
            return;
        }
        throw new IllegalArgumentException("Fragment " + k4 + " is not an active fragment of FragmentManager " + this);
    }

    public final void Y(K k4) {
        if (k4 == null || (k4.equals(A(k4.mWho)) && (k4.mHost == null || k4.mFragmentManager == this))) {
            K k5 = this.f3487x;
            this.f3487x = k4;
            q(k5);
            q(this.f3487x);
            return;
        }
        throw new IllegalArgumentException("Fragment " + k4 + " is not an active fragment of FragmentManager " + this);
    }

    public final void Z(K k4) {
        ViewGroup D3 = D(k4);
        if (D3 != null) {
            if (k4.getPopExitAnim() + k4.getPopEnterAnim() + k4.getExitAnim() + k4.getEnterAnim() > 0) {
                if (D3.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    D3.setTag(R.id.visible_removing_fragment_view_tag, k4);
                }
                ((K) D3.getTag(R.id.visible_removing_fragment_view_tag)).setPopDirection(k4.getPopDirection());
            }
        }
    }

    public final z0 a(K k4) {
        String str = k4.mPreviousWho;
        if (str != null) {
            T.c.d(k4, str);
        }
        if (H(2)) {
            Log.v("FragmentManager", "add: " + k4);
        }
        z0 f4 = f(k4);
        k4.mFragmentManager = this;
        A0 a02 = this.f3466c;
        a02.g(f4);
        if (!k4.mDetached) {
            a02.a(k4);
            k4.mRemoving = false;
            if (k4.mView == null) {
                k4.mHiddenChanged = false;
            }
            if (I(k4)) {
                this.f3454E = true;
            }
        }
        return f4;
    }

    public final void b(W w4, U u4, K k4) {
        String str;
        if (this.f3484u != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f3484u = w4;
        this.f3485v = u4;
        this.f3486w = k4;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f3477n;
        if (k4 != null) {
            copyOnWriteArrayList.add(new C0208j0(k4));
        } else if (w4 instanceof v0) {
            copyOnWriteArrayList.add((v0) w4);
        }
        if (this.f3486w != null) {
            d0();
        }
        if (w4 instanceof androidx.activity.t) {
            androidx.activity.t tVar = (androidx.activity.t) w4;
            androidx.activity.s onBackPressedDispatcher = tVar.getOnBackPressedDispatcher();
            this.f3470g = onBackPressedDispatcher;
            InterfaceC0251q interfaceC0251q = tVar;
            if (k4 != null) {
                interfaceC0251q = k4;
            }
            onBackPressedDispatcher.a(interfaceC0251q, this.f3471h);
        }
        if (k4 != null) {
            C0229u0 c0229u0 = k4.mFragmentManager.f3462M;
            HashMap hashMap = c0229u0.f3514e;
            C0229u0 c0229u02 = (C0229u0) hashMap.get(k4.mWho);
            if (c0229u02 == null) {
                c0229u02 = new C0229u0(c0229u0.f3516g);
                hashMap.put(k4.mWho, c0229u02);
            }
            this.f3462M = c0229u02;
        } else if (w4 instanceof androidx.lifecycle.V) {
            this.f3462M = (C0229u0) new androidx.lifecycle.T(((androidx.lifecycle.V) w4).getViewModelStore(), C0229u0.f3512j).a(C0229u0.class);
        } else {
            this.f3462M = new C0229u0(false);
        }
        this.f3462M.f3518i = L();
        this.f3466c.f3233d = this.f3462M;
        W w5 = this.f3484u;
        if ((w5 instanceof InterfaceC0154g) && k4 == null) {
            C0152e savedStateRegistry = ((InterfaceC0154g) w5).getSavedStateRegistry();
            savedStateRegistry.c("android:support:fragments", new InterfaceC0151d() { // from class: androidx.fragment.app.c0
                @Override // a0.InterfaceC0151d
                public final Bundle a() {
                    return AbstractC0220p0.this.U();
                }
            });
            Bundle a4 = savedStateRegistry.a("android:support:fragments");
            if (a4 != null) {
                T(a4);
            }
        }
        W w6 = this.f3484u;
        if (w6 instanceof androidx.activity.result.i) {
            androidx.activity.result.h activityResultRegistry = ((androidx.activity.result.i) w6).getActivityResultRegistry();
            if (k4 != null) {
                str = k4.mWho + ":";
            } else {
                str = "";
            }
            String a5 = androidx.constraintlayout.widget.j.a("FragmentManager:", str);
            this.f3450A = activityResultRegistry.d(C1391a.a(a5, "StartActivityForResult"), new C0320d(), new C0198e0(this, 2));
            this.f3451B = activityResultRegistry.d(C1391a.a(a5, "StartIntentSenderForResult"), new C0210k0(), new C0198e0(this, 3));
            this.f3452C = activityResultRegistry.d(C1391a.a(a5, "RequestPermissions"), new C0319c(), new C0198e0(this, 0));
        }
        W w7 = this.f3484u;
        if (w7 instanceof C.c) {
            ((C.c) w7).addOnConfigurationChangedListener(this.f3478o);
        }
        W w8 = this.f3484u;
        if (w8 instanceof C.d) {
            ((C.d) w8).addOnTrimMemoryListener(this.f3479p);
        }
        W w9 = this.f3484u;
        if (w9 instanceof B.i) {
            ((B.i) w9).addOnMultiWindowModeChangedListener(this.f3480q);
        }
        W w10 = this.f3484u;
        if (w10 instanceof B.j) {
            ((B.j) w10).addOnPictureInPictureModeChangedListener(this.f3481r);
        }
        W w11 = this.f3484u;
        if ((w11 instanceof InterfaceC0169f) && k4 == null) {
            ((InterfaceC0169f) w11).addMenuProvider(this.f3482s);
        }
    }

    public final void b0() {
        Iterator it = ((ArrayList) this.f3466c.d()).iterator();
        while (it.hasNext()) {
            z0 z0Var = (z0) it.next();
            K k4 = z0Var.f3543c;
            if (k4.mDeferStart) {
                if (this.f3465b) {
                    this.f3458I = true;
                } else {
                    k4.mDeferStart = false;
                    z0Var.k();
                }
            }
        }
    }

    public final void c(K k4) {
        if (H(2)) {
            Log.v("FragmentManager", "attach: " + k4);
        }
        if (k4.mDetached) {
            k4.mDetached = false;
            if (k4.mAdded) {
                return;
            }
            this.f3466c.a(k4);
            if (H(2)) {
                Log.v("FragmentManager", "add from attach: " + k4);
            }
            if (I(k4)) {
                this.f3454E = true;
            }
        }
    }

    public final void c0(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new N0());
        W w4 = this.f3484u;
        if (w4 != null) {
            try {
                w4.d(printWriter, new String[0]);
            } catch (Exception e4) {
                Log.e("FragmentManager", "Failed dumping state", e4);
            }
        } else {
            try {
                u("  ", null, printWriter, new String[0]);
            } catch (Exception e5) {
                Log.e("FragmentManager", "Failed dumping state", e5);
            }
        }
        throw runtimeException;
    }

    public final void d() {
        this.f3465b = false;
        this.f3460K.clear();
        this.f3459J.clear();
    }

    public final void d0() {
        synchronized (this.f3464a) {
            try {
                boolean z4 = true;
                if (!this.f3464a.isEmpty()) {
                    C0200f0 c0200f0 = this.f3471h;
                    c0200f0.f2446a = true;
                    m3.a aVar = c0200f0.f2448c;
                    if (aVar != null) {
                        aVar.invoke();
                    }
                    return;
                }
                C0200f0 c0200f02 = this.f3471h;
                ArrayList arrayList = this.f3467d;
                if ((arrayList != null ? arrayList.size() : 0) <= 0 || !K(this.f3486w)) {
                    z4 = false;
                }
                c0200f02.f2446a = z4;
                m3.a aVar2 = c0200f02.f2448c;
                if (aVar2 != null) {
                    aVar2.invoke();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Set e() {
        Object c0221q;
        HashSet hashSet = new HashSet();
        Iterator it = ((ArrayList) this.f3466c.d()).iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((z0) it.next()).f3543c.mContainer;
            if (viewGroup != null) {
                C0198e0 factory = F();
                kotlin.jvm.internal.h.e(factory, "factory");
                Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
                if (tag instanceof U0) {
                    c0221q = (U0) tag;
                } else {
                    c0221q = new C0221q(viewGroup);
                    viewGroup.setTag(R.id.special_effects_controller_view_tag, c0221q);
                }
                hashSet.add(c0221q);
            }
        }
        return hashSet;
    }

    public final z0 f(K k4) {
        String str = k4.mWho;
        A0 a02 = this.f3466c;
        z0 z0Var = (z0) a02.f3231b.get(str);
        if (z0Var != null) {
            return z0Var;
        }
        z0 z0Var2 = new z0(this.f3476m, a02, k4);
        z0Var2.l(this.f3484u.f3356e.getClassLoader());
        z0Var2.f3545e = this.f3483t;
        return z0Var2;
    }

    public final void g(K k4) {
        if (H(2)) {
            Log.v("FragmentManager", "detach: " + k4);
        }
        if (k4.mDetached) {
            return;
        }
        k4.mDetached = true;
        if (k4.mAdded) {
            if (H(2)) {
                Log.v("FragmentManager", "remove from detach: " + k4);
            }
            A0 a02 = this.f3466c;
            synchronized (a02.f3230a) {
                a02.f3230a.remove(k4);
            }
            k4.mAdded = false;
            if (I(k4)) {
                this.f3454E = true;
            }
            Z(k4);
        }
    }

    public final void h(boolean z4, Configuration configuration) {
        if (z4 && (this.f3484u instanceof C.c)) {
            c0(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (K k4 : this.f3466c.f()) {
            if (k4 != null) {
                k4.performConfigurationChanged(configuration);
                if (z4) {
                    k4.mChildFragmentManager.h(true, configuration);
                }
            }
        }
    }

    public final boolean i(MenuItem menuItem) {
        if (this.f3483t < 1) {
            return false;
        }
        for (K k4 : this.f3466c.f()) {
            if (k4 != null && k4.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final boolean j(Menu menu, MenuInflater menuInflater) {
        if (this.f3483t < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z4 = false;
        for (K k4 : this.f3466c.f()) {
            if (k4 != null && k4.isMenuVisible() && k4.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(k4);
                z4 = true;
            }
        }
        if (this.f3468e != null) {
            for (int i4 = 0; i4 < this.f3468e.size(); i4++) {
                K k5 = (K) this.f3468e.get(i4);
                if (arrayList == null || !arrayList.contains(k5)) {
                    k5.onDestroyOptionsMenu();
                }
            }
        }
        this.f3468e = arrayList;
        return z4;
    }

    public final void k() {
        boolean z4 = true;
        this.f3457H = true;
        x(true);
        Iterator it = ((HashSet) e()).iterator();
        while (it.hasNext()) {
            ((U0) it.next()).i();
        }
        W w4 = this.f3484u;
        boolean z5 = w4 instanceof androidx.lifecycle.V;
        A0 a02 = this.f3466c;
        if (z5) {
            z4 = a02.f3233d.f3517h;
        } else {
            Context context = w4.f3356e;
            if (context instanceof Activity) {
                z4 = true ^ ((Activity) context).isChangingConfigurations();
            }
        }
        if (z4) {
            for (C0197e c0197e : this.f3473j.values()) {
                for (String str : c0197e.f3401d) {
                    C0229u0 c0229u0 = a02.f3233d;
                    c0229u0.getClass();
                    if (H(3)) {
                        Log.d("FragmentManager", "Clearing non-config state for saved state of Fragment " + str);
                    }
                    c0229u0.e(str);
                }
            }
        }
        t(-1);
        W w5 = this.f3484u;
        if (w5 instanceof C.d) {
            ((C.d) w5).removeOnTrimMemoryListener(this.f3479p);
        }
        W w6 = this.f3484u;
        if (w6 instanceof C.c) {
            ((C.c) w6).removeOnConfigurationChangedListener(this.f3478o);
        }
        W w7 = this.f3484u;
        if (w7 instanceof B.i) {
            ((B.i) w7).removeOnMultiWindowModeChangedListener(this.f3480q);
        }
        W w8 = this.f3484u;
        if (w8 instanceof B.j) {
            ((B.j) w8).removeOnPictureInPictureModeChangedListener(this.f3481r);
        }
        W w9 = this.f3484u;
        if ((w9 instanceof InterfaceC0169f) && this.f3486w == null) {
            ((InterfaceC0169f) w9).removeMenuProvider(this.f3482s);
        }
        this.f3484u = null;
        this.f3485v = null;
        this.f3486w = null;
        if (this.f3470g != null) {
            Iterator it2 = this.f3471h.f2447b.iterator();
            while (it2.hasNext()) {
                ((androidx.activity.a) it2.next()).cancel();
            }
            this.f3470g = null;
        }
        androidx.activity.result.e eVar = this.f3450A;
        if (eVar != null) {
            eVar.b();
            this.f3451B.b();
            this.f3452C.b();
        }
    }

    public final void l(boolean z4) {
        if (z4 && (this.f3484u instanceof C.d)) {
            c0(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (K k4 : this.f3466c.f()) {
            if (k4 != null) {
                k4.performLowMemory();
                if (z4) {
                    k4.mChildFragmentManager.l(true);
                }
            }
        }
    }

    public final void m(boolean z4, boolean z5) {
        if (z5 && (this.f3484u instanceof B.i)) {
            c0(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (K k4 : this.f3466c.f()) {
            if (k4 != null) {
                k4.performMultiWindowModeChanged(z4);
                if (z5) {
                    k4.mChildFragmentManager.m(z4, true);
                }
            }
        }
    }

    public final void n() {
        Iterator it = ((ArrayList) this.f3466c.e()).iterator();
        while (it.hasNext()) {
            K k4 = (K) it.next();
            if (k4 != null) {
                k4.onHiddenChanged(k4.isHidden());
                k4.mChildFragmentManager.n();
            }
        }
    }

    public final boolean o(MenuItem menuItem) {
        if (this.f3483t < 1) {
            return false;
        }
        for (K k4 : this.f3466c.f()) {
            if (k4 != null && k4.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final void p(Menu menu) {
        if (this.f3483t < 1) {
            return;
        }
        for (K k4 : this.f3466c.f()) {
            if (k4 != null) {
                k4.performOptionsMenuClosed(menu);
            }
        }
    }

    public final void q(K k4) {
        if (k4 == null || !k4.equals(A(k4.mWho))) {
            return;
        }
        k4.performPrimaryNavigationFragmentChanged();
    }

    public final void r(boolean z4, boolean z5) {
        if (z5 && (this.f3484u instanceof B.j)) {
            c0(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (K k4 : this.f3466c.f()) {
            if (k4 != null) {
                k4.performPictureInPictureModeChanged(z4);
                if (z5) {
                    k4.mChildFragmentManager.r(z4, true);
                }
            }
        }
    }

    public final boolean s(Menu menu) {
        boolean z4 = false;
        if (this.f3483t < 1) {
            return false;
        }
        for (K k4 : this.f3466c.f()) {
            if (k4 != null && k4.isMenuVisible() && k4.performPrepareOptionsMenu(menu)) {
                z4 = true;
            }
        }
        return z4;
    }

    public final void t(int i4) {
        try {
            this.f3465b = true;
            for (z0 z0Var : this.f3466c.f3231b.values()) {
                if (z0Var != null) {
                    z0Var.f3545e = i4;
                }
            }
            M(i4, false);
            Iterator it = ((HashSet) e()).iterator();
            while (it.hasNext()) {
                ((U0) it.next()).i();
            }
            this.f3465b = false;
            x(true);
        } catch (Throwable th) {
            this.f3465b = false;
            throw th;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        K k4 = this.f3486w;
        if (k4 != null) {
            sb.append(k4.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f3486w)));
            sb.append("}");
        } else {
            W w4 = this.f3484u;
            if (w4 != null) {
                sb.append(w4.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f3484u)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void u(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String a4 = C1391a.a(str, "    ");
        A0 a02 = this.f3466c;
        a02.getClass();
        String str2 = str + "    ";
        HashMap hashMap = a02.f3231b;
        if (!hashMap.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (z0 z0Var : hashMap.values()) {
                printWriter.print(str);
                if (z0Var != null) {
                    K k4 = z0Var.f3543c;
                    printWriter.println(k4);
                    k4.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        ArrayList arrayList = a02.f3230a;
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i4 = 0; i4 < size3; i4++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(((K) arrayList.get(i4)).toString());
            }
        }
        ArrayList arrayList2 = this.f3468e;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i5 = 0; i5 < size2; i5++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println(((K) this.f3468e.get(i5)).toString());
            }
        }
        ArrayList arrayList3 = this.f3467d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i6 = 0; i6 < size; i6++) {
                C0189a c0189a = (C0189a) this.f3467d.get(i6);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i6);
                printWriter.print(": ");
                printWriter.println(c0189a.toString());
                c0189a.f(a4, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f3472i.get());
        synchronized (this.f3464a) {
            int size4 = this.f3464a.size();
            if (size4 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i7 = 0; i7 < size4; i7++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i7);
                    printWriter.print(": ");
                    printWriter.println((InterfaceC0216n0) this.f3464a.get(i7));
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f3484u);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f3485v);
        if (this.f3486w != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f3486w);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f3483t);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f3455F);
        printWriter.print(" mStopped=");
        printWriter.print(this.f3456G);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f3457H);
        if (this.f3454E) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f3454E);
        }
    }

    public final void v(InterfaceC0216n0 interfaceC0216n0, boolean z4) {
        if (!z4) {
            if (this.f3484u == null) {
                if (!this.f3457H) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            } else if (L()) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f3464a) {
            if (this.f3484u == null) {
                if (!z4) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
                return;
            }
            this.f3464a.add(interfaceC0216n0);
            V();
        }
    }

    public final void w(boolean z4) {
        if (this.f3465b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f3484u == null) {
            if (!this.f3457H) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        } else if (Looper.myLooper() != this.f3484u.f3357f.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        } else {
            if (!z4 && L()) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
            if (this.f3459J == null) {
                this.f3459J = new ArrayList();
                this.f3460K = new ArrayList();
            }
        }
    }

    public final boolean x(boolean z4) {
        boolean z5;
        w(z4);
        boolean z6 = false;
        while (true) {
            ArrayList arrayList = this.f3459J;
            ArrayList arrayList2 = this.f3460K;
            synchronized (this.f3464a) {
                if (this.f3464a.isEmpty()) {
                    z5 = false;
                } else {
                    int size = this.f3464a.size();
                    z5 = false;
                    for (int i4 = 0; i4 < size; i4++) {
                        z5 |= ((InterfaceC0216n0) this.f3464a.get(i4)).a(arrayList, arrayList2);
                    }
                    this.f3464a.clear();
                    this.f3484u.f3357f.removeCallbacks(this.f3463N);
                }
            }
            if (!z5) {
                break;
            }
            z6 = true;
            this.f3465b = true;
            try {
                S(this.f3459J, this.f3460K);
            } finally {
                d();
            }
        }
        d0();
        if (this.f3458I) {
            this.f3458I = false;
            b0();
        }
        this.f3466c.f3231b.values().removeAll(Collections.singleton(null));
        return z6;
    }

    public final void y(InterfaceC0216n0 interfaceC0216n0, boolean z4) {
        if (z4 && (this.f3484u == null || this.f3457H)) {
            return;
        }
        w(z4);
        if (interfaceC0216n0.a(this.f3459J, this.f3460K)) {
            this.f3465b = true;
            try {
                S(this.f3459J, this.f3460K);
            } finally {
                d();
            }
        }
        d0();
        if (this.f3458I) {
            this.f3458I = false;
            b0();
        }
        this.f3466c.f3231b.values().removeAll(Collections.singleton(null));
    }

    public final void z(ArrayList arrayList, ArrayList arrayList2, int i4, int i5) {
        ViewGroup viewGroup;
        A0 a02;
        A0 a03;
        A0 a04;
        int i6;
        ArrayList arrayList3 = arrayList;
        ArrayList arrayList4 = arrayList2;
        boolean z4 = ((C0189a) arrayList3.get(i4)).f3377p;
        ArrayList arrayList5 = this.f3461L;
        if (arrayList5 == null) {
            this.f3461L = new ArrayList();
        } else {
            arrayList5.clear();
        }
        ArrayList arrayList6 = this.f3461L;
        A0 a05 = this.f3466c;
        arrayList6.addAll(a05.f());
        K k4 = this.f3487x;
        int i7 = i4;
        boolean z5 = false;
        while (true) {
            int i8 = 1;
            if (i7 >= i5) {
                A0 a06 = a05;
                this.f3461L.clear();
                if (!z4 && this.f3483t >= 1) {
                    for (int i9 = i4; i9 < i5; i9++) {
                        Iterator it = ((C0189a) arrayList.get(i9)).f3362a.iterator();
                        while (it.hasNext()) {
                            K k5 = ((B0) it.next()).f3235b;
                            if (k5 == null || k5.mFragmentManager == null) {
                                a02 = a06;
                            } else {
                                a02 = a06;
                                a02.g(f(k5));
                            }
                            a06 = a02;
                        }
                    }
                }
                for (int i10 = i4; i10 < i5; i10++) {
                    C0189a c0189a = (C0189a) arrayList.get(i10);
                    if (((Boolean) arrayList2.get(i10)).booleanValue()) {
                        c0189a.c(-1);
                        ArrayList arrayList7 = c0189a.f3362a;
                        boolean z6 = true;
                        int size = arrayList7.size() - 1;
                        while (size >= 0) {
                            B0 b02 = (B0) arrayList7.get(size);
                            K k6 = b02.f3235b;
                            if (k6 != null) {
                                k6.mBeingSaved = false;
                                k6.setPopDirection(z6);
                                int i11 = c0189a.f3367f;
                                int i12 = 8194;
                                int i13 = 4097;
                                if (i11 != 4097) {
                                    if (i11 != 8194) {
                                        i12 = 8197;
                                        i13 = 4100;
                                        if (i11 != 8197) {
                                            if (i11 == 4099) {
                                                i12 = 4099;
                                            } else if (i11 != 4100) {
                                                i12 = 0;
                                            }
                                        }
                                    }
                                    i12 = i13;
                                }
                                k6.setNextTransition(i12);
                                k6.setSharedElementNames(c0189a.f3376o, c0189a.f3375n);
                            }
                            int i14 = b02.f3234a;
                            AbstractC0220p0 abstractC0220p0 = c0189a.f3379r;
                            switch (i14) {
                                case 1:
                                    k6.setAnimations(b02.f3237d, b02.f3238e, b02.f3239f, b02.f3240g);
                                    abstractC0220p0.W(k6, true);
                                    abstractC0220p0.R(k6);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + b02.f3234a);
                                case 3:
                                    k6.setAnimations(b02.f3237d, b02.f3238e, b02.f3239f, b02.f3240g);
                                    abstractC0220p0.a(k6);
                                    break;
                                case 4:
                                    k6.setAnimations(b02.f3237d, b02.f3238e, b02.f3239f, b02.f3240g);
                                    abstractC0220p0.getClass();
                                    a0(k6);
                                    break;
                                case 5:
                                    k6.setAnimations(b02.f3237d, b02.f3238e, b02.f3239f, b02.f3240g);
                                    abstractC0220p0.W(k6, true);
                                    abstractC0220p0.G(k6);
                                    break;
                                case 6:
                                    k6.setAnimations(b02.f3237d, b02.f3238e, b02.f3239f, b02.f3240g);
                                    abstractC0220p0.c(k6);
                                    break;
                                case 7:
                                    k6.setAnimations(b02.f3237d, b02.f3238e, b02.f3239f, b02.f3240g);
                                    abstractC0220p0.W(k6, true);
                                    abstractC0220p0.g(k6);
                                    break;
                                case 8:
                                    abstractC0220p0.Y(null);
                                    break;
                                case 9:
                                    abstractC0220p0.Y(k6);
                                    break;
                                case 10:
                                    abstractC0220p0.X(k6, b02.f3241h);
                                    break;
                            }
                            size--;
                            z6 = true;
                        }
                        continue;
                    } else {
                        c0189a.c(1);
                        ArrayList arrayList8 = c0189a.f3362a;
                        int size2 = arrayList8.size();
                        for (int i15 = 0; i15 < size2; i15++) {
                            B0 b03 = (B0) arrayList8.get(i15);
                            K k7 = b03.f3235b;
                            if (k7 != null) {
                                k7.mBeingSaved = false;
                                k7.setPopDirection(false);
                                k7.setNextTransition(c0189a.f3367f);
                                k7.setSharedElementNames(c0189a.f3375n, c0189a.f3376o);
                            }
                            int i16 = b03.f3234a;
                            AbstractC0220p0 abstractC0220p02 = c0189a.f3379r;
                            switch (i16) {
                                case 1:
                                    k7.setAnimations(b03.f3237d, b03.f3238e, b03.f3239f, b03.f3240g);
                                    abstractC0220p02.W(k7, false);
                                    abstractC0220p02.a(k7);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + b03.f3234a);
                                case 3:
                                    k7.setAnimations(b03.f3237d, b03.f3238e, b03.f3239f, b03.f3240g);
                                    abstractC0220p02.R(k7);
                                    break;
                                case 4:
                                    k7.setAnimations(b03.f3237d, b03.f3238e, b03.f3239f, b03.f3240g);
                                    abstractC0220p02.G(k7);
                                    break;
                                case 5:
                                    k7.setAnimations(b03.f3237d, b03.f3238e, b03.f3239f, b03.f3240g);
                                    abstractC0220p02.W(k7, false);
                                    a0(k7);
                                    break;
                                case 6:
                                    k7.setAnimations(b03.f3237d, b03.f3238e, b03.f3239f, b03.f3240g);
                                    abstractC0220p02.g(k7);
                                    break;
                                case 7:
                                    k7.setAnimations(b03.f3237d, b03.f3238e, b03.f3239f, b03.f3240g);
                                    abstractC0220p02.W(k7, false);
                                    abstractC0220p02.c(k7);
                                    break;
                                case 8:
                                    abstractC0220p02.Y(k7);
                                    break;
                                case 9:
                                    abstractC0220p02.Y(null);
                                    break;
                                case 10:
                                    abstractC0220p02.X(k7, b03.f3242i);
                                    break;
                            }
                        }
                        continue;
                    }
                }
                boolean booleanValue = ((Boolean) arrayList2.get(i5 - 1)).booleanValue();
                for (int i17 = i4; i17 < i5; i17++) {
                    C0189a c0189a2 = (C0189a) arrayList.get(i17);
                    if (booleanValue) {
                        for (int size3 = c0189a2.f3362a.size() - 1; size3 >= 0; size3--) {
                            K k8 = ((B0) c0189a2.f3362a.get(size3)).f3235b;
                            if (k8 != null) {
                                f(k8).k();
                            }
                        }
                    } else {
                        Iterator it2 = c0189a2.f3362a.iterator();
                        while (it2.hasNext()) {
                            K k9 = ((B0) it2.next()).f3235b;
                            if (k9 != null) {
                                f(k9).k();
                            }
                        }
                    }
                }
                M(this.f3483t, true);
                HashSet hashSet = new HashSet();
                for (int i18 = i4; i18 < i5; i18++) {
                    Iterator it3 = ((C0189a) arrayList.get(i18)).f3362a.iterator();
                    while (it3.hasNext()) {
                        K k10 = ((B0) it3.next()).f3235b;
                        if (k10 != null && (viewGroup = k10.mContainer) != null) {
                            hashSet.add(U0.j(viewGroup, this));
                        }
                    }
                }
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    U0 u02 = (U0) it4.next();
                    u02.f3352d = booleanValue;
                    u02.k();
                    u02.g();
                }
                for (int i19 = i4; i19 < i5; i19++) {
                    C0189a c0189a3 = (C0189a) arrayList.get(i19);
                    if (((Boolean) arrayList2.get(i19)).booleanValue() && c0189a3.f3381t >= 0) {
                        c0189a3.f3381t = -1;
                    }
                    if (c0189a3.f3378q != null) {
                        for (int i20 = 0; i20 < c0189a3.f3378q.size(); i20++) {
                            ((Runnable) c0189a3.f3378q.get(i20)).run();
                        }
                        c0189a3.f3378q = null;
                    }
                }
                return;
            }
            C0189a c0189a4 = (C0189a) arrayList3.get(i7);
            if (((Boolean) arrayList4.get(i7)).booleanValue()) {
                a03 = a05;
                int i21 = 1;
                ArrayList arrayList9 = this.f3461L;
                ArrayList arrayList10 = c0189a4.f3362a;
                int size4 = arrayList10.size() - 1;
                while (size4 >= 0) {
                    B0 b04 = (B0) arrayList10.get(size4);
                    int i22 = b04.f3234a;
                    if (i22 != i21) {
                        if (i22 != 3) {
                            switch (i22) {
                                case 8:
                                    k4 = null;
                                    break;
                                case 9:
                                    k4 = b04.f3235b;
                                    break;
                                case 10:
                                    b04.f3242i = b04.f3241h;
                                    break;
                            }
                            size4--;
                            i21 = 1;
                        }
                        arrayList9.add(b04.f3235b);
                        size4--;
                        i21 = 1;
                    }
                    arrayList9.remove(b04.f3235b);
                    size4--;
                    i21 = 1;
                }
            } else {
                ArrayList arrayList11 = this.f3461L;
                int i23 = 0;
                while (true) {
                    ArrayList arrayList12 = c0189a4.f3362a;
                    if (i23 < arrayList12.size()) {
                        B0 b05 = (B0) arrayList12.get(i23);
                        int i24 = b05.f3234a;
                        if (i24 != i8) {
                            if (i24 != 2) {
                                if (i24 == 3 || i24 == 6) {
                                    arrayList11.remove(b05.f3235b);
                                    K k11 = b05.f3235b;
                                    if (k11 == k4) {
                                        arrayList12.add(i23, new B0(k11, 9));
                                        i23++;
                                        a04 = a05;
                                        i6 = 1;
                                        k4 = null;
                                    }
                                } else if (i24 == 7) {
                                    a04 = a05;
                                    i6 = 1;
                                } else if (i24 == 8) {
                                    arrayList12.add(i23, new B0(9, k4));
                                    b05.f3236c = true;
                                    i23++;
                                    k4 = b05.f3235b;
                                }
                                a04 = a05;
                                i6 = 1;
                            } else {
                                K k12 = b05.f3235b;
                                int i25 = k12.mContainerId;
                                int size5 = arrayList11.size() - 1;
                                boolean z7 = false;
                                while (size5 >= 0) {
                                    A0 a07 = a05;
                                    K k13 = (K) arrayList11.get(size5);
                                    if (k13.mContainerId == i25) {
                                        if (k13 == k12) {
                                            z7 = true;
                                        } else {
                                            if (k13 == k4) {
                                                arrayList12.add(i23, new B0(9, k13));
                                                i23++;
                                                k4 = null;
                                            }
                                            B0 b06 = new B0(3, k13);
                                            b06.f3237d = b05.f3237d;
                                            b06.f3239f = b05.f3239f;
                                            b06.f3238e = b05.f3238e;
                                            b06.f3240g = b05.f3240g;
                                            arrayList12.add(i23, b06);
                                            arrayList11.remove(k13);
                                            i23++;
                                            k4 = k4;
                                        }
                                    }
                                    size5--;
                                    a05 = a07;
                                }
                                a04 = a05;
                                i6 = 1;
                                if (z7) {
                                    arrayList12.remove(i23);
                                    i23--;
                                } else {
                                    b05.f3234a = 1;
                                    b05.f3236c = true;
                                    arrayList11.add(k12);
                                }
                            }
                            i23 += i6;
                            i8 = i6;
                            a05 = a04;
                        } else {
                            a04 = a05;
                            i6 = i8;
                        }
                        arrayList11.add(b05.f3235b);
                        i23 += i6;
                        i8 = i6;
                        a05 = a04;
                    } else {
                        a03 = a05;
                    }
                }
            }
            z5 = z5 || c0189a4.f3368g;
            i7++;
            arrayList3 = arrayList;
            arrayList4 = arrayList2;
            a05 = a03;
        }
    }
}
