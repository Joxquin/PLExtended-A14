package g0;

import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class E extends x {

    /* renamed from: D  reason: collision with root package name */
    public int f9371D;

    /* renamed from: B  reason: collision with root package name */
    public ArrayList f9369B = new ArrayList();

    /* renamed from: C  reason: collision with root package name */
    public boolean f9370C = true;

    /* renamed from: E  reason: collision with root package name */
    public boolean f9372E = false;

    /* renamed from: F  reason: collision with root package name */
    public int f9373F = 0;

    @Override // g0.x
    public final void A(View view) {
        for (int i4 = 0; i4 < this.f9369B.size(); i4++) {
            ((x) this.f9369B.get(i4)).A(view);
        }
        this.f9456i.remove(view);
    }

    @Override // g0.x
    public final void B(View view) {
        super.B(view);
        int size = this.f9369B.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((x) this.f9369B.get(i4)).B(view);
        }
    }

    @Override // g0.x
    public final void C() {
        if (this.f9369B.isEmpty()) {
            J();
            n();
            return;
        }
        D d4 = new D(this, 1);
        Iterator it = this.f9369B.iterator();
        while (it.hasNext()) {
            ((x) it.next()).a(d4);
        }
        this.f9371D = this.f9369B.size();
        if (this.f9370C) {
            Iterator it2 = this.f9369B.iterator();
            while (it2.hasNext()) {
                ((x) it2.next()).C();
            }
            return;
        }
        for (int i4 = 1; i4 < this.f9369B.size(); i4++) {
            ((x) this.f9369B.get(i4 - 1)).a(new C((x) this.f9369B.get(i4)));
        }
        x xVar = (x) this.f9369B.get(0);
        if (xVar != null) {
            xVar.C();
        }
    }

    @Override // g0.x
    public final void D(long j4) {
        ArrayList arrayList;
        this.f9453f = j4;
        if (j4 < 0 || (arrayList = this.f9369B) == null) {
            return;
        }
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((x) this.f9369B.get(i4)).D(j4);
        }
    }

    @Override // g0.x
    public final void E(AbstractC0950t abstractC0950t) {
        this.f9470w = abstractC0950t;
        this.f9373F |= 8;
        int size = this.f9369B.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((x) this.f9369B.get(i4)).E(abstractC0950t);
        }
    }

    @Override // g0.x
    public final void F(TimeInterpolator timeInterpolator) {
        this.f9373F |= 1;
        ArrayList arrayList = this.f9369B;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                ((x) this.f9369B.get(i4)).F(timeInterpolator);
            }
        }
        this.f9454g = timeInterpolator;
    }

    @Override // g0.x
    public final void G(C0947p c0947p) {
        super.G(c0947p);
        this.f9373F |= 4;
        if (this.f9369B != null) {
            for (int i4 = 0; i4 < this.f9369B.size(); i4++) {
                ((x) this.f9369B.get(i4)).G(c0947p);
            }
        }
    }

    @Override // g0.x
    public final void H() {
        this.f9373F |= 2;
        int size = this.f9369B.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((x) this.f9369B.get(i4)).H();
        }
    }

    @Override // g0.x
    public final void I(long j4) {
        this.f9452e = j4;
    }

    @Override // g0.x
    public final String K(String str) {
        String K3 = super.K(str);
        for (int i4 = 0; i4 < this.f9369B.size(); i4++) {
            StringBuilder a4 = t.j.a(K3, "\n");
            a4.append(((x) this.f9369B.get(i4)).K(str + "  "));
            K3 = a4.toString();
        }
        return K3;
    }

    public final void L(x xVar) {
        this.f9369B.add(xVar);
        xVar.f9459l = this;
        long j4 = this.f9453f;
        if (j4 >= 0) {
            xVar.D(j4);
        }
        if ((this.f9373F & 1) != 0) {
            xVar.F(this.f9454g);
        }
        if ((this.f9373F & 2) != 0) {
            xVar.H();
        }
        if ((this.f9373F & 4) != 0) {
            xVar.G(this.f9471x);
        }
        if ((this.f9373F & 8) != 0) {
            xVar.E(this.f9470w);
        }
    }

    @Override // g0.x
    public final void a(InterfaceC0951u interfaceC0951u) {
        super.a(interfaceC0951u);
    }

    @Override // g0.x
    public final void b(View view) {
        for (int i4 = 0; i4 < this.f9369B.size(); i4++) {
            ((x) this.f9369B.get(i4)).b(view);
        }
        this.f9456i.add(view);
    }

    @Override // g0.x
    public final void d() {
        super.d();
        int size = this.f9369B.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((x) this.f9369B.get(i4)).d();
        }
    }

    @Override // g0.x
    public final void e(F f4) {
        View view = f4.f9375b;
        if (v(view)) {
            Iterator it = this.f9369B.iterator();
            while (it.hasNext()) {
                x xVar = (x) it.next();
                if (xVar.v(view)) {
                    xVar.e(f4);
                    f4.f9376c.add(xVar);
                }
            }
        }
    }

    @Override // g0.x
    public final void g(F f4) {
        int size = this.f9369B.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((x) this.f9369B.get(i4)).g(f4);
        }
    }

    @Override // g0.x
    public final void h(F f4) {
        View view = f4.f9375b;
        if (v(view)) {
            Iterator it = this.f9369B.iterator();
            while (it.hasNext()) {
                x xVar = (x) it.next();
                if (xVar.v(view)) {
                    xVar.h(f4);
                    f4.f9376c.add(xVar);
                }
            }
        }
    }

    @Override // g0.x
    /* renamed from: k */
    public final x clone() {
        E e4 = (E) super.clone();
        e4.f9369B = new ArrayList();
        int size = this.f9369B.size();
        for (int i4 = 0; i4 < size; i4++) {
            x clone = ((x) this.f9369B.get(i4)).clone();
            e4.f9369B.add(clone);
            clone.f9459l = e4;
        }
        return e4;
    }

    @Override // g0.x
    public final void m(ViewGroup viewGroup, G g4, G g5, ArrayList arrayList, ArrayList arrayList2) {
        long j4 = this.f9452e;
        int size = this.f9369B.size();
        for (int i4 = 0; i4 < size; i4++) {
            x xVar = (x) this.f9369B.get(i4);
            if (j4 > 0 && (this.f9370C || i4 == 0)) {
                long j5 = xVar.f9452e;
                if (j5 > 0) {
                    xVar.I(j5 + j4);
                } else {
                    xVar.I(j4);
                }
            }
            xVar.m(viewGroup, g4, g5, arrayList, arrayList2);
        }
    }

    @Override // g0.x
    public final boolean t() {
        for (int i4 = 0; i4 < this.f9369B.size(); i4++) {
            if (((x) this.f9369B.get(i4)).t()) {
                return true;
            }
        }
        return false;
    }

    @Override // g0.x
    public final void y(View view) {
        super.y(view);
        int size = this.f9369B.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((x) this.f9369B.get(i4)).y(view);
        }
    }

    @Override // g0.x
    public final void z(InterfaceC0951u interfaceC0951u) {
        super.z(interfaceC0951u);
    }
}
