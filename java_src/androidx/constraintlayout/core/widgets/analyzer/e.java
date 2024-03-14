package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.ArrayList;
import java.util.List;
import v.C1428d;
import v.k;
import w.C1439a;
import w.InterfaceC1443e;
/* loaded from: classes.dex */
public final class e extends f {

    /* renamed from: k  reason: collision with root package name */
    public final a f2753k;

    /* renamed from: l  reason: collision with root package name */
    public C1439a f2754l;

    public e(v.f fVar) {
        super(fVar);
        a aVar = new a(this);
        this.f2753k = aVar;
        this.f2754l = null;
        this.f2762h.f2743e = DependencyNode$Type.TOP;
        this.f2763i.f2743e = DependencyNode$Type.BOTTOM;
        aVar.f2743e = DependencyNode$Type.BASELINE;
        this.f2760f = 1;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f, w.InterfaceC1443e
    public final void a(InterfaceC1443e interfaceC1443e) {
        b bVar;
        float f4;
        float f5;
        float f6;
        int i4;
        if (this.f2764j.ordinal() == 3) {
            v.f fVar = this.f2756b;
            l(fVar.f12484L, fVar.f12486N, 1);
            return;
        }
        b bVar2 = this.f2759e;
        boolean z4 = bVar2.f2741c;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        if (z4 && !bVar2.f2748j && this.f2758d == constraintWidget$DimensionBehaviour) {
            v.f fVar2 = this.f2756b;
            int i5 = fVar2.f12536t;
            if (i5 == 2) {
                v.f fVar3 = fVar2.f12495W;
                if (fVar3 != null) {
                    if (fVar3.f12507e.f2759e.f2748j) {
                        bVar2.d((int) ((bVar.f2745g * fVar2.f12473A) + 0.5f));
                    }
                }
            } else if (i5 == 3) {
                b bVar3 = fVar2.f12505d.f2759e;
                if (bVar3.f2748j) {
                    int i6 = fVar2.f12500a0;
                    if (i6 == -1) {
                        f4 = bVar3.f2745g;
                        f5 = fVar2.f12498Z;
                    } else if (i6 == 0) {
                        f6 = bVar3.f2745g * fVar2.f12498Z;
                        i4 = (int) (f6 + 0.5f);
                        bVar2.d(i4);
                    } else if (i6 != 1) {
                        i4 = 0;
                        bVar2.d(i4);
                    } else {
                        f4 = bVar3.f2745g;
                        f5 = fVar2.f12498Z;
                    }
                    f6 = f4 / f5;
                    i4 = (int) (f6 + 0.5f);
                    bVar2.d(i4);
                }
            }
        }
        a aVar = this.f2762h;
        if (aVar.f2741c) {
            a aVar2 = this.f2763i;
            if (aVar2.f2741c) {
                if (aVar.f2748j && aVar2.f2748j && bVar2.f2748j) {
                    return;
                }
                boolean z5 = bVar2.f2748j;
                List list = aVar.f2750l;
                List list2 = aVar2.f2750l;
                if (!z5 && this.f2758d == constraintWidget$DimensionBehaviour) {
                    v.f fVar4 = this.f2756b;
                    if (fVar4.f12535s == 0 && !fVar4.z()) {
                        int i7 = ((a) ((ArrayList) list).get(0)).f2745g + aVar.f2744f;
                        int i8 = ((a) ((ArrayList) list2).get(0)).f2745g + aVar2.f2744f;
                        aVar.d(i7);
                        aVar2.d(i8);
                        bVar2.d(i8 - i7);
                        return;
                    }
                }
                if (!bVar2.f2748j && this.f2758d == constraintWidget$DimensionBehaviour && this.f2755a == 1 && ((ArrayList) list).size() > 0 && ((ArrayList) list2).size() > 0) {
                    int i9 = (((a) ((ArrayList) list2).get(0)).f2745g + aVar2.f2744f) - (((a) ((ArrayList) list).get(0)).f2745g + aVar.f2744f);
                    int i10 = bVar2.f2751m;
                    if (i9 < i10) {
                        bVar2.d(i9);
                    } else {
                        bVar2.d(i10);
                    }
                }
                if (bVar2.f2748j && ((ArrayList) list).size() > 0 && ((ArrayList) list2).size() > 0) {
                    a aVar3 = (a) ((ArrayList) list).get(0);
                    a aVar4 = (a) ((ArrayList) list2).get(0);
                    int i11 = aVar3.f2745g;
                    int i12 = aVar.f2744f + i11;
                    int i13 = aVar4.f2745g;
                    int i14 = aVar2.f2744f + i13;
                    float f7 = this.f2756b.f12514h0;
                    if (aVar3 == aVar4) {
                        f7 = 0.5f;
                    } else {
                        i11 = i12;
                        i13 = i14;
                    }
                    aVar.d((int) ((((i13 - i11) - bVar2.f2745g) * f7) + i11 + 0.5f));
                    aVar2.d(aVar.f2745g + bVar2.f2745g);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void d() {
        v.f fVar;
        v.f fVar2;
        v.f fVar3;
        v.f fVar4;
        v.f fVar5 = this.f2756b;
        boolean z4 = fVar5.f12499a;
        b bVar = this.f2759e;
        if (z4) {
            bVar.d(fVar5.l());
        }
        boolean z5 = bVar.f2748j;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_PARENT;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.FIXED;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        a aVar = this.f2763i;
        a aVar2 = this.f2762h;
        if (!z5) {
            v.f fVar6 = this.f2756b;
            this.f2758d = fVar6.f12494V[1];
            if (fVar6.f12478F) {
                this.f2754l = new C1439a(this);
            }
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = this.f2758d;
            if (constraintWidget$DimensionBehaviour4 != constraintWidget$DimensionBehaviour3) {
                if (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour && (fVar4 = this.f2756b.f12495W) != null && fVar4.f12494V[1] == constraintWidget$DimensionBehaviour2) {
                    int l4 = (fVar4.l() - this.f2756b.f12484L.e()) - this.f2756b.f12486N.e();
                    f.b(aVar2, fVar4.f12507e.f2762h, this.f2756b.f12484L.e());
                    f.b(aVar, fVar4.f12507e.f2763i, -this.f2756b.f12486N.e());
                    bVar.d(l4);
                    return;
                } else if (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour2) {
                    bVar.d(this.f2756b.l());
                }
            }
        } else if (this.f2758d == constraintWidget$DimensionBehaviour && (fVar2 = (fVar = this.f2756b).f12495W) != null && fVar2.f12494V[1] == constraintWidget$DimensionBehaviour2) {
            f.b(aVar2, fVar2.f12507e.f2762h, fVar.f12484L.e());
            f.b(aVar, fVar2.f12507e.f2763i, -this.f2756b.f12486N.e());
            return;
        }
        boolean z6 = bVar.f2748j;
        a aVar3 = this.f2753k;
        if (z6) {
            v.f fVar7 = this.f2756b;
            if (fVar7.f12499a) {
                C1428d[] c1428dArr = fVar7.f12491S;
                C1428d c1428d = c1428dArr[2];
                C1428d c1428d2 = c1428d.f12469f;
                if (c1428d2 != null && c1428dArr[3].f12469f != null) {
                    if (fVar7.z()) {
                        aVar2.f2744f = this.f2756b.f12491S[2].e();
                        aVar.f2744f = -this.f2756b.f12491S[3].e();
                    } else {
                        a h4 = f.h(this.f2756b.f12491S[2]);
                        if (h4 != null) {
                            f.b(aVar2, h4, this.f2756b.f12491S[2].e());
                        }
                        a h5 = f.h(this.f2756b.f12491S[3]);
                        if (h5 != null) {
                            f.b(aVar, h5, -this.f2756b.f12491S[3].e());
                        }
                        aVar2.f2740b = true;
                        aVar.f2740b = true;
                    }
                    v.f fVar8 = this.f2756b;
                    if (fVar8.f12478F) {
                        f.b(aVar3, aVar2, fVar8.f12506d0);
                        return;
                    }
                    return;
                } else if (c1428d2 != null) {
                    a h6 = f.h(c1428d);
                    if (h6 != null) {
                        f.b(aVar2, h6, this.f2756b.f12491S[2].e());
                        f.b(aVar, aVar2, bVar.f2745g);
                        v.f fVar9 = this.f2756b;
                        if (fVar9.f12478F) {
                            f.b(aVar3, aVar2, fVar9.f12506d0);
                            return;
                        }
                        return;
                    }
                    return;
                } else {
                    C1428d c1428d3 = c1428dArr[3];
                    if (c1428d3.f12469f != null) {
                        a h7 = f.h(c1428d3);
                        if (h7 != null) {
                            f.b(aVar, h7, -this.f2756b.f12491S[3].e());
                            f.b(aVar2, aVar, -bVar.f2745g);
                        }
                        v.f fVar10 = this.f2756b;
                        if (fVar10.f12478F) {
                            f.b(aVar3, aVar2, fVar10.f12506d0);
                            return;
                        }
                        return;
                    }
                    C1428d c1428d4 = c1428dArr[4];
                    if (c1428d4.f12469f != null) {
                        a h8 = f.h(c1428d4);
                        if (h8 != null) {
                            f.b(aVar3, h8, 0);
                            f.b(aVar2, aVar3, -this.f2756b.f12506d0);
                            f.b(aVar, aVar2, bVar.f2745g);
                            return;
                        }
                        return;
                    } else if ((fVar7 instanceof k) || fVar7.f12495W == null || fVar7.j(ConstraintAnchor$Type.CENTER).f12469f != null) {
                        return;
                    } else {
                        v.f fVar11 = this.f2756b;
                        f.b(aVar2, fVar11.f12495W.f12507e.f2762h, fVar11.t());
                        f.b(aVar, aVar2, bVar.f2745g);
                        v.f fVar12 = this.f2756b;
                        if (fVar12.f12478F) {
                            f.b(aVar3, aVar2, fVar12.f12506d0);
                            return;
                        }
                        return;
                    }
                }
            }
        }
        List list = bVar.f2750l;
        if (z6 || this.f2758d != constraintWidget$DimensionBehaviour3) {
            bVar.b(this);
        } else {
            v.f fVar13 = this.f2756b;
            int i4 = fVar13.f12536t;
            List list2 = bVar.f2749k;
            if (i4 == 2) {
                v.f fVar14 = fVar13.f12495W;
                if (fVar14 != null) {
                    b bVar2 = fVar14.f12507e.f2759e;
                    ((ArrayList) list).add(bVar2);
                    ((ArrayList) bVar2.f2749k).add(bVar);
                    bVar.f2740b = true;
                    ((ArrayList) list2).add(aVar2);
                    ((ArrayList) list2).add(aVar);
                }
            } else if (i4 == 3 && !fVar13.z()) {
                v.f fVar15 = this.f2756b;
                if (fVar15.f12535s != 3) {
                    b bVar3 = fVar15.f12505d.f2759e;
                    ((ArrayList) list).add(bVar3);
                    ((ArrayList) bVar3.f2749k).add(bVar);
                    bVar.f2740b = true;
                    ((ArrayList) list2).add(aVar2);
                    ((ArrayList) list2).add(aVar);
                }
            }
        }
        v.f fVar16 = this.f2756b;
        C1428d[] c1428dArr2 = fVar16.f12491S;
        C1428d c1428d5 = c1428dArr2[2];
        C1428d c1428d6 = c1428d5.f12469f;
        if (c1428d6 != null && c1428dArr2[3].f12469f != null) {
            if (fVar16.z()) {
                aVar2.f2744f = this.f2756b.f12491S[2].e();
                aVar.f2744f = -this.f2756b.f12491S[3].e();
            } else {
                a h9 = f.h(this.f2756b.f12491S[2]);
                a h10 = f.h(this.f2756b.f12491S[3]);
                if (h9 != null) {
                    h9.b(this);
                }
                if (h10 != null) {
                    h10.b(this);
                }
                this.f2764j = WidgetRun$RunType.CENTER;
            }
            if (this.f2756b.f12478F) {
                c(aVar3, aVar2, 1, this.f2754l);
            }
        } else if (c1428d6 != null) {
            a h11 = f.h(c1428d5);
            if (h11 != null) {
                f.b(aVar2, h11, this.f2756b.f12491S[2].e());
                c(aVar, aVar2, 1, bVar);
                if (this.f2756b.f12478F) {
                    c(aVar3, aVar2, 1, this.f2754l);
                }
                if (this.f2758d == constraintWidget$DimensionBehaviour3) {
                    v.f fVar17 = this.f2756b;
                    if (fVar17.f12498Z > 0.0f) {
                        d dVar = fVar17.f12505d;
                        if (dVar.f2758d == constraintWidget$DimensionBehaviour3) {
                            ((ArrayList) dVar.f2759e.f2749k).add(bVar);
                            ((ArrayList) list).add(this.f2756b.f12505d.f2759e);
                            bVar.f2739a = this;
                        }
                    }
                }
            }
        } else {
            C1428d c1428d7 = c1428dArr2[3];
            if (c1428d7.f12469f != null) {
                a h12 = f.h(c1428d7);
                if (h12 != null) {
                    f.b(aVar, h12, -this.f2756b.f12491S[3].e());
                    c(aVar2, aVar, -1, bVar);
                    if (this.f2756b.f12478F) {
                        c(aVar3, aVar2, 1, this.f2754l);
                    }
                }
            } else {
                C1428d c1428d8 = c1428dArr2[4];
                if (c1428d8.f12469f != null) {
                    a h13 = f.h(c1428d8);
                    if (h13 != null) {
                        f.b(aVar3, h13, 0);
                        c(aVar2, aVar3, -1, this.f2754l);
                        c(aVar, aVar2, 1, bVar);
                    }
                } else if (!(fVar16 instanceof k) && (fVar3 = fVar16.f12495W) != null) {
                    f.b(aVar2, fVar3.f12507e.f2762h, fVar16.t());
                    c(aVar, aVar2, 1, bVar);
                    if (this.f2756b.f12478F) {
                        c(aVar3, aVar2, 1, this.f2754l);
                    }
                    if (this.f2758d == constraintWidget$DimensionBehaviour3) {
                        v.f fVar18 = this.f2756b;
                        if (fVar18.f12498Z > 0.0f) {
                            d dVar2 = fVar18.f12505d;
                            if (dVar2.f2758d == constraintWidget$DimensionBehaviour3) {
                                ((ArrayList) dVar2.f2759e.f2749k).add(bVar);
                                ((ArrayList) list).add(this.f2756b.f12505d.f2759e);
                                bVar.f2739a = this;
                            }
                        }
                    }
                }
            }
        }
        if (((ArrayList) list).size() == 0) {
            bVar.f2741c = true;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void e() {
        a aVar = this.f2762h;
        if (aVar.f2748j) {
            this.f2756b.f12504c0 = aVar.f2745g;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void f() {
        this.f2757c = null;
        this.f2762h.c();
        this.f2763i.c();
        this.f2753k.c();
        this.f2759e.c();
        this.f2761g = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final boolean k() {
        return this.f2758d != ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT || this.f2756b.f12536t == 0;
    }

    public final void m() {
        this.f2761g = false;
        a aVar = this.f2762h;
        aVar.c();
        aVar.f2748j = false;
        a aVar2 = this.f2763i;
        aVar2.c();
        aVar2.f2748j = false;
        a aVar3 = this.f2753k;
        aVar3.c();
        aVar3.f2748j = false;
        this.f2759e.f2748j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.f2756b.f12520k0;
    }
}
