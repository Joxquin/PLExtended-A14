package g0;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import androidx.core.view.C0186x;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import q.C1355f;
/* loaded from: classes.dex */
public abstract class x implements Cloneable {

    /* renamed from: n  reason: collision with root package name */
    public ArrayList f9461n;

    /* renamed from: o  reason: collision with root package name */
    public ArrayList f9462o;

    /* renamed from: p  reason: collision with root package name */
    public InterfaceC0951u[] f9463p;

    /* renamed from: w  reason: collision with root package name */
    public AbstractC0950t f9470w;

    /* renamed from: y  reason: collision with root package name */
    public static final int[] f9449y = {2, 1, 3, 4};

    /* renamed from: z  reason: collision with root package name */
    public static final C0947p f9450z = new C0947p();

    /* renamed from: A  reason: collision with root package name */
    public static final ThreadLocal f9448A = new ThreadLocal();

    /* renamed from: d  reason: collision with root package name */
    public final String f9451d = getClass().getName();

    /* renamed from: e  reason: collision with root package name */
    public long f9452e = -1;

    /* renamed from: f  reason: collision with root package name */
    public long f9453f = -1;

    /* renamed from: g  reason: collision with root package name */
    public TimeInterpolator f9454g = null;

    /* renamed from: h  reason: collision with root package name */
    public final ArrayList f9455h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    public final ArrayList f9456i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    public G f9457j = new G();

    /* renamed from: k  reason: collision with root package name */
    public G f9458k = new G();

    /* renamed from: l  reason: collision with root package name */
    public E f9459l = null;

    /* renamed from: m  reason: collision with root package name */
    public final int[] f9460m = f9449y;

    /* renamed from: q  reason: collision with root package name */
    public final ArrayList f9464q = new ArrayList();

    /* renamed from: r  reason: collision with root package name */
    public int f9465r = 0;

    /* renamed from: s  reason: collision with root package name */
    public boolean f9466s = false;

    /* renamed from: t  reason: collision with root package name */
    public boolean f9467t = false;

    /* renamed from: u  reason: collision with root package name */
    public ArrayList f9468u = null;

    /* renamed from: v  reason: collision with root package name */
    public ArrayList f9469v = new ArrayList();

    /* renamed from: x  reason: collision with root package name */
    public C0947p f9471x = f9450z;

    public static void c(G g4, View view, F f4) {
        g4.f9377a.put(view, f4);
        int id = view.getId();
        if (id >= 0) {
            SparseArray sparseArray = g4.f9378b;
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        String e4 = androidx.core.view.D.e(view);
        if (e4 != null) {
            C1355f c1355f = g4.f9380d;
            if (c1355f.containsKey(e4)) {
                c1355f.put(e4, null);
            } else {
                c1355f.put(e4, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                q.j jVar = g4.f9379c;
                if (jVar.d(itemIdAtPosition) < 0) {
                    C0186x.n(view, true);
                    jVar.f(itemIdAtPosition, view);
                    return;
                }
                View view2 = (View) jVar.c(itemIdAtPosition);
                if (view2 != null) {
                    C0186x.n(view2, false);
                    jVar.f(itemIdAtPosition, null);
                }
            }
        }
    }

    public static C1355f q() {
        ThreadLocal threadLocal = f9448A;
        C1355f c1355f = (C1355f) threadLocal.get();
        if (c1355f == null) {
            C1355f c1355f2 = new C1355f();
            threadLocal.set(c1355f2);
            return c1355f2;
        }
        return c1355f;
    }

    public static boolean w(F f4, F f5, String str) {
        Object obj = f4.f9374a.get(str);
        Object obj2 = f5.f9374a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    public void A(View view) {
        this.f9456i.remove(view);
    }

    public void B(View view) {
        if (this.f9466s) {
            if (!this.f9467t) {
                int size = this.f9464q.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    ((Animator) this.f9464q.get(size)).resume();
                }
                x(w.f9447e);
            }
            this.f9466s = false;
        }
    }

    public void C() {
        J();
        C1355f q4 = q();
        Iterator it = this.f9469v.iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (q4.containsKey(animator)) {
                J();
                if (animator != null) {
                    animator.addListener(new C0948q(this, q4));
                    long j4 = this.f9453f;
                    if (j4 >= 0) {
                        animator.setDuration(j4);
                    }
                    long j5 = this.f9452e;
                    if (j5 >= 0) {
                        animator.setStartDelay(animator.getStartDelay() + j5);
                    }
                    TimeInterpolator timeInterpolator = this.f9454g;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new r(this));
                    animator.start();
                }
            }
        }
        this.f9469v.clear();
        n();
    }

    public void D(long j4) {
        this.f9453f = j4;
    }

    public void E(AbstractC0950t abstractC0950t) {
        this.f9470w = abstractC0950t;
    }

    public void F(TimeInterpolator timeInterpolator) {
        this.f9454g = timeInterpolator;
    }

    public void G(C0947p c0947p) {
        if (c0947p == null) {
            this.f9471x = f9450z;
        } else {
            this.f9471x = c0947p;
        }
    }

    public void H() {
    }

    public void I(long j4) {
        this.f9452e = j4;
    }

    public final void J() {
        if (this.f9465r == 0) {
            x(w.f9443a);
            this.f9467t = false;
        }
        this.f9465r++;
    }

    public String K(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(": ");
        if (this.f9453f != -1) {
            sb.append("dur(");
            sb.append(this.f9453f);
            sb.append(") ");
        }
        if (this.f9452e != -1) {
            sb.append("dly(");
            sb.append(this.f9452e);
            sb.append(") ");
        }
        if (this.f9454g != null) {
            sb.append("interp(");
            sb.append(this.f9454g);
            sb.append(") ");
        }
        if (this.f9455h.size() > 0 || this.f9456i.size() > 0) {
            sb.append("tgts(");
            if (this.f9455h.size() > 0) {
                for (int i4 = 0; i4 < this.f9455h.size(); i4++) {
                    if (i4 > 0) {
                        sb.append(", ");
                    }
                    sb.append(this.f9455h.get(i4));
                }
            }
            if (this.f9456i.size() > 0) {
                for (int i5 = 0; i5 < this.f9456i.size(); i5++) {
                    if (i5 > 0) {
                        sb.append(", ");
                    }
                    sb.append(this.f9456i.get(i5));
                }
            }
            sb.append(")");
        }
        return sb.toString();
    }

    public void a(InterfaceC0951u interfaceC0951u) {
        if (this.f9468u == null) {
            this.f9468u = new ArrayList();
        }
        this.f9468u.add(interfaceC0951u);
    }

    public void b(View view) {
        this.f9456i.add(view);
    }

    public void d() {
        int size = this.f9464q.size();
        while (true) {
            size--;
            if (size < 0) {
                x(w.f9445c);
                return;
            }
            ((Animator) this.f9464q.get(size)).cancel();
        }
    }

    public abstract void e(F f4);

    public final void f(View view, boolean z4) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            F f4 = new F(view);
            if (z4) {
                h(f4);
            } else {
                e(f4);
            }
            f4.f9376c.add(this);
            g(f4);
            if (z4) {
                c(this.f9457j, view, f4);
            } else {
                c(this.f9458k, view, f4);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                f(viewGroup.getChildAt(i4), z4);
            }
        }
    }

    public void g(F f4) {
    }

    public abstract void h(F f4);

    public final void i(ViewGroup viewGroup, boolean z4) {
        j(z4);
        if (this.f9455h.size() <= 0 && this.f9456i.size() <= 0) {
            f(viewGroup, z4);
            return;
        }
        for (int i4 = 0; i4 < this.f9455h.size(); i4++) {
            View findViewById = viewGroup.findViewById(((Integer) this.f9455h.get(i4)).intValue());
            if (findViewById != null) {
                F f4 = new F(findViewById);
                if (z4) {
                    h(f4);
                } else {
                    e(f4);
                }
                f4.f9376c.add(this);
                g(f4);
                if (z4) {
                    c(this.f9457j, findViewById, f4);
                } else {
                    c(this.f9458k, findViewById, f4);
                }
            }
        }
        for (int i5 = 0; i5 < this.f9456i.size(); i5++) {
            View view = (View) this.f9456i.get(i5);
            F f5 = new F(view);
            if (z4) {
                h(f5);
            } else {
                e(f5);
            }
            f5.f9376c.add(this);
            g(f5);
            if (z4) {
                c(this.f9457j, view, f5);
            } else {
                c(this.f9458k, view, f5);
            }
        }
    }

    public final void j(boolean z4) {
        if (z4) {
            this.f9457j.f9377a.clear();
            this.f9457j.f9378b.clear();
            this.f9457j.f9379c.a();
            return;
        }
        this.f9458k.f9377a.clear();
        this.f9458k.f9378b.clear();
        this.f9458k.f9379c.a();
    }

    @Override // 
    /* renamed from: k */
    public x clone() {
        try {
            x xVar = (x) super.clone();
            xVar.f9469v = new ArrayList();
            xVar.f9457j = new G();
            xVar.f9458k = new G();
            xVar.f9461n = null;
            xVar.f9462o = null;
            if (this.f9468u != null) {
                xVar.f9468u = new ArrayList(this.f9468u);
            }
            return xVar;
        } catch (CloneNotSupportedException e4) {
            throw new RuntimeException(e4);
        }
    }

    public Animator l(ViewGroup viewGroup, F f4, F f5) {
        return null;
    }

    public void m(ViewGroup viewGroup, G g4, G g5, ArrayList arrayList, ArrayList arrayList2) {
        Animator l4;
        View view;
        Animator animator;
        F f4;
        Animator animator2;
        F f5;
        ViewGroup viewGroup2 = viewGroup;
        C1355f q4 = q();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        p().getClass();
        int i4 = 0;
        while (i4 < size) {
            F f6 = (F) arrayList.get(i4);
            F f7 = (F) arrayList2.get(i4);
            if (f6 != null && !f6.f9376c.contains(this)) {
                f6 = null;
            }
            if (f7 != null && !f7.f9376c.contains(this)) {
                f7 = null;
            }
            if (f6 != null || f7 != null) {
                if ((f6 == null || f7 == null || u(f6, f7)) && (l4 = l(viewGroup2, f6, f7)) != null) {
                    if (f7 != null) {
                        String[] r4 = r();
                        view = f7.f9375b;
                        if (r4 != null && r4.length > 0) {
                            f5 = new F(view);
                            F f8 = (F) g5.f9377a.get(view);
                            if (f8 != null) {
                                int i5 = 0;
                                while (i5 < r4.length) {
                                    Map map = f5.f9374a;
                                    Animator animator3 = l4;
                                    String str = r4[i5];
                                    ((HashMap) map).put(str, ((HashMap) f8.f9374a).get(str));
                                    i5++;
                                    l4 = animator3;
                                    r4 = r4;
                                }
                            }
                            Animator animator4 = l4;
                            int i6 = q4.f11967f;
                            int i7 = 0;
                            while (true) {
                                if (i7 >= i6) {
                                    animator2 = animator4;
                                    break;
                                }
                                C0949s c0949s = (C0949s) q4.get((Animator) q4.g(i7));
                                if (c0949s.f9438c != null && c0949s.f9436a == view) {
                                    if (c0949s.f9437b.equals(this.f9451d) && c0949s.f9438c.equals(f5)) {
                                        animator2 = null;
                                        break;
                                    }
                                }
                                i7++;
                            }
                        } else {
                            animator2 = l4;
                            f5 = null;
                        }
                        animator = animator2;
                        f4 = f5;
                    } else {
                        view = f6.f9375b;
                        animator = l4;
                        f4 = null;
                    }
                    if (animator != null) {
                        String str2 = this.f9451d;
                        N n4 = I.f9382a;
                        q4.put(animator, new C0949s(view, str2, this, new T(viewGroup2), f4, animator));
                        this.f9469v.add(animator);
                    }
                }
            }
            i4++;
            viewGroup2 = viewGroup;
        }
        if (sparseIntArray.size() != 0) {
            for (int i8 = 0; i8 < sparseIntArray.size(); i8++) {
                C0949s c0949s2 = (C0949s) q4.get((Animator) this.f9469v.get(sparseIntArray.keyAt(i8)));
                c0949s2.f9441f.setStartDelay(c0949s2.f9441f.getStartDelay() + (sparseIntArray.valueAt(i8) - Long.MAX_VALUE));
            }
        }
    }

    public final void n() {
        int i4 = this.f9465r - 1;
        this.f9465r = i4;
        if (i4 == 0) {
            x(w.f9444b);
            for (int i5 = 0; i5 < this.f9457j.f9379c.g(); i5++) {
                View view = (View) this.f9457j.f9379c.h(i5);
                if (view != null) {
                    WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                    C0186x.n(view, false);
                }
            }
            for (int i6 = 0; i6 < this.f9458k.f9379c.g(); i6++) {
                View view2 = (View) this.f9458k.f9379c.h(i6);
                if (view2 != null) {
                    WeakHashMap weakHashMap2 = androidx.core.view.J.f3079a;
                    C0186x.n(view2, false);
                }
            }
            this.f9467t = true;
        }
    }

    public final F o(View view, boolean z4) {
        E e4 = this.f9459l;
        if (e4 != null) {
            return e4.o(view, z4);
        }
        ArrayList arrayList = z4 ? this.f9461n : this.f9462o;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                i4 = -1;
                break;
            }
            F f4 = (F) arrayList.get(i4);
            if (f4 == null) {
                return null;
            }
            if (f4.f9375b == view) {
                break;
            }
            i4++;
        }
        if (i4 >= 0) {
            return (F) (z4 ? this.f9462o : this.f9461n).get(i4);
        }
        return null;
    }

    public final x p() {
        E e4 = this.f9459l;
        return e4 != null ? e4.p() : this;
    }

    public String[] r() {
        return null;
    }

    public final F s(View view, boolean z4) {
        E e4 = this.f9459l;
        if (e4 != null) {
            return e4.s(view, z4);
        }
        return (F) (z4 ? this.f9457j : this.f9458k).f9377a.get(view);
    }

    public boolean t() {
        return !this.f9464q.isEmpty();
    }

    public final String toString() {
        return K("");
    }

    public boolean u(F f4, F f5) {
        if (f4 == null || f5 == null) {
            return false;
        }
        String[] r4 = r();
        if (r4 == null) {
            for (String str : ((HashMap) f4.f9374a).keySet()) {
                if (w(f4, f5, str)) {
                }
            }
            return false;
        }
        for (String str2 : r4) {
            if (!w(f4, f5, str2)) {
            }
        }
        return false;
        return true;
    }

    public final boolean v(View view) {
        return (this.f9455h.size() == 0 && this.f9456i.size() == 0) || this.f9455h.contains(Integer.valueOf(view.getId())) || this.f9456i.contains(view);
    }

    public final void x(v vVar) {
        ArrayList arrayList = this.f9468u;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.f9468u.size();
        InterfaceC0951u[] interfaceC0951uArr = this.f9463p;
        if (interfaceC0951uArr == null) {
            interfaceC0951uArr = new InterfaceC0951u[size];
        }
        this.f9463p = null;
        InterfaceC0951u[] interfaceC0951uArr2 = (InterfaceC0951u[]) this.f9468u.toArray(interfaceC0951uArr);
        for (int i4 = 0; i4 < size; i4++) {
            InterfaceC0951u interfaceC0951u = interfaceC0951uArr2[i4];
            switch (vVar.f9442f) {
                case 0:
                    interfaceC0951u.c(this);
                    break;
                case 1:
                    interfaceC0951u.e(this);
                    break;
                case 2:
                    interfaceC0951u.f(this);
                    break;
                case 3:
                    interfaceC0951u.b();
                    break;
                default:
                    interfaceC0951u.d();
                    break;
            }
            interfaceC0951uArr2[i4] = null;
        }
        this.f9463p = interfaceC0951uArr2;
    }

    public void y(View view) {
        if (this.f9467t) {
            return;
        }
        for (int size = this.f9464q.size() - 1; size >= 0; size--) {
            ((Animator) this.f9464q.get(size)).pause();
        }
        x(w.f9446d);
        this.f9466s = true;
    }

    public void z(InterfaceC0951u interfaceC0951u) {
        ArrayList arrayList = this.f9468u;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(interfaceC0951u);
        if (this.f9468u.size() == 0) {
            this.f9468u = null;
        }
    }
}
