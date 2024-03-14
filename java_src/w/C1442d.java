package w;

import java.util.ArrayList;
import java.util.Iterator;
import v.C1428d;
/* renamed from: w.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1442d extends androidx.constraintlayout.core.widgets.analyzer.f {

    /* renamed from: k  reason: collision with root package name */
    public final ArrayList f12700k;

    /* renamed from: l  reason: collision with root package name */
    public int f12701l;

    public C1442d(int i4, v.f fVar) {
        super(fVar);
        this.f12700k = new ArrayList();
        this.f2760f = i4;
        v.f fVar2 = this.f2756b;
        v.f n4 = fVar2.n(i4);
        while (n4 != null) {
            fVar2 = n4;
            n4 = n4.n(this.f2760f);
        }
        this.f2756b = fVar2;
        int i5 = this.f2760f;
        Object obj = i5 == 0 ? fVar2.f12505d : i5 == 1 ? fVar2.f12507e : null;
        ArrayList arrayList = this.f12700k;
        arrayList.add(obj);
        v.f m4 = fVar2.m(this.f2760f);
        while (m4 != null) {
            int i6 = this.f2760f;
            arrayList.add(i6 == 0 ? m4.f12505d : i6 == 1 ? m4.f12507e : null);
            m4 = m4.m(this.f2760f);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            androidx.constraintlayout.core.widgets.analyzer.f fVar3 = (androidx.constraintlayout.core.widgets.analyzer.f) it.next();
            int i7 = this.f2760f;
            if (i7 == 0) {
                fVar3.f2756b.f12501b = this;
            } else if (i7 == 1) {
                fVar3.f2756b.f12503c = this;
            }
        }
        if ((this.f2760f == 0 && ((v.g) this.f2756b.f12495W).f12561x0) && arrayList.size() > 1) {
            this.f2756b = ((androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(arrayList.size() - 1)).f2756b;
        }
        this.f12701l = this.f2760f == 0 ? this.f2756b.f12522l0 : this.f2756b.f12524m0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:272:0x03c7, code lost:
        r0 = r0 - r12;
     */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00e1  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.f, w.InterfaceC1443e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(w.InterfaceC1443e r28) {
        /*
            Method dump skipped, instructions count: 998
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: w.C1442d.a(w.e):void");
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void d() {
        ArrayList arrayList = this.f12700k;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((androidx.constraintlayout.core.widgets.analyzer.f) it.next()).d();
        }
        int size = arrayList.size();
        if (size < 1) {
            return;
        }
        v.f fVar = ((androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(0)).f2756b;
        v.f fVar2 = ((androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(size - 1)).f2756b;
        int i4 = this.f2760f;
        androidx.constraintlayout.core.widgets.analyzer.a aVar = this.f2763i;
        androidx.constraintlayout.core.widgets.analyzer.a aVar2 = this.f2762h;
        if (i4 == 0) {
            C1428d c1428d = fVar.f12483K;
            C1428d c1428d2 = fVar2.f12485M;
            androidx.constraintlayout.core.widgets.analyzer.a i5 = androidx.constraintlayout.core.widgets.analyzer.f.i(c1428d, 0);
            int e4 = c1428d.e();
            v.f m4 = m();
            if (m4 != null) {
                e4 = m4.f12483K.e();
            }
            if (i5 != null) {
                androidx.constraintlayout.core.widgets.analyzer.f.b(aVar2, i5, e4);
            }
            androidx.constraintlayout.core.widgets.analyzer.a i6 = androidx.constraintlayout.core.widgets.analyzer.f.i(c1428d2, 0);
            int e5 = c1428d2.e();
            v.f n4 = n();
            if (n4 != null) {
                e5 = n4.f12485M.e();
            }
            if (i6 != null) {
                androidx.constraintlayout.core.widgets.analyzer.f.b(aVar, i6, -e5);
            }
        } else {
            C1428d c1428d3 = fVar.f12484L;
            C1428d c1428d4 = fVar2.f12486N;
            androidx.constraintlayout.core.widgets.analyzer.a i7 = androidx.constraintlayout.core.widgets.analyzer.f.i(c1428d3, 1);
            int e6 = c1428d3.e();
            v.f m5 = m();
            if (m5 != null) {
                e6 = m5.f12484L.e();
            }
            if (i7 != null) {
                androidx.constraintlayout.core.widgets.analyzer.f.b(aVar2, i7, e6);
            }
            androidx.constraintlayout.core.widgets.analyzer.a i8 = androidx.constraintlayout.core.widgets.analyzer.f.i(c1428d4, 1);
            int e7 = c1428d4.e();
            v.f n5 = n();
            if (n5 != null) {
                e7 = n5.f12486N.e();
            }
            if (i8 != null) {
                androidx.constraintlayout.core.widgets.analyzer.f.b(aVar, i8, -e7);
            }
        }
        aVar2.f2739a = this;
        aVar.f2739a = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void e() {
        int i4 = 0;
        while (true) {
            ArrayList arrayList = this.f12700k;
            if (i4 >= arrayList.size()) {
                return;
            }
            ((androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(i4)).e();
            i4++;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void f() {
        this.f2757c = null;
        Iterator it = this.f12700k.iterator();
        while (it.hasNext()) {
            ((androidx.constraintlayout.core.widgets.analyzer.f) it.next()).f();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final long j() {
        ArrayList arrayList = this.f12700k;
        int size = arrayList.size();
        long j4 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            androidx.constraintlayout.core.widgets.analyzer.f fVar = (androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(i4);
            j4 = fVar.f2763i.f2744f + fVar.j() + j4 + fVar.f2762h.f2744f;
        }
        return j4;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final boolean k() {
        ArrayList arrayList = this.f12700k;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (!((androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(i4)).k()) {
                return false;
            }
        }
        return true;
    }

    public final v.f m() {
        int i4 = 0;
        while (true) {
            ArrayList arrayList = this.f12700k;
            if (i4 >= arrayList.size()) {
                return null;
            }
            v.f fVar = ((androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(i4)).f2756b;
            if (fVar.f12518j0 != 8) {
                return fVar;
            }
            i4++;
        }
    }

    public final v.f n() {
        ArrayList arrayList = this.f12700k;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            v.f fVar = ((androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(size)).f2756b;
            if (fVar.f12518j0 != 8) {
                return fVar;
            }
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.f2760f == 0 ? "horizontal : " : "vertical : ");
        Iterator it = this.f12700k.iterator();
        while (it.hasNext()) {
            sb.append("<");
            sb.append((androidx.constraintlayout.core.widgets.analyzer.f) it.next());
            sb.append("> ");
        }
        return sb.toString();
    }
}
