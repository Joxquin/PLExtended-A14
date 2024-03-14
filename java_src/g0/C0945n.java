package g0;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.J0;
import androidx.fragment.app.RunnableC0205i;
import java.util.ArrayList;
/* renamed from: g0.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0945n extends J0 {
    @Override // androidx.fragment.app.J0
    public final void a(View view, Object obj) {
        ((x) obj).b(view);
    }

    @Override // androidx.fragment.app.J0
    public final void b(Object obj, ArrayList arrayList) {
        x xVar = (x) obj;
        if (xVar == null) {
            return;
        }
        int i4 = 0;
        if (xVar instanceof E) {
            E e4 = (E) xVar;
            int size = e4.f9369B.size();
            while (i4 < size) {
                b((i4 < 0 || i4 >= e4.f9369B.size()) ? null : (x) e4.f9369B.get(i4), arrayList);
                i4++;
            }
            return;
        }
        if (((J0.h(xVar.f9455h) && J0.h(null) && J0.h(null)) ? false : true) || !J0.h(xVar.f9456i)) {
            return;
        }
        int size2 = arrayList.size();
        while (i4 < size2) {
            xVar.b((View) arrayList.get(i4));
            i4++;
        }
    }

    @Override // androidx.fragment.app.J0
    public final void c(ViewGroup viewGroup, Object obj) {
        C0931B.a(viewGroup, (x) obj);
    }

    @Override // androidx.fragment.app.J0
    public final boolean e(Object obj) {
        return obj instanceof x;
    }

    @Override // androidx.fragment.app.J0
    public final Object f(Object obj) {
        if (obj != null) {
            return ((x) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.J0
    public final Object i(Object obj, Object obj2, Object obj3) {
        x xVar = (x) obj;
        x xVar2 = (x) obj2;
        x xVar3 = (x) obj3;
        if (xVar != null && xVar2 != null) {
            E e4 = new E();
            e4.L(xVar);
            e4.L(xVar2);
            e4.f9370C = false;
            xVar = e4;
        } else if (xVar == null) {
            xVar = xVar2 != null ? xVar2 : null;
        }
        if (xVar3 != null) {
            E e5 = new E();
            if (xVar != null) {
                e5.L(xVar);
            }
            e5.L(xVar3);
            return e5;
        }
        return xVar;
    }

    @Override // androidx.fragment.app.J0
    public final Object j(Object obj, Object obj2) {
        E e4 = new E();
        if (obj != null) {
            e4.L((x) obj);
        }
        e4.L((x) obj2);
        return e4;
    }

    @Override // androidx.fragment.app.J0
    public final void k(Object obj, View view, ArrayList arrayList) {
        ((x) obj).a(new C0941j(view, arrayList));
    }

    @Override // androidx.fragment.app.J0
    public final void l(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2) {
        ((x) obj).a(new C0942k(this, obj2, arrayList, obj3, arrayList2));
    }

    @Override // androidx.fragment.app.J0
    public final void m(View view, Object obj) {
        if (view != null) {
            J0.g(view, new Rect());
            ((x) obj).E(new C0940i());
        }
    }

    @Override // androidx.fragment.app.J0
    public final void n(Object obj, Rect rect) {
        ((x) obj).E(new C0940i());
    }

    @Override // androidx.fragment.app.J0
    public final void o(Object obj, I.d dVar, RunnableC0205i runnableC0205i) {
        x xVar = (x) obj;
        dVar.b(new C0943l(xVar));
        xVar.a(new C0944m(runnableC0205i));
    }

    @Override // androidx.fragment.app.J0
    public final void p(Object obj, View view, ArrayList arrayList) {
        E e4 = (E) obj;
        ArrayList arrayList2 = e4.f9456i;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            J0.d(arrayList2, (View) arrayList.get(i4));
        }
        arrayList2.add(view);
        arrayList.add(view);
        b(e4, arrayList);
    }

    @Override // androidx.fragment.app.J0
    public final void q(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        E e4 = (E) obj;
        if (e4 != null) {
            e4.f9456i.clear();
            e4.f9456i.addAll(arrayList2);
            s(e4, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.J0
    public final Object r(Object obj) {
        if (obj == null) {
            return null;
        }
        E e4 = new E();
        e4.L((x) obj);
        return e4;
    }

    public final void s(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        x xVar = (x) obj;
        int i4 = 0;
        if (xVar instanceof E) {
            E e4 = (E) xVar;
            int size = e4.f9369B.size();
            while (i4 < size) {
                s((i4 < 0 || i4 >= e4.f9369B.size()) ? null : (x) e4.f9369B.get(i4), arrayList, arrayList2);
                i4++;
            }
            return;
        }
        if ((J0.h(xVar.f9455h) && J0.h(null) && J0.h(null)) ? false : true) {
            return;
        }
        ArrayList arrayList3 = xVar.f9456i;
        if (arrayList3.size() != arrayList.size() || !arrayList3.containsAll(arrayList)) {
            return;
        }
        int size2 = arrayList2 == null ? 0 : arrayList2.size();
        while (i4 < size2) {
            xVar.b((View) arrayList2.get(i4));
            i4++;
        }
        int size3 = arrayList.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                return;
            }
            xVar.A((View) arrayList.get(size3));
        }
    }
}
