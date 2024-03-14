package v;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class i extends n {

    /* renamed from: c1  reason: collision with root package name */
    public f[] f12605c1;

    /* renamed from: F0  reason: collision with root package name */
    public int f12582F0 = -1;

    /* renamed from: G0  reason: collision with root package name */
    public int f12583G0 = -1;

    /* renamed from: H0  reason: collision with root package name */
    public int f12584H0 = -1;

    /* renamed from: I0  reason: collision with root package name */
    public int f12585I0 = -1;

    /* renamed from: J0  reason: collision with root package name */
    public int f12586J0 = -1;

    /* renamed from: K0  reason: collision with root package name */
    public int f12587K0 = -1;

    /* renamed from: L0  reason: collision with root package name */
    public float f12588L0 = 0.5f;

    /* renamed from: M0  reason: collision with root package name */
    public float f12589M0 = 0.5f;

    /* renamed from: N0  reason: collision with root package name */
    public float f12590N0 = 0.5f;

    /* renamed from: O0  reason: collision with root package name */
    public float f12591O0 = 0.5f;

    /* renamed from: P0  reason: collision with root package name */
    public float f12592P0 = 0.5f;

    /* renamed from: Q0  reason: collision with root package name */
    public float f12593Q0 = 0.5f;

    /* renamed from: R0  reason: collision with root package name */
    public int f12594R0 = 0;

    /* renamed from: S0  reason: collision with root package name */
    public int f12595S0 = 0;

    /* renamed from: T0  reason: collision with root package name */
    public int f12596T0 = 2;

    /* renamed from: U0  reason: collision with root package name */
    public int f12597U0 = 2;

    /* renamed from: V0  reason: collision with root package name */
    public int f12598V0 = 0;

    /* renamed from: W0  reason: collision with root package name */
    public int f12599W0 = -1;

    /* renamed from: X0  reason: collision with root package name */
    public int f12600X0 = 0;

    /* renamed from: Y0  reason: collision with root package name */
    public final ArrayList f12601Y0 = new ArrayList();

    /* renamed from: Z0  reason: collision with root package name */
    public f[] f12602Z0 = null;

    /* renamed from: a1  reason: collision with root package name */
    public f[] f12603a1 = null;

    /* renamed from: b1  reason: collision with root package name */
    public int[] f12604b1 = null;

    /* renamed from: d1  reason: collision with root package name */
    public int f12606d1 = 0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x0836  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0838  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0847  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x0849  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0864  */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0866  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:293:0x0508 -> B:294:0x0515). Please submit an issue!!! */
    @Override // v.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void S(int r38, int r39, int r40, int r41) {
        /*
            Method dump skipped, instructions count: 2155
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v.i.S(int, int, int, int):void");
    }

    public final int U(int i4, f fVar) {
        if (fVar == null) {
            return 0;
        }
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = fVar.f12494V;
        if (constraintWidget$DimensionBehaviourArr[1] == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            int i5 = fVar.f12536t;
            if (i5 == 0) {
                return 0;
            }
            if (i5 == 2) {
                int i6 = (int) (fVar.f12473A * i4);
                if (i6 != fVar.l()) {
                    fVar.f12511g = true;
                    T(fVar, constraintWidget$DimensionBehaviourArr[0], fVar.r(), ConstraintWidget$DimensionBehaviour.FIXED, i6);
                }
                return i6;
            } else if (i5 == 1) {
                return fVar.l();
            } else {
                if (i5 == 3) {
                    return (int) ((fVar.r() * fVar.f12498Z) + 0.5f);
                }
            }
        }
        return fVar.l();
    }

    public final int V(int i4, f fVar) {
        if (fVar == null) {
            return 0;
        }
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = fVar.f12494V;
        if (constraintWidget$DimensionBehaviourArr[0] == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            int i5 = fVar.f12535s;
            if (i5 == 0) {
                return 0;
            }
            if (i5 == 2) {
                int i6 = (int) (fVar.f12540x * i4);
                if (i6 != fVar.r()) {
                    fVar.f12511g = true;
                    T(fVar, ConstraintWidget$DimensionBehaviour.FIXED, i6, constraintWidget$DimensionBehaviourArr[1], fVar.l());
                }
                return i6;
            } else if (i5 == 1) {
                return fVar.r();
            } else {
                if (i5 == 3) {
                    return (int) ((fVar.l() * fVar.f12498Z) + 0.5f);
                }
            }
        }
        return fVar.r();
    }

    @Override // v.f
    public final void c(t.f fVar, boolean z4) {
        f fVar2;
        float f4;
        int i4;
        super.c(fVar, z4);
        f fVar3 = this.f12495W;
        boolean z5 = fVar3 != null && ((g) fVar3).f12561x0;
        int i5 = this.f12598V0;
        ArrayList arrayList = this.f12601Y0;
        if (i5 != 0) {
            if (i5 == 1) {
                int size = arrayList.size();
                int i6 = 0;
                while (i6 < size) {
                    ((h) arrayList.get(i6)).b(i6, z5, i6 == size + (-1));
                    i6++;
                }
            } else if (i5 != 2) {
                if (i5 == 3) {
                    int size2 = arrayList.size();
                    int i7 = 0;
                    while (i7 < size2) {
                        ((h) arrayList.get(i7)).b(i7, z5, i7 == size2 + (-1));
                        i7++;
                    }
                }
            } else if (this.f12604b1 != null && this.f12603a1 != null && this.f12602Z0 != null) {
                for (int i8 = 0; i8 < this.f12606d1; i8++) {
                    this.f12605c1[i8].E();
                }
                int[] iArr = this.f12604b1;
                int i9 = iArr[0];
                int i10 = iArr[1];
                float f5 = this.f12588L0;
                f fVar4 = null;
                int i11 = 0;
                while (i11 < i9) {
                    if (z5) {
                        i4 = (i9 - i11) - 1;
                        f4 = 1.0f - this.f12588L0;
                    } else {
                        f4 = f5;
                        i4 = i11;
                    }
                    f fVar5 = this.f12603a1[i4];
                    if (fVar5 != null && fVar5.f12518j0 != 8) {
                        C1428d c1428d = fVar5.f12483K;
                        if (i11 == 0) {
                            fVar5.g(c1428d, this.f12483K, this.f12625y0);
                            fVar5.f12522l0 = this.f12582F0;
                            fVar5.f12512g0 = f4;
                        }
                        if (i11 == i9 - 1) {
                            fVar5.g(fVar5.f12485M, this.f12485M, this.f12626z0);
                        }
                        if (i11 > 0 && fVar4 != null) {
                            int i12 = this.f12594R0;
                            C1428d c1428d2 = fVar4.f12485M;
                            fVar5.g(c1428d, c1428d2, i12);
                            fVar4.g(c1428d2, c1428d, 0);
                        }
                        fVar4 = fVar5;
                    }
                    i11++;
                    f5 = f4;
                }
                for (int i13 = 0; i13 < i10; i13++) {
                    f fVar6 = this.f12602Z0[i13];
                    if (fVar6 != null && fVar6.f12518j0 != 8) {
                        C1428d c1428d3 = fVar6.f12484L;
                        if (i13 == 0) {
                            fVar6.g(c1428d3, this.f12484L, this.f12621u0);
                            fVar6.f12524m0 = this.f12583G0;
                            fVar6.f12514h0 = this.f12589M0;
                        }
                        if (i13 == i10 - 1) {
                            fVar6.g(fVar6.f12486N, this.f12486N, this.f12622v0);
                        }
                        if (i13 > 0 && fVar4 != null) {
                            int i14 = this.f12595S0;
                            C1428d c1428d4 = fVar4.f12486N;
                            fVar6.g(c1428d3, c1428d4, i14);
                            fVar4.g(c1428d4, c1428d3, 0);
                        }
                        fVar4 = fVar6;
                    }
                }
                for (int i15 = 0; i15 < i9; i15++) {
                    for (int i16 = 0; i16 < i10; i16++) {
                        int i17 = (i16 * i9) + i15;
                        if (this.f12600X0 == 1) {
                            i17 = (i15 * i10) + i16;
                        }
                        f[] fVarArr = this.f12605c1;
                        if (i17 < fVarArr.length && (fVar2 = fVarArr[i17]) != null && fVar2.f12518j0 != 8) {
                            f fVar7 = this.f12603a1[i15];
                            f fVar8 = this.f12602Z0[i16];
                            if (fVar2 != fVar7) {
                                fVar2.g(fVar2.f12483K, fVar7.f12483K, 0);
                                fVar2.g(fVar2.f12485M, fVar7.f12485M, 0);
                            }
                            if (fVar2 != fVar8) {
                                fVar2.g(fVar2.f12484L, fVar8.f12484L, 0);
                                fVar2.g(fVar2.f12486N, fVar8.f12486N, 0);
                            }
                        }
                    }
                }
            }
        } else if (arrayList.size() > 0) {
            ((h) arrayList.get(0)).b(0, z5, true);
        }
        this.f12616A0 = false;
    }
}
