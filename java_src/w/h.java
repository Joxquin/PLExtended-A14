package w;

import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.HashSet;
import java.util.Iterator;
import v.C1428d;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final C1440b f12710a = new C1440b();

    public static boolean a(v.f fVar) {
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = fVar.f12494V;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviourArr[0];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviourArr[1];
        v.f fVar2 = fVar.f12495W;
        v.g gVar = fVar2 != null ? (v.g) fVar2 : null;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.FIXED;
        if (gVar != null) {
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = gVar.f12494V[0];
        }
        if (gVar != null) {
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = gVar.f12494V[1];
        }
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour6 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour7 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        boolean z4 = constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour3 || fVar.B() || constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour7 || (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour6 && fVar.f12535s == 0 && fVar.f12498Z == 0.0f && fVar.u(0)) || (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour6 && fVar.f12535s == 1 && fVar.v(0, fVar.r()));
        boolean z5 = constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour3 || fVar.C() || constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour7 || (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour6 && fVar.f12536t == 0 && fVar.f12498Z == 0.0f && fVar.u(1)) || (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour6 && fVar.f12536t == 1 && fVar.v(1, fVar.l()));
        if (fVar.f12498Z <= 0.0f || !(z4 || z5)) {
            return z4 && z5;
        }
        return true;
    }

    public static void b(int i4, v.f fVar, androidx.constraintlayout.widget.e eVar, boolean z4) {
        C1428d c1428d;
        C1428d c1428d2;
        Iterator it;
        boolean z5;
        C1428d c1428d3;
        C1428d c1428d4;
        if (fVar.f12525n) {
            return;
        }
        if (!(fVar instanceof v.g) && fVar.A() && a(fVar)) {
            v.g.V(fVar, eVar, new C1440b());
        }
        C1428d j4 = fVar.j(ConstraintAnchor$Type.LEFT);
        C1428d j5 = fVar.j(ConstraintAnchor$Type.RIGHT);
        int d4 = j4.d();
        int d5 = j5.d();
        HashSet hashSet = j4.f12464a;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        if (hashSet != null && j4.f12466c) {
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                C1428d c1428d5 = (C1428d) it2.next();
                v.f fVar2 = c1428d5.f12467d;
                int i5 = i4 + 1;
                boolean a4 = a(fVar2);
                if (fVar2.A() && a4) {
                    v.g.V(fVar2, eVar, new C1440b());
                }
                C1428d c1428d6 = fVar2.f12483K;
                C1428d c1428d7 = fVar2.f12485M;
                if ((c1428d5 == c1428d6 && (c1428d4 = c1428d7.f12469f) != null && c1428d4.f12466c) || (c1428d5 == c1428d7 && (c1428d3 = c1428d6.f12469f) != null && c1428d3.f12466c)) {
                    it = it2;
                    z5 = true;
                } else {
                    it = it2;
                    z5 = false;
                }
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = fVar2.f12494V[0];
                if (constraintWidget$DimensionBehaviour2 != constraintWidget$DimensionBehaviour || a4) {
                    if (!fVar2.A()) {
                        if (c1428d5 == c1428d6 && c1428d7.f12469f == null) {
                            int e4 = c1428d6.e() + d4;
                            fVar2.J(e4, fVar2.r() + e4);
                            b(i5, fVar2, eVar, z4);
                        } else if (c1428d5 == c1428d7 && c1428d6.f12469f == null) {
                            int e5 = d4 - c1428d7.e();
                            fVar2.J(e5 - fVar2.r(), e5);
                            b(i5, fVar2, eVar, z4);
                        } else if (z5 && !fVar2.y()) {
                            c(i5, fVar2, eVar, z4);
                        }
                    }
                } else if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour && fVar2.f12539w >= 0 && fVar2.f12538v >= 0 && ((fVar2.f12518j0 == 8 || (fVar2.f12535s == 0 && fVar2.f12498Z == 0.0f)) && !fVar2.y() && !fVar2.f12480H && z5 && !fVar2.y())) {
                    d(i5, fVar, eVar, fVar2, z4);
                }
                it2 = it;
            }
        }
        if (fVar instanceof v.j) {
            return;
        }
        HashSet hashSet2 = j5.f12464a;
        if (hashSet2 != null && j5.f12466c) {
            Iterator it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                C1428d c1428d8 = (C1428d) it3.next();
                v.f fVar3 = c1428d8.f12467d;
                int i6 = i4 + 1;
                boolean a5 = a(fVar3);
                if (fVar3.A() && a5) {
                    v.g.V(fVar3, eVar, new C1440b());
                }
                C1428d c1428d9 = fVar3.f12483K;
                C1428d c1428d10 = fVar3.f12485M;
                boolean z6 = (c1428d8 == c1428d9 && (c1428d2 = c1428d10.f12469f) != null && c1428d2.f12466c) || (c1428d8 == c1428d10 && (c1428d = c1428d9.f12469f) != null && c1428d.f12466c);
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = fVar3.f12494V[0];
                if (constraintWidget$DimensionBehaviour3 != constraintWidget$DimensionBehaviour || a5) {
                    if (!fVar3.A()) {
                        if (c1428d8 == c1428d9 && c1428d10.f12469f == null) {
                            int e6 = c1428d9.e() + d5;
                            fVar3.J(e6, fVar3.r() + e6);
                            b(i6, fVar3, eVar, z4);
                        } else if (c1428d8 == c1428d10 && c1428d9.f12469f == null) {
                            int e7 = d5 - c1428d10.e();
                            fVar3.J(e7 - fVar3.r(), e7);
                            b(i6, fVar3, eVar, z4);
                        } else if (z6 && !fVar3.y()) {
                            c(i6, fVar3, eVar, z4);
                        }
                    }
                } else if (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour && fVar3.f12539w >= 0 && fVar3.f12538v >= 0) {
                    if (fVar3.f12518j0 != 8) {
                        if (fVar3.f12535s == 0) {
                            if (fVar3.f12498Z == 0.0f) {
                            }
                        }
                    }
                    if (!fVar3.y() && !fVar3.f12480H && z6 && !fVar3.y()) {
                        d(i6, fVar, eVar, fVar3, z4);
                    }
                }
            }
        }
        fVar.f12525n = true;
    }

    public static void c(int i4, v.f fVar, androidx.constraintlayout.widget.e eVar, boolean z4) {
        float f4 = fVar.f12512g0;
        C1428d c1428d = fVar.f12483K;
        int d4 = c1428d.f12469f.d();
        C1428d c1428d2 = fVar.f12485M;
        int d5 = c1428d2.f12469f.d();
        int e4 = c1428d.e() + d4;
        int e5 = d5 - c1428d2.e();
        if (d4 == d5) {
            f4 = 0.5f;
        } else {
            d4 = e4;
            d5 = e5;
        }
        int r4 = fVar.r();
        int i5 = (d5 - d4) - r4;
        if (d4 > d5) {
            i5 = (d4 - d5) - r4;
        }
        int i6 = ((int) (i5 > 0 ? (f4 * i5) + 0.5f : f4 * i5)) + d4;
        int i7 = i6 + r4;
        if (d4 > d5) {
            i7 = i6 - r4;
        }
        fVar.J(i6, i7);
        b(i4 + 1, fVar, eVar, z4);
    }

    public static void d(int i4, v.f fVar, androidx.constraintlayout.widget.e eVar, v.f fVar2, boolean z4) {
        float f4 = fVar2.f12512g0;
        C1428d c1428d = fVar2.f12483K;
        int e4 = c1428d.e() + c1428d.f12469f.d();
        C1428d c1428d2 = fVar2.f12485M;
        int d4 = c1428d2.f12469f.d() - c1428d2.e();
        if (d4 >= e4) {
            int r4 = fVar2.r();
            if (fVar2.f12518j0 != 8) {
                int i5 = fVar2.f12535s;
                if (i5 == 2) {
                    r4 = (int) (fVar2.f12512g0 * 0.5f * (fVar instanceof v.g ? fVar.r() : fVar.f12495W.r()));
                } else if (i5 == 0) {
                    r4 = d4 - e4;
                }
                r4 = Math.max(fVar2.f12538v, r4);
                int i6 = fVar2.f12539w;
                if (i6 > 0) {
                    r4 = Math.min(i6, r4);
                }
            }
            int i7 = e4 + ((int) ((f4 * ((d4 - e4) - r4)) + 0.5f));
            fVar2.J(i7, r4 + i7);
            b(i4 + 1, fVar2, eVar, z4);
        }
    }

    public static void e(int i4, v.f fVar, androidx.constraintlayout.widget.e eVar) {
        float f4 = fVar.f12514h0;
        C1428d c1428d = fVar.f12484L;
        int d4 = c1428d.f12469f.d();
        C1428d c1428d2 = fVar.f12486N;
        int d5 = c1428d2.f12469f.d();
        int e4 = c1428d.e() + d4;
        int e5 = d5 - c1428d2.e();
        if (d4 == d5) {
            f4 = 0.5f;
        } else {
            d4 = e4;
            d5 = e5;
        }
        int l4 = fVar.l();
        int i5 = (d5 - d4) - l4;
        if (d4 > d5) {
            i5 = (d4 - d5) - l4;
        }
        int i6 = (int) (i5 > 0 ? (f4 * i5) + 0.5f : f4 * i5);
        int i7 = d4 + i6;
        int i8 = i7 + l4;
        if (d4 > d5) {
            i7 = d4 - i6;
            i8 = i7 - l4;
        }
        fVar.K(i7, i8);
        g(i4 + 1, fVar, eVar);
    }

    public static void f(int i4, v.f fVar, androidx.constraintlayout.widget.e eVar, v.f fVar2) {
        float f4 = fVar2.f12514h0;
        C1428d c1428d = fVar2.f12484L;
        int e4 = c1428d.e() + c1428d.f12469f.d();
        C1428d c1428d2 = fVar2.f12486N;
        int d4 = c1428d2.f12469f.d() - c1428d2.e();
        if (d4 >= e4) {
            int l4 = fVar2.l();
            if (fVar2.f12518j0 != 8) {
                int i5 = fVar2.f12536t;
                if (i5 == 2) {
                    l4 = (int) (f4 * 0.5f * (fVar instanceof v.g ? fVar.l() : fVar.f12495W.l()));
                } else if (i5 == 0) {
                    l4 = d4 - e4;
                }
                l4 = Math.max(fVar2.f12541y, l4);
                int i6 = fVar2.f12542z;
                if (i6 > 0) {
                    l4 = Math.min(i6, l4);
                }
            }
            int i7 = e4 + ((int) ((f4 * ((d4 - e4) - l4)) + 0.5f));
            fVar2.K(i7, l4 + i7);
            g(i4 + 1, fVar2, eVar);
        }
    }

    public static void g(int i4, v.f fVar, androidx.constraintlayout.widget.e eVar) {
        C1428d c1428d;
        C1428d c1428d2;
        C1428d c1428d3;
        C1428d c1428d4;
        C1428d c1428d5;
        if (fVar.f12527o) {
            return;
        }
        if (!(fVar instanceof v.g) && fVar.A() && a(fVar)) {
            v.g.V(fVar, eVar, new C1440b());
        }
        C1428d j4 = fVar.j(ConstraintAnchor$Type.TOP);
        C1428d j5 = fVar.j(ConstraintAnchor$Type.BOTTOM);
        int d4 = j4.d();
        int d5 = j5.d();
        HashSet hashSet = j4.f12464a;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        if (hashSet != null && j4.f12466c) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                C1428d c1428d6 = (C1428d) it.next();
                v.f fVar2 = c1428d6.f12467d;
                int i5 = i4 + 1;
                boolean a4 = a(fVar2);
                if (fVar2.A() && a4) {
                    v.g.V(fVar2, eVar, new C1440b());
                }
                C1428d c1428d7 = fVar2.f12484L;
                C1428d c1428d8 = fVar2.f12486N;
                boolean z4 = (c1428d6 == c1428d7 && (c1428d5 = c1428d8.f12469f) != null && c1428d5.f12466c) || (c1428d6 == c1428d8 && (c1428d4 = c1428d7.f12469f) != null && c1428d4.f12466c);
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = fVar2.f12494V[1];
                if (constraintWidget$DimensionBehaviour2 != constraintWidget$DimensionBehaviour || a4) {
                    if (!fVar2.A()) {
                        if (c1428d6 == c1428d7 && c1428d8.f12469f == null) {
                            int e4 = c1428d7.e() + d4;
                            fVar2.K(e4, fVar2.l() + e4);
                            g(i5, fVar2, eVar);
                        } else if (c1428d6 == c1428d8 && c1428d7.f12469f == null) {
                            int e5 = d4 - c1428d8.e();
                            fVar2.K(e5 - fVar2.l(), e5);
                            g(i5, fVar2, eVar);
                        } else if (z4 && !fVar2.z()) {
                            e(i5, fVar2, eVar);
                        }
                    }
                } else if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour && fVar2.f12542z >= 0 && fVar2.f12541y >= 0 && (fVar2.f12518j0 == 8 || (fVar2.f12536t == 0 && fVar2.f12498Z == 0.0f))) {
                    if (!fVar2.z() && !fVar2.f12480H && z4 && !fVar2.z()) {
                        f(i5, fVar, eVar, fVar2);
                    }
                }
            }
        }
        if (fVar instanceof v.j) {
            return;
        }
        HashSet hashSet2 = j5.f12464a;
        if (hashSet2 != null && j5.f12466c) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                C1428d c1428d9 = (C1428d) it2.next();
                v.f fVar3 = c1428d9.f12467d;
                int i6 = i4 + 1;
                boolean a5 = a(fVar3);
                if (fVar3.A() && a5) {
                    v.g.V(fVar3, eVar, new C1440b());
                }
                C1428d c1428d10 = fVar3.f12484L;
                C1428d c1428d11 = fVar3.f12486N;
                boolean z5 = (c1428d9 == c1428d10 && (c1428d3 = c1428d11.f12469f) != null && c1428d3.f12466c) || (c1428d9 == c1428d11 && (c1428d2 = c1428d10.f12469f) != null && c1428d2.f12466c);
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = fVar3.f12494V[1];
                if (constraintWidget$DimensionBehaviour3 != constraintWidget$DimensionBehaviour || a5) {
                    if (!fVar3.A()) {
                        if (c1428d9 == c1428d10 && c1428d11.f12469f == null) {
                            int e6 = c1428d10.e() + d5;
                            fVar3.K(e6, fVar3.l() + e6);
                            g(i6, fVar3, eVar);
                        } else if (c1428d9 == c1428d11 && c1428d10.f12469f == null) {
                            int e7 = d5 - c1428d11.e();
                            fVar3.K(e7 - fVar3.l(), e7);
                            g(i6, fVar3, eVar);
                        } else if (z5 && !fVar3.z()) {
                            e(i6, fVar3, eVar);
                        }
                    }
                } else if (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour && fVar3.f12542z >= 0 && fVar3.f12541y >= 0) {
                    if (fVar3.f12518j0 != 8) {
                        if (fVar3.f12536t == 0) {
                            if (fVar3.f12498Z == 0.0f) {
                            }
                        }
                    }
                    if (!fVar3.z() && !fVar3.f12480H && z5 && !fVar3.z()) {
                        f(i6, fVar, eVar, fVar3);
                    }
                }
            }
        }
        C1428d j6 = fVar.j(ConstraintAnchor$Type.BASELINE);
        if (j6.f12464a != null && j6.f12466c) {
            int d6 = j6.d();
            Iterator it3 = j6.f12464a.iterator();
            while (it3.hasNext()) {
                C1428d c1428d12 = (C1428d) it3.next();
                v.f fVar4 = c1428d12.f12467d;
                int i7 = i4 + 1;
                boolean a6 = a(fVar4);
                if (fVar4.A() && a6) {
                    v.g.V(fVar4, eVar, new C1440b());
                }
                if (fVar4.f12494V[1] != constraintWidget$DimensionBehaviour || a6) {
                    if (!fVar4.A() && c1428d12 == (c1428d = fVar4.f12487O)) {
                        int e8 = c1428d12.e() + d6;
                        if (fVar4.f12478F) {
                            int i8 = e8 - fVar4.f12506d0;
                            int i9 = fVar4.f12497Y + i8;
                            fVar4.f12504c0 = i8;
                            fVar4.f12484L.l(i8);
                            fVar4.f12486N.l(i9);
                            c1428d.l(e8);
                            fVar4.f12523m = true;
                        }
                        g(i7, fVar4, eVar);
                    }
                }
            }
        }
        fVar.f12527o = true;
    }
}
