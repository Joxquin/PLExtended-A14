package v;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean[] f12615a = new boolean[3];

    public static void a(g gVar, t.f fVar, f fVar2) {
        fVar2.f12529p = -1;
        fVar2.f12531q = -1;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = gVar.f12494V[0];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.MATCH_PARENT;
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = fVar2.f12494V;
        if (constraintWidget$DimensionBehaviour != constraintWidget$DimensionBehaviour2 && constraintWidget$DimensionBehaviourArr[0] == constraintWidget$DimensionBehaviour3) {
            C1428d c1428d = fVar2.f12483K;
            int i4 = c1428d.f12470g;
            int r4 = gVar.r();
            C1428d c1428d2 = fVar2.f12485M;
            int i5 = r4 - c1428d2.f12470g;
            c1428d.f12472i = fVar.k(c1428d);
            c1428d2.f12472i = fVar.k(c1428d2);
            fVar.d(c1428d.f12472i, i4);
            fVar.d(c1428d2.f12472i, i5);
            fVar2.f12529p = 2;
            fVar2.f12502b0 = i4;
            int i6 = i5 - i4;
            fVar2.f12496X = i6;
            int i7 = fVar2.f12508e0;
            if (i6 < i7) {
                fVar2.f12496X = i7;
            }
        }
        if (gVar.f12494V[1] == constraintWidget$DimensionBehaviour2 || constraintWidget$DimensionBehaviourArr[1] != constraintWidget$DimensionBehaviour3) {
            return;
        }
        C1428d c1428d3 = fVar2.f12484L;
        int i8 = c1428d3.f12470g;
        int l4 = gVar.l();
        C1428d c1428d4 = fVar2.f12486N;
        int i9 = l4 - c1428d4.f12470g;
        c1428d3.f12472i = fVar.k(c1428d3);
        c1428d4.f12472i = fVar.k(c1428d4);
        fVar.d(c1428d3.f12472i, i8);
        fVar.d(c1428d4.f12472i, i9);
        if (fVar2.f12506d0 > 0 || fVar2.f12518j0 == 8) {
            C1428d c1428d5 = fVar2.f12487O;
            c1428d5.f12472i = fVar.k(c1428d5);
            fVar.d(c1428d5.f12472i, fVar2.f12506d0 + i8);
        }
        fVar2.f12531q = 2;
        fVar2.f12504c0 = i8;
        int i10 = i9 - i8;
        fVar2.f12497Y = i10;
        int i11 = fVar2.f12510f0;
        if (i10 < i11) {
            fVar2.f12497Y = i11;
        }
    }

    public static final boolean b(int i4, int i5) {
        return (i4 & i5) == i5;
    }
}
