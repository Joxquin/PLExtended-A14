package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.ArrayList;
import java.util.List;
import v.C1428d;
import v.k;
/* loaded from: classes.dex */
public final class d extends f {

    /* renamed from: k  reason: collision with root package name */
    public static final int[] f2752k = new int[2];

    public d(v.f fVar) {
        super(fVar);
        this.f2762h.f2743e = DependencyNode$Type.LEFT;
        this.f2763i.f2743e = DependencyNode$Type.RIGHT;
        this.f2760f = 0;
    }

    public static void m(int[] iArr, int i4, int i5, int i6, int i7, float f4, int i8) {
        int i9 = i5 - i4;
        int i10 = i7 - i6;
        if (i8 != -1) {
            if (i8 == 0) {
                iArr[0] = (int) ((i10 * f4) + 0.5f);
                iArr[1] = i10;
                return;
            } else if (i8 != 1) {
                return;
            } else {
                iArr[0] = i9;
                iArr[1] = (int) ((i9 * f4) + 0.5f);
                return;
            }
        }
        int i11 = (int) ((i10 * f4) + 0.5f);
        int i12 = (int) ((i9 / f4) + 0.5f);
        if (i11 <= i9) {
            iArr[0] = i11;
            iArr[1] = i10;
        } else if (i12 <= i10) {
            iArr[0] = i9;
            iArr[1] = i12;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x0262, code lost:
        if (r8 != 1) goto L127;
     */
    @Override // androidx.constraintlayout.core.widgets.analyzer.f, w.InterfaceC1443e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(w.InterfaceC1443e r24) {
        /*
            Method dump skipped, instructions count: 952
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.d.a(w.e):void");
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void d() {
        v.f fVar;
        v.f fVar2;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour;
        v.f fVar3;
        v.f fVar4;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2;
        v.f fVar5 = this.f2756b;
        boolean z4 = fVar5.f12499a;
        b bVar = this.f2759e;
        if (z4) {
            bVar.d(fVar5.r());
        }
        boolean z5 = bVar.f2748j;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.MATCH_PARENT;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = ConstraintWidget$DimensionBehaviour.FIXED;
        a aVar = this.f2763i;
        a aVar2 = this.f2762h;
        if (!z5) {
            v.f fVar6 = this.f2756b;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour6 = fVar6.f12494V[0];
            this.f2758d = constraintWidget$DimensionBehaviour6;
            if (constraintWidget$DimensionBehaviour6 != constraintWidget$DimensionBehaviour3) {
                if (constraintWidget$DimensionBehaviour6 == constraintWidget$DimensionBehaviour4 && (fVar4 = fVar6.f12495W) != null && ((constraintWidget$DimensionBehaviour2 = fVar4.f12494V[0]) == constraintWidget$DimensionBehaviour5 || constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour4)) {
                    int r4 = (fVar4.r() - this.f2756b.f12483K.e()) - this.f2756b.f12485M.e();
                    f.b(aVar2, fVar4.f12505d.f2762h, this.f2756b.f12483K.e());
                    f.b(aVar, fVar4.f12505d.f2763i, -this.f2756b.f12485M.e());
                    bVar.d(r4);
                    return;
                } else if (constraintWidget$DimensionBehaviour6 == constraintWidget$DimensionBehaviour5) {
                    bVar.d(fVar6.r());
                }
            }
        } else if (this.f2758d == constraintWidget$DimensionBehaviour4 && (fVar2 = (fVar = this.f2756b).f12495W) != null && ((constraintWidget$DimensionBehaviour = fVar2.f12494V[0]) == constraintWidget$DimensionBehaviour5 || constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour4)) {
            f.b(aVar2, fVar2.f12505d.f2762h, fVar.f12483K.e());
            f.b(aVar, fVar2.f12505d.f2763i, -this.f2756b.f12485M.e());
            return;
        }
        if (bVar.f2748j) {
            v.f fVar7 = this.f2756b;
            if (fVar7.f12499a) {
                C1428d[] c1428dArr = fVar7.f12491S;
                C1428d c1428d = c1428dArr[0];
                C1428d c1428d2 = c1428d.f12469f;
                if (c1428d2 != null && c1428dArr[1].f12469f != null) {
                    if (fVar7.y()) {
                        aVar2.f2744f = this.f2756b.f12491S[0].e();
                        aVar.f2744f = -this.f2756b.f12491S[1].e();
                        return;
                    }
                    a h4 = f.h(this.f2756b.f12491S[0]);
                    if (h4 != null) {
                        f.b(aVar2, h4, this.f2756b.f12491S[0].e());
                    }
                    a h5 = f.h(this.f2756b.f12491S[1]);
                    if (h5 != null) {
                        f.b(aVar, h5, -this.f2756b.f12491S[1].e());
                    }
                    aVar2.f2740b = true;
                    aVar.f2740b = true;
                    return;
                } else if (c1428d2 != null) {
                    a h6 = f.h(c1428d);
                    if (h6 != null) {
                        f.b(aVar2, h6, this.f2756b.f12491S[0].e());
                        f.b(aVar, aVar2, bVar.f2745g);
                        return;
                    }
                    return;
                } else {
                    C1428d c1428d3 = c1428dArr[1];
                    if (c1428d3.f12469f != null) {
                        a h7 = f.h(c1428d3);
                        if (h7 != null) {
                            f.b(aVar, h7, -this.f2756b.f12491S[1].e());
                            f.b(aVar2, aVar, -bVar.f2745g);
                            return;
                        }
                        return;
                    } else if ((fVar7 instanceof k) || fVar7.f12495W == null || fVar7.j(ConstraintAnchor$Type.CENTER).f12469f != null) {
                        return;
                    } else {
                        v.f fVar8 = this.f2756b;
                        f.b(aVar2, fVar8.f12495W.f12505d.f2762h, fVar8.s());
                        f.b(aVar, aVar2, bVar.f2745g);
                        return;
                    }
                }
            }
        }
        if (this.f2758d == constraintWidget$DimensionBehaviour3) {
            v.f fVar9 = this.f2756b;
            int i4 = fVar9.f12535s;
            List list = bVar.f2749k;
            List list2 = bVar.f2750l;
            if (i4 == 2) {
                v.f fVar10 = fVar9.f12495W;
                if (fVar10 != null) {
                    b bVar2 = fVar10.f12507e.f2759e;
                    ((ArrayList) list2).add(bVar2);
                    ((ArrayList) bVar2.f2749k).add(bVar);
                    bVar.f2740b = true;
                    ((ArrayList) list).add(aVar2);
                    ((ArrayList) list).add(aVar);
                }
            } else if (i4 == 3) {
                if (fVar9.f12536t == 3) {
                    aVar2.f2739a = this;
                    aVar.f2739a = this;
                    e eVar = fVar9.f12507e;
                    eVar.f2762h.f2739a = this;
                    eVar.f2763i.f2739a = this;
                    bVar.f2739a = this;
                    if (fVar9.z()) {
                        ((ArrayList) list2).add(this.f2756b.f12507e.f2759e);
                        ((ArrayList) this.f2756b.f12507e.f2759e.f2749k).add(bVar);
                        e eVar2 = this.f2756b.f12507e;
                        eVar2.f2759e.f2739a = this;
                        ((ArrayList) list2).add(eVar2.f2762h);
                        ((ArrayList) list2).add(this.f2756b.f12507e.f2763i);
                        ((ArrayList) this.f2756b.f12507e.f2762h.f2749k).add(bVar);
                        ((ArrayList) this.f2756b.f12507e.f2763i.f2749k).add(bVar);
                    } else if (this.f2756b.y()) {
                        ((ArrayList) this.f2756b.f12507e.f2759e.f2750l).add(bVar);
                        ((ArrayList) list).add(this.f2756b.f12507e.f2759e);
                    } else {
                        ((ArrayList) this.f2756b.f12507e.f2759e.f2750l).add(bVar);
                    }
                } else {
                    b bVar3 = fVar9.f12507e.f2759e;
                    ((ArrayList) list2).add(bVar3);
                    ((ArrayList) bVar3.f2749k).add(bVar);
                    ((ArrayList) this.f2756b.f12507e.f2762h.f2749k).add(bVar);
                    ((ArrayList) this.f2756b.f12507e.f2763i.f2749k).add(bVar);
                    bVar.f2740b = true;
                    ((ArrayList) list).add(aVar2);
                    ((ArrayList) list).add(aVar);
                    ((ArrayList) aVar2.f2750l).add(bVar);
                    ((ArrayList) aVar.f2750l).add(bVar);
                }
            }
        }
        v.f fVar11 = this.f2756b;
        C1428d[] c1428dArr2 = fVar11.f12491S;
        C1428d c1428d4 = c1428dArr2[0];
        C1428d c1428d5 = c1428d4.f12469f;
        if (c1428d5 != null && c1428dArr2[1].f12469f != null) {
            if (fVar11.y()) {
                aVar2.f2744f = this.f2756b.f12491S[0].e();
                aVar.f2744f = -this.f2756b.f12491S[1].e();
                return;
            }
            a h8 = f.h(this.f2756b.f12491S[0]);
            a h9 = f.h(this.f2756b.f12491S[1]);
            if (h8 != null) {
                h8.b(this);
            }
            if (h9 != null) {
                h9.b(this);
            }
            this.f2764j = WidgetRun$RunType.CENTER;
        } else if (c1428d5 != null) {
            a h10 = f.h(c1428d4);
            if (h10 != null) {
                f.b(aVar2, h10, this.f2756b.f12491S[0].e());
                c(aVar, aVar2, 1, bVar);
            }
        } else {
            C1428d c1428d6 = c1428dArr2[1];
            if (c1428d6.f12469f != null) {
                a h11 = f.h(c1428d6);
                if (h11 != null) {
                    f.b(aVar, h11, -this.f2756b.f12491S[1].e());
                    c(aVar2, aVar, -1, bVar);
                }
            } else if ((fVar11 instanceof k) || (fVar3 = fVar11.f12495W) == null) {
            } else {
                f.b(aVar2, fVar3.f12505d.f2762h, fVar11.s());
                c(aVar, aVar2, 1, bVar);
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void e() {
        a aVar = this.f2762h;
        if (aVar.f2748j) {
            this.f2756b.f12502b0 = aVar.f2745g;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void f() {
        this.f2757c = null;
        this.f2762h.c();
        this.f2763i.c();
        this.f2759e.c();
        this.f2761g = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final boolean k() {
        return this.f2758d != ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT || this.f2756b.f12535s == 0;
    }

    public final void n() {
        this.f2761g = false;
        a aVar = this.f2762h;
        aVar.c();
        aVar.f2748j = false;
        a aVar2 = this.f2763i;
        aVar2.c();
        aVar2.f2748j = false;
        this.f2759e.f2748j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.f2756b.f12520k0;
    }
}
