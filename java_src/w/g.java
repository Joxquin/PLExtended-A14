package w;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import v.C1428d;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final v.g f12702a;

    /* renamed from: d  reason: collision with root package name */
    public final v.g f12705d;

    /* renamed from: f  reason: collision with root package name */
    public androidx.constraintlayout.widget.e f12707f;

    /* renamed from: g  reason: collision with root package name */
    public final C1440b f12708g;

    /* renamed from: h  reason: collision with root package name */
    public final ArrayList f12709h;

    /* renamed from: b  reason: collision with root package name */
    public boolean f12703b = true;

    /* renamed from: c  reason: collision with root package name */
    public boolean f12704c = true;

    /* renamed from: e  reason: collision with root package name */
    public final ArrayList f12706e = new ArrayList();

    public g(v.g gVar) {
        new ArrayList();
        this.f12707f = null;
        this.f12708g = new C1440b();
        this.f12709h = new ArrayList();
        this.f12702a = gVar;
        this.f12705d = gVar;
    }

    public final void a(androidx.constraintlayout.core.widgets.analyzer.a aVar, int i4, int i5, ArrayList arrayList, k kVar) {
        androidx.constraintlayout.core.widgets.analyzer.f fVar = aVar.f2742d;
        if (fVar.f2757c == null) {
            v.g gVar = this.f12702a;
            if (fVar == gVar.f12505d || fVar == gVar.f12507e) {
                return;
            }
            if (kVar == null) {
                kVar = new k(fVar);
                arrayList.add(kVar);
            }
            fVar.f2757c = kVar;
            kVar.f12712b.add(fVar);
            androidx.constraintlayout.core.widgets.analyzer.a aVar2 = fVar.f2762h;
            Iterator it = ((ArrayList) aVar2.f2749k).iterator();
            while (it.hasNext()) {
                InterfaceC1443e interfaceC1443e = (InterfaceC1443e) it.next();
                if (interfaceC1443e instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                    a((androidx.constraintlayout.core.widgets.analyzer.a) interfaceC1443e, i4, 0, arrayList, kVar);
                }
            }
            androidx.constraintlayout.core.widgets.analyzer.a aVar3 = fVar.f2763i;
            Iterator it2 = ((ArrayList) aVar3.f2749k).iterator();
            while (it2.hasNext()) {
                InterfaceC1443e interfaceC1443e2 = (InterfaceC1443e) it2.next();
                if (interfaceC1443e2 instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                    a((androidx.constraintlayout.core.widgets.analyzer.a) interfaceC1443e2, i4, 1, arrayList, kVar);
                }
            }
            if (i4 == 1 && (fVar instanceof androidx.constraintlayout.core.widgets.analyzer.e)) {
                Iterator it3 = ((ArrayList) ((androidx.constraintlayout.core.widgets.analyzer.e) fVar).f2753k.f2749k).iterator();
                while (it3.hasNext()) {
                    InterfaceC1443e interfaceC1443e3 = (InterfaceC1443e) it3.next();
                    if (interfaceC1443e3 instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                        a((androidx.constraintlayout.core.widgets.analyzer.a) interfaceC1443e3, i4, 2, arrayList, kVar);
                    }
                }
            }
            Iterator it4 = ((ArrayList) aVar2.f2750l).iterator();
            while (it4.hasNext()) {
                a((androidx.constraintlayout.core.widgets.analyzer.a) it4.next(), i4, 0, arrayList, kVar);
            }
            Iterator it5 = ((ArrayList) aVar3.f2750l).iterator();
            while (it5.hasNext()) {
                a((androidx.constraintlayout.core.widgets.analyzer.a) it5.next(), i4, 1, arrayList, kVar);
            }
            if (i4 == 1 && (fVar instanceof androidx.constraintlayout.core.widgets.analyzer.e)) {
                Iterator it6 = ((ArrayList) ((androidx.constraintlayout.core.widgets.analyzer.e) fVar).f2753k.f2750l).iterator();
                while (it6.hasNext()) {
                    a((androidx.constraintlayout.core.widgets.analyzer.a) it6.next(), i4, 2, arrayList, kVar);
                }
            }
        }
    }

    public final void b(v.g gVar) {
        int i4;
        int i5;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour;
        Iterator it = gVar.f12627s0.iterator();
        while (it.hasNext()) {
            v.f fVar = (v.f) it.next();
            ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = fVar.f12494V;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviourArr[0];
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = constraintWidget$DimensionBehaviourArr[1];
            if (fVar.f12518j0 == 8) {
                fVar.f12499a = true;
            } else {
                float f4 = fVar.f12540x;
                int i6 = (f4 > 1.0f ? 1 : (f4 == 1.0f ? 0 : -1));
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                if (i6 < 0 && constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour4) {
                    fVar.f12535s = 2;
                }
                float f5 = fVar.f12473A;
                if (f5 < 1.0f && constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour4) {
                    fVar.f12536t = 2;
                }
                int i7 = (fVar.f12498Z > 0.0f ? 1 : (fVar.f12498Z == 0.0f ? 0 : -1));
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour6 = ConstraintWidget$DimensionBehaviour.FIXED;
                if (i7 > 0) {
                    if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour4 && (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour5 || constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour6)) {
                        fVar.f12535s = 3;
                    } else if (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour4 && (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour5 || constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour6)) {
                        fVar.f12536t = 3;
                    } else if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour4 && constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour4) {
                        if (fVar.f12535s == 0) {
                            fVar.f12535s = 3;
                        }
                        if (fVar.f12536t == 0) {
                            fVar.f12536t = 3;
                        }
                    }
                }
                C1428d c1428d = fVar.f12485M;
                C1428d c1428d2 = fVar.f12483K;
                if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour4 && fVar.f12535s == 1 && (c1428d2.f12469f == null || c1428d.f12469f == null)) {
                    constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviour5;
                }
                C1428d c1428d3 = fVar.f12486N;
                C1428d c1428d4 = fVar.f12484L;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour7 = (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour4 && fVar.f12536t == 1 && (c1428d4.f12469f == null || c1428d3.f12469f == null)) ? constraintWidget$DimensionBehaviour5 : constraintWidget$DimensionBehaviour3;
                androidx.constraintlayout.core.widgets.analyzer.d dVar = fVar.f12505d;
                dVar.f2758d = constraintWidget$DimensionBehaviour2;
                int i8 = fVar.f12535s;
                dVar.f2755a = i8;
                androidx.constraintlayout.core.widgets.analyzer.e eVar = fVar.f12507e;
                eVar.f2758d = constraintWidget$DimensionBehaviour7;
                Iterator it2 = it;
                int i9 = fVar.f12536t;
                eVar.f2755a = i9;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour8 = ConstraintWidget$DimensionBehaviour.MATCH_PARENT;
                if ((constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour8 || constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour6 || constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour5) && (constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour8 || constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour6 || constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour5)) {
                    int r4 = fVar.r();
                    if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour8) {
                        i4 = (gVar.r() - c1428d2.f12470g) - c1428d.f12470g;
                        constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviour6;
                    } else {
                        i4 = r4;
                    }
                    int l4 = fVar.l();
                    if (constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour8) {
                        i5 = (gVar.l() - c1428d4.f12470g) - c1428d3.f12470g;
                        constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviour6;
                    } else {
                        i5 = l4;
                        constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviour7;
                    }
                    f(fVar, constraintWidget$DimensionBehaviour2, i4, constraintWidget$DimensionBehaviour, i5);
                    fVar.f12505d.f2759e.d(fVar.r());
                    fVar.f12507e.f2759e.d(fVar.l());
                    fVar.f12499a = true;
                } else {
                    ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr2 = gVar.f12494V;
                    C1428d[] c1428dArr = fVar.f12491S;
                    if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour4 && (constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour5 || constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour6)) {
                        if (i8 == 3) {
                            if (constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour5) {
                                f(fVar, constraintWidget$DimensionBehaviour5, 0, constraintWidget$DimensionBehaviour5, 0);
                            }
                            int l5 = fVar.l();
                            f(fVar, constraintWidget$DimensionBehaviour6, (int) ((l5 * fVar.f12498Z) + 0.5f), constraintWidget$DimensionBehaviour6, l5);
                            fVar.f12505d.f2759e.d(fVar.r());
                            fVar.f12507e.f2759e.d(fVar.l());
                            fVar.f12499a = true;
                        } else if (i8 == 1) {
                            f(fVar, constraintWidget$DimensionBehaviour5, 0, constraintWidget$DimensionBehaviour7, 0);
                            fVar.f12505d.f2759e.f2751m = fVar.r();
                        } else if (i8 == 2) {
                            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour9 = constraintWidget$DimensionBehaviourArr2[0];
                            if (constraintWidget$DimensionBehaviour9 == constraintWidget$DimensionBehaviour6 || constraintWidget$DimensionBehaviour9 == constraintWidget$DimensionBehaviour8) {
                                f(fVar, constraintWidget$DimensionBehaviour6, (int) ((f4 * gVar.r()) + 0.5f), constraintWidget$DimensionBehaviour7, fVar.l());
                                fVar.f12505d.f2759e.d(fVar.r());
                                fVar.f12507e.f2759e.d(fVar.l());
                                fVar.f12499a = true;
                            }
                        } else if (c1428dArr[0].f12469f == null || c1428dArr[1].f12469f == null) {
                            f(fVar, constraintWidget$DimensionBehaviour5, 0, constraintWidget$DimensionBehaviour7, 0);
                            fVar.f12505d.f2759e.d(fVar.r());
                            fVar.f12507e.f2759e.d(fVar.l());
                            fVar.f12499a = true;
                        }
                    }
                    if (constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour4 && (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour5 || constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour6)) {
                        if (i9 == 3) {
                            if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour5) {
                                f(fVar, constraintWidget$DimensionBehaviour5, 0, constraintWidget$DimensionBehaviour5, 0);
                            }
                            int r5 = fVar.r();
                            float f6 = fVar.f12498Z;
                            if (fVar.f12500a0 == -1) {
                                f6 = 1.0f / f6;
                            }
                            f(fVar, constraintWidget$DimensionBehaviour6, r5, constraintWidget$DimensionBehaviour6, (int) ((r5 * f6) + 0.5f));
                            fVar.f12505d.f2759e.d(fVar.r());
                            fVar.f12507e.f2759e.d(fVar.l());
                            fVar.f12499a = true;
                        } else if (i9 == 1) {
                            f(fVar, constraintWidget$DimensionBehaviour2, 0, constraintWidget$DimensionBehaviour5, 0);
                            fVar.f12507e.f2759e.f2751m = fVar.l();
                        } else if (i9 == 2) {
                            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour10 = constraintWidget$DimensionBehaviourArr2[1];
                            if (constraintWidget$DimensionBehaviour10 == constraintWidget$DimensionBehaviour6 || constraintWidget$DimensionBehaviour10 == constraintWidget$DimensionBehaviour8) {
                                f(fVar, constraintWidget$DimensionBehaviour2, fVar.r(), constraintWidget$DimensionBehaviour6, (int) ((f5 * gVar.l()) + 0.5f));
                                fVar.f12505d.f2759e.d(fVar.r());
                                fVar.f12507e.f2759e.d(fVar.l());
                                fVar.f12499a = true;
                            }
                        } else if (c1428dArr[2].f12469f == null || c1428dArr[3].f12469f == null) {
                            f(fVar, constraintWidget$DimensionBehaviour5, 0, constraintWidget$DimensionBehaviour7, 0);
                            fVar.f12505d.f2759e.d(fVar.r());
                            fVar.f12507e.f2759e.d(fVar.l());
                            fVar.f12499a = true;
                        }
                    }
                    if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour4 && constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour4) {
                        if (i8 == 1 || i9 == 1) {
                            f(fVar, constraintWidget$DimensionBehaviour5, 0, constraintWidget$DimensionBehaviour5, 0);
                            fVar.f12505d.f2759e.f2751m = fVar.r();
                            fVar.f12507e.f2759e.f2751m = fVar.l();
                        } else if (i9 == 2 && i8 == 2 && constraintWidget$DimensionBehaviourArr2[0] == constraintWidget$DimensionBehaviour6 && constraintWidget$DimensionBehaviourArr2[1] == constraintWidget$DimensionBehaviour6) {
                            f(fVar, constraintWidget$DimensionBehaviour6, (int) ((f4 * gVar.r()) + 0.5f), constraintWidget$DimensionBehaviour6, (int) ((f5 * gVar.l()) + 0.5f));
                            fVar.f12505d.f2759e.d(fVar.r());
                            fVar.f12507e.f2759e.d(fVar.l());
                            fVar.f12499a = true;
                        }
                    }
                }
                it = it2;
            }
        }
    }

    public final void c() {
        ArrayList arrayList = this.f12706e;
        arrayList.clear();
        v.g gVar = this.f12705d;
        gVar.f12505d.f();
        gVar.f12507e.f();
        arrayList.add(gVar.f12505d);
        arrayList.add(gVar.f12507e);
        Iterator it = gVar.f12627s0.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            v.f fVar = (v.f) it.next();
            if (fVar instanceof v.j) {
                arrayList.add(new j(fVar));
            } else {
                if (fVar.y()) {
                    if (fVar.f12501b == null) {
                        fVar.f12501b = new C1442d(0, fVar);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(fVar.f12501b);
                } else {
                    arrayList.add(fVar.f12505d);
                }
                if (fVar.z()) {
                    if (fVar.f12503c == null) {
                        fVar.f12503c = new C1442d(1, fVar);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(fVar.f12503c);
                } else {
                    arrayList.add(fVar.f12507e);
                }
                if (fVar instanceof v.l) {
                    arrayList.add(new androidx.constraintlayout.core.widgets.analyzer.c(fVar));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((androidx.constraintlayout.core.widgets.analyzer.f) it2.next()).f();
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            androidx.constraintlayout.core.widgets.analyzer.f fVar2 = (androidx.constraintlayout.core.widgets.analyzer.f) it3.next();
            if (fVar2.f2756b != gVar) {
                fVar2.d();
            }
        }
        ArrayList arrayList2 = this.f12709h;
        arrayList2.clear();
        v.g gVar2 = this.f12702a;
        e(gVar2.f12505d, 0, arrayList2);
        e(gVar2.f12507e, 1, arrayList2);
        this.f12703b = false;
    }

    public final int d(v.g gVar, int i4) {
        ArrayList arrayList;
        int i5;
        int i6;
        float f4;
        v.g gVar2 = gVar;
        ArrayList arrayList2 = this.f12709h;
        int size = arrayList2.size();
        int i7 = 0;
        long j4 = 0;
        long j5 = 0;
        while (i7 < size) {
            androidx.constraintlayout.core.widgets.analyzer.f fVar = ((k) arrayList2.get(i7)).f12711a;
            if (!(fVar instanceof C1442d) ? !(i4 != 0 ? (fVar instanceof androidx.constraintlayout.core.widgets.analyzer.e) : (fVar instanceof androidx.constraintlayout.core.widgets.analyzer.d)) : ((C1442d) fVar).f2760f != i4) {
                androidx.constraintlayout.core.widgets.analyzer.a aVar = (i4 == 0 ? gVar2.f12505d : gVar2.f12507e).f2762h;
                androidx.constraintlayout.core.widgets.analyzer.a aVar2 = (i4 == 0 ? gVar2.f12505d : gVar2.f12507e).f2763i;
                boolean contains = ((ArrayList) fVar.f2762h.f2750l).contains(aVar);
                androidx.constraintlayout.core.widgets.analyzer.a aVar3 = fVar.f2763i;
                boolean contains2 = ((ArrayList) aVar3.f2750l).contains(aVar2);
                long j6 = fVar.j();
                androidx.constraintlayout.core.widgets.analyzer.a aVar4 = fVar.f2762h;
                if (contains && contains2) {
                    long b4 = k.b(aVar4, j5);
                    long a4 = k.a(aVar3, j5);
                    long j7 = b4 - j6;
                    int i8 = aVar3.f2744f;
                    arrayList = arrayList2;
                    i5 = size;
                    i6 = i7;
                    if (j7 >= (-i8)) {
                        j7 += i8;
                    }
                    long j8 = aVar4.f2744f;
                    long j9 = ((-a4) - j6) - j8;
                    if (j9 >= j8) {
                        j9 -= j8;
                    }
                    v.f fVar2 = fVar.f2756b;
                    if (i4 == 0) {
                        f4 = fVar2.f12512g0;
                    } else if (i4 == 1) {
                        f4 = fVar2.f12514h0;
                    } else {
                        fVar2.getClass();
                        f4 = -1.0f;
                    }
                    float f5 = (float) (f4 > 0.0f ? (((float) j7) / (1.0f - f4)) + (((float) j9) / f4) : 0L);
                    j5 = (aVar4.f2744f + ((((f5 * f4) + 0.5f) + j6) + f.a(1.0f, f4, f5, 0.5f))) - aVar3.f2744f;
                } else {
                    arrayList = arrayList2;
                    i5 = size;
                    i6 = i7;
                    j5 = contains ? Math.max(k.b(aVar4, aVar4.f2744f), aVar4.f2744f + j6) : contains2 ? Math.max(-k.a(aVar3, aVar3.f2744f), (-aVar3.f2744f) + j6) : (fVar.j() + aVar4.f2744f) - aVar3.f2744f;
                }
            } else {
                arrayList = arrayList2;
                i5 = size;
                i6 = i7;
            }
            j4 = Math.max(j4, j5);
            i7 = i6 + 1;
            j5 = 0;
            arrayList2 = arrayList;
            gVar2 = gVar;
            size = i5;
        }
        return (int) j4;
    }

    public final void e(androidx.constraintlayout.core.widgets.analyzer.f fVar, int i4, ArrayList arrayList) {
        androidx.constraintlayout.core.widgets.analyzer.a aVar;
        Iterator it = ((ArrayList) fVar.f2762h.f2749k).iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            aVar = fVar.f2763i;
            if (!hasNext) {
                break;
            }
            InterfaceC1443e interfaceC1443e = (InterfaceC1443e) it.next();
            if (interfaceC1443e instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                a((androidx.constraintlayout.core.widgets.analyzer.a) interfaceC1443e, i4, 0, arrayList, null);
            } else if (interfaceC1443e instanceof androidx.constraintlayout.core.widgets.analyzer.f) {
                a(((androidx.constraintlayout.core.widgets.analyzer.f) interfaceC1443e).f2762h, i4, 0, arrayList, null);
            }
        }
        Iterator it2 = ((ArrayList) aVar.f2749k).iterator();
        while (it2.hasNext()) {
            InterfaceC1443e interfaceC1443e2 = (InterfaceC1443e) it2.next();
            if (interfaceC1443e2 instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                a((androidx.constraintlayout.core.widgets.analyzer.a) interfaceC1443e2, i4, 1, arrayList, null);
            } else if (interfaceC1443e2 instanceof androidx.constraintlayout.core.widgets.analyzer.f) {
                a(((androidx.constraintlayout.core.widgets.analyzer.f) interfaceC1443e2).f2763i, i4, 1, arrayList, null);
            }
        }
        if (i4 == 1) {
            Iterator it3 = ((ArrayList) ((androidx.constraintlayout.core.widgets.analyzer.e) fVar).f2753k.f2749k).iterator();
            while (it3.hasNext()) {
                InterfaceC1443e interfaceC1443e3 = (InterfaceC1443e) it3.next();
                if (interfaceC1443e3 instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                    a((androidx.constraintlayout.core.widgets.analyzer.a) interfaceC1443e3, i4, 2, arrayList, null);
                }
            }
        }
    }

    public final void f(v.f fVar, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour, int i4, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2, int i5) {
        C1440b c1440b = this.f12708g;
        c1440b.f12687a = constraintWidget$DimensionBehaviour;
        c1440b.f12688b = constraintWidget$DimensionBehaviour2;
        c1440b.f12689c = i4;
        c1440b.f12690d = i5;
        this.f12707f.b(fVar, c1440b);
        fVar.O(c1440b.f12691e);
        fVar.L(c1440b.f12692f);
        fVar.f12478F = c1440b.f12694h;
        int i6 = c1440b.f12693g;
        fVar.f12506d0 = i6;
        fVar.f12478F = i6 > 0;
    }

    public final void g() {
        C1439a c1439a;
        Iterator it = this.f12702a.f12627s0.iterator();
        while (it.hasNext()) {
            v.f fVar = (v.f) it.next();
            if (!fVar.f12499a) {
                ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = fVar.f12494V;
                boolean z4 = false;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviourArr[0];
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviourArr[1];
                int i4 = fVar.f12535s;
                int i5 = fVar.f12536t;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z5 = constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour3 || (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour4 && i4 == 1);
                if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour3 || (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour4 && i5 == 1)) {
                    z4 = true;
                }
                androidx.constraintlayout.core.widgets.analyzer.b bVar = fVar.f12505d.f2759e;
                boolean z6 = bVar.f2748j;
                androidx.constraintlayout.core.widgets.analyzer.b bVar2 = fVar.f12507e.f2759e;
                boolean z7 = bVar2.f2748j;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = ConstraintWidget$DimensionBehaviour.FIXED;
                if (z6 && z7) {
                    f(fVar, constraintWidget$DimensionBehaviour5, bVar.f2745g, constraintWidget$DimensionBehaviour5, bVar2.f2745g);
                    fVar.f12499a = true;
                } else if (z6 && z4) {
                    f(fVar, constraintWidget$DimensionBehaviour5, bVar.f2745g, constraintWidget$DimensionBehaviour3, bVar2.f2745g);
                    if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour4) {
                        fVar.f12507e.f2759e.f2751m = fVar.l();
                    } else {
                        fVar.f12507e.f2759e.d(fVar.l());
                        fVar.f12499a = true;
                    }
                } else if (z7 && z5) {
                    f(fVar, constraintWidget$DimensionBehaviour3, bVar.f2745g, constraintWidget$DimensionBehaviour5, bVar2.f2745g);
                    if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour4) {
                        fVar.f12505d.f2759e.f2751m = fVar.r();
                    } else {
                        fVar.f12505d.f2759e.d(fVar.r());
                        fVar.f12499a = true;
                    }
                }
                if (fVar.f12499a && (c1439a = fVar.f12507e.f2754l) != null) {
                    c1439a.d(fVar.f12506d0);
                }
            }
        }
    }
}
