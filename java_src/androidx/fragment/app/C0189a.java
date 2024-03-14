package androidx.fragment.app;

import android.util.Log;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0189a implements InterfaceC0216n0 {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f3362a;

    /* renamed from: b  reason: collision with root package name */
    public int f3363b;

    /* renamed from: c  reason: collision with root package name */
    public int f3364c;

    /* renamed from: d  reason: collision with root package name */
    public int f3365d;

    /* renamed from: e  reason: collision with root package name */
    public int f3366e;

    /* renamed from: f  reason: collision with root package name */
    public int f3367f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3368g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f3369h;

    /* renamed from: i  reason: collision with root package name */
    public String f3370i;

    /* renamed from: j  reason: collision with root package name */
    public int f3371j;

    /* renamed from: k  reason: collision with root package name */
    public CharSequence f3372k;

    /* renamed from: l  reason: collision with root package name */
    public int f3373l;

    /* renamed from: m  reason: collision with root package name */
    public CharSequence f3374m;

    /* renamed from: n  reason: collision with root package name */
    public ArrayList f3375n;

    /* renamed from: o  reason: collision with root package name */
    public ArrayList f3376o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f3377p;

    /* renamed from: q  reason: collision with root package name */
    public ArrayList f3378q;

    /* renamed from: r  reason: collision with root package name */
    public final AbstractC0220p0 f3379r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f3380s;

    /* renamed from: t  reason: collision with root package name */
    public int f3381t;

    public C0189a(AbstractC0220p0 abstractC0220p0) {
        abstractC0220p0.E();
        W w4 = abstractC0220p0.f3484u;
        if (w4 != null) {
            w4.f3356e.getClassLoader();
        }
        this.f3362a = new ArrayList();
        this.f3369h = true;
        this.f3377p = false;
        this.f3381t = -1;
        this.f3379r = abstractC0220p0;
    }

    @Override // androidx.fragment.app.InterfaceC0216n0
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (this.f3368g) {
            AbstractC0220p0 abstractC0220p0 = this.f3379r;
            if (abstractC0220p0.f3467d == null) {
                abstractC0220p0.f3467d = new ArrayList();
            }
            abstractC0220p0.f3467d.add(this);
            return true;
        }
        return true;
    }

    public final void b(B0 b02) {
        this.f3362a.add(b02);
        b02.f3237d = this.f3363b;
        b02.f3238e = this.f3364c;
        b02.f3239f = this.f3365d;
        b02.f3240g = this.f3366e;
    }

    public final void c(int i4) {
        B0 b02;
        if (this.f3368g) {
            if (AbstractC0220p0.H(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i4);
            }
            ArrayList arrayList = this.f3362a;
            int size = arrayList.size();
            for (int i5 = 0; i5 < size; i5++) {
                K k4 = ((B0) arrayList.get(i5)).f3235b;
                if (k4 != null) {
                    k4.mBackStackNesting += i4;
                    if (AbstractC0220p0.H(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + b02.f3235b + " to " + b02.f3235b.mBackStackNesting);
                    }
                }
            }
        }
    }

    public final int d(boolean z4) {
        if (this.f3380s) {
            throw new IllegalStateException("commit already called");
        }
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new N0());
            f("  ", printWriter, true);
            printWriter.close();
        }
        this.f3380s = true;
        boolean z5 = this.f3368g;
        AbstractC0220p0 abstractC0220p0 = this.f3379r;
        if (z5) {
            this.f3381t = abstractC0220p0.f3472i.getAndIncrement();
        } else {
            this.f3381t = -1;
        }
        abstractC0220p0.v(this, z4);
        return this.f3381t;
    }

    public final void e(int i4, K k4, String str, int i5) {
        String str2 = k4.mPreviousWho;
        if (str2 != null) {
            T.c.d(k4, str2);
        }
        Class<?> cls = k4.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = k4.mTag;
            if (str3 != null && !str.equals(str3)) {
                throw new IllegalStateException("Can't change tag of fragment " + k4 + ": was " + k4.mTag + " now " + str);
            }
            k4.mTag = str;
        }
        if (i4 != 0) {
            if (i4 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + k4 + " with tag " + str + " to container view with no id");
            }
            int i6 = k4.mFragmentId;
            if (i6 != 0 && i6 != i4) {
                throw new IllegalStateException("Can't change container ID of fragment " + k4 + ": was " + k4.mFragmentId + " now " + i4);
            }
            k4.mFragmentId = i4;
            k4.mContainerId = i4;
        }
        b(new B0(k4, i5));
        k4.mFragmentManager = this.f3379r;
    }

    public final void f(String str, PrintWriter printWriter, boolean z4) {
        String str2;
        if (z4) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f3370i);
            printWriter.print(" mIndex=");
            printWriter.print(this.f3381t);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f3380s);
            if (this.f3367f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f3367f));
            }
            if (this.f3363b != 0 || this.f3364c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f3363b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f3364c));
            }
            if (this.f3365d != 0 || this.f3366e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f3365d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f3366e));
            }
            if (this.f3371j != 0 || this.f3372k != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f3371j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f3372k);
            }
            if (this.f3373l != 0 || this.f3374m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f3373l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f3374m);
            }
        }
        ArrayList arrayList = this.f3362a;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            B0 b02 = (B0) arrayList.get(i4);
            switch (b02.f3234a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + b02.f3234a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i4);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(b02.f3235b);
            if (z4) {
                if (b02.f3237d != 0 || b02.f3238e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(b02.f3237d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(b02.f3238e));
                }
                if (b02.f3239f != 0 || b02.f3240g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(b02.f3239f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(b02.f3240g));
                }
            }
        }
    }

    public final void g(K k4, int i4) {
        if (i4 == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        e(i4, k4, null, 2);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f3381t >= 0) {
            sb.append(" #");
            sb.append(this.f3381t);
        }
        if (this.f3370i != null) {
            sb.append(" ");
            sb.append(this.f3370i);
        }
        sb.append("}");
        return sb.toString();
    }
}
