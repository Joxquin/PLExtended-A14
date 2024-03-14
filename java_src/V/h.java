package v;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public int f12564a;

    /* renamed from: d  reason: collision with root package name */
    public C1428d f12567d;

    /* renamed from: e  reason: collision with root package name */
    public C1428d f12568e;

    /* renamed from: f  reason: collision with root package name */
    public C1428d f12569f;

    /* renamed from: g  reason: collision with root package name */
    public C1428d f12570g;

    /* renamed from: h  reason: collision with root package name */
    public int f12571h;

    /* renamed from: i  reason: collision with root package name */
    public int f12572i;

    /* renamed from: j  reason: collision with root package name */
    public int f12573j;

    /* renamed from: k  reason: collision with root package name */
    public int f12574k;

    /* renamed from: q  reason: collision with root package name */
    public int f12580q;

    /* renamed from: r  reason: collision with root package name */
    public final /* synthetic */ i f12581r;

    /* renamed from: b  reason: collision with root package name */
    public f f12565b = null;

    /* renamed from: c  reason: collision with root package name */
    public int f12566c = 0;

    /* renamed from: l  reason: collision with root package name */
    public int f12575l = 0;

    /* renamed from: m  reason: collision with root package name */
    public int f12576m = 0;

    /* renamed from: n  reason: collision with root package name */
    public int f12577n = 0;

    /* renamed from: o  reason: collision with root package name */
    public int f12578o = 0;

    /* renamed from: p  reason: collision with root package name */
    public int f12579p = 0;

    public h(i iVar, int i4, C1428d c1428d, C1428d c1428d2, C1428d c1428d3, C1428d c1428d4, int i5) {
        this.f12581r = iVar;
        this.f12571h = 0;
        this.f12572i = 0;
        this.f12573j = 0;
        this.f12574k = 0;
        this.f12580q = 0;
        this.f12564a = i4;
        this.f12567d = c1428d;
        this.f12568e = c1428d2;
        this.f12569f = c1428d3;
        this.f12570g = c1428d4;
        this.f12571h = iVar.f12625y0;
        this.f12572i = iVar.f12621u0;
        this.f12573j = iVar.f12626z0;
        this.f12574k = iVar.f12622v0;
        this.f12580q = i5;
    }

    public final void a(f fVar) {
        int i4 = this.f12564a;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        i iVar = this.f12581r;
        if (i4 == 0) {
            int V3 = iVar.V(this.f12580q, fVar);
            if (fVar.f12494V[0] == constraintWidget$DimensionBehaviour) {
                this.f12579p++;
                V3 = 0;
            }
            this.f12575l = V3 + (fVar.f12518j0 != 8 ? iVar.f12594R0 : 0) + this.f12575l;
            int U3 = iVar.U(this.f12580q, fVar);
            if (this.f12565b == null || this.f12566c < U3) {
                this.f12565b = fVar;
                this.f12566c = U3;
                this.f12576m = U3;
            }
        } else {
            int V4 = iVar.V(this.f12580q, fVar);
            int U4 = iVar.U(this.f12580q, fVar);
            if (fVar.f12494V[1] == constraintWidget$DimensionBehaviour) {
                this.f12579p++;
                U4 = 0;
            }
            this.f12576m = U4 + (fVar.f12518j0 != 8 ? iVar.f12595S0 : 0) + this.f12576m;
            if (this.f12565b == null || this.f12566c < V4) {
                this.f12565b = fVar;
                this.f12566c = V4;
                this.f12575l = V4;
            }
        }
        this.f12578o++;
    }

    public final void b(int i4, boolean z4, boolean z5) {
        i iVar;
        int i5;
        int i6;
        int i7;
        f fVar;
        int i8;
        char c4;
        int i9;
        float f4;
        float f5;
        int i10;
        float f6;
        int i11;
        int i12 = this.f12578o;
        int i13 = 0;
        while (true) {
            iVar = this.f12581r;
            if (i13 >= i12 || (i11 = this.f12577n + i13) >= iVar.f12606d1) {
                break;
            }
            f fVar2 = iVar.f12605c1[i11];
            if (fVar2 != null) {
                fVar2.E();
            }
            i13++;
        }
        if (i12 == 0 || this.f12565b == null) {
            return;
        }
        boolean z6 = z5 && i4 == 0;
        int i14 = -1;
        int i15 = -1;
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = this.f12577n + (z4 ? (i12 - 1) - i16 : i16);
            if (i17 >= iVar.f12606d1) {
                break;
            }
            f fVar3 = iVar.f12605c1[i17];
            if (fVar3 != null && fVar3.f12518j0 == 0) {
                if (i14 == -1) {
                    i14 = i16;
                }
                i15 = i16;
            }
        }
        if (this.f12564a != 0) {
            f fVar4 = this.f12565b;
            fVar4.f12522l0 = iVar.f12582F0;
            int i18 = this.f12571h;
            if (i4 > 0) {
                i18 += iVar.f12594R0;
            }
            C1428d c1428d = fVar4.f12485M;
            C1428d c1428d2 = fVar4.f12483K;
            if (z4) {
                c1428d.a(this.f12569f, i18);
                if (z5) {
                    c1428d2.a(this.f12567d, this.f12573j);
                }
                if (i4 > 0) {
                    this.f12569f.f12467d.f12483K.a(c1428d, 0);
                }
            } else {
                c1428d2.a(this.f12567d, i18);
                if (z5) {
                    c1428d.a(this.f12569f, this.f12573j);
                }
                if (i4 > 0) {
                    this.f12567d.f12467d.f12485M.a(c1428d2, 0);
                }
            }
            int i19 = 0;
            f fVar5 = null;
            while (i19 < i12) {
                int i20 = this.f12577n + i19;
                if (i20 >= iVar.f12606d1) {
                    return;
                }
                f fVar6 = iVar.f12605c1[i20];
                if (fVar6 == null) {
                    fVar6 = fVar5;
                } else {
                    C1428d c1428d3 = fVar6.f12484L;
                    if (i19 == 0) {
                        fVar6.g(c1428d3, this.f12568e, this.f12572i);
                        int i21 = iVar.f12583G0;
                        float f7 = iVar.f12589M0;
                        if (this.f12577n == 0) {
                            i7 = iVar.f12585I0;
                            i5 = i21;
                            i6 = -1;
                            if (i7 != -1) {
                                f7 = iVar.f12591O0;
                                fVar6.f12524m0 = i7;
                                fVar6.f12514h0 = f7;
                            }
                        } else {
                            i5 = i21;
                            i6 = -1;
                        }
                        if (!z5 || (i7 = iVar.f12587K0) == i6) {
                            i7 = i5;
                        } else {
                            f7 = iVar.f12593Q0;
                        }
                        fVar6.f12524m0 = i7;
                        fVar6.f12514h0 = f7;
                    }
                    if (i19 == i12 - 1) {
                        fVar6.g(fVar6.f12486N, this.f12570g, this.f12574k);
                    }
                    if (fVar5 != null) {
                        int i22 = iVar.f12595S0;
                        C1428d c1428d4 = fVar5.f12486N;
                        c1428d3.a(c1428d4, i22);
                        if (i19 == i14) {
                            int i23 = this.f12572i;
                            if (c1428d3.h()) {
                                c1428d3.f12471h = i23;
                            }
                        }
                        c1428d4.a(c1428d3, 0);
                        if (i19 == i15 + 1) {
                            int i24 = this.f12574k;
                            if (c1428d4.h()) {
                                c1428d4.f12471h = i24;
                            }
                        }
                    }
                    if (fVar6 != fVar4) {
                        C1428d c1428d5 = fVar6.f12485M;
                        C1428d c1428d6 = fVar6.f12483K;
                        if (z4) {
                            int i25 = iVar.f12596T0;
                            if (i25 == 0) {
                                c1428d5.a(c1428d, 0);
                            } else if (i25 == 1) {
                                c1428d6.a(c1428d2, 0);
                            } else if (i25 == 2) {
                                c1428d6.a(c1428d2, 0);
                                c1428d5.a(c1428d, 0);
                            }
                            i19++;
                            fVar5 = fVar6;
                        } else {
                            int i26 = iVar.f12596T0;
                            if (i26 == 0) {
                                c1428d6.a(c1428d2, 0);
                            } else if (i26 == 1) {
                                c1428d5.a(c1428d, 0);
                            } else if (i26 == 2) {
                                if (z6) {
                                    c1428d6.a(this.f12567d, this.f12571h);
                                    c1428d5.a(this.f12569f, this.f12573j);
                                } else {
                                    c1428d6.a(c1428d2, 0);
                                    c1428d5.a(c1428d, 0);
                                }
                            }
                            i19++;
                            fVar5 = fVar6;
                        }
                    }
                }
                i19++;
                fVar5 = fVar6;
            }
            return;
        }
        f fVar7 = this.f12565b;
        fVar7.f12524m0 = iVar.f12583G0;
        int i27 = this.f12572i;
        if (i4 > 0) {
            i27 += iVar.f12595S0;
        }
        C1428d c1428d7 = this.f12568e;
        C1428d c1428d8 = fVar7.f12484L;
        c1428d8.a(c1428d7, i27);
        C1428d c1428d9 = fVar7.f12486N;
        if (z5) {
            c1428d9.a(this.f12570g, this.f12574k);
        }
        if (i4 > 0) {
            this.f12568e.f12467d.f12486N.a(c1428d8, 0);
        }
        if (iVar.f12597U0 == 3 && !fVar7.f12478F) {
            for (int i28 = 0; i28 < i12; i28++) {
                int i29 = this.f12577n + (z4 ? (i12 - 1) - i28 : i28);
                if (i29 >= iVar.f12606d1) {
                    break;
                }
                fVar = iVar.f12605c1[i29];
                if (fVar.f12478F) {
                    break;
                }
            }
        }
        fVar = fVar7;
        int i30 = 0;
        f fVar8 = null;
        while (i30 < i12) {
            int i31 = z4 ? (i12 - 1) - i30 : i30;
            int i32 = this.f12577n + i31;
            if (i32 >= iVar.f12606d1) {
                return;
            }
            f fVar9 = iVar.f12605c1[i32];
            if (fVar9 == null) {
                i8 = i12;
                c4 = 3;
            } else {
                C1428d c1428d10 = fVar9.f12483K;
                if (i30 == 0) {
                    fVar9.g(c1428d10, this.f12567d, this.f12571h);
                }
                if (i31 == 0) {
                    int i33 = iVar.f12582F0;
                    if (z4) {
                        i9 = i33;
                        f4 = 1.0f - iVar.f12588L0;
                    } else {
                        i9 = i33;
                        f4 = iVar.f12588L0;
                    }
                    if (this.f12577n == 0) {
                        int i34 = iVar.f12584H0;
                        f5 = f4;
                        if (i34 != -1) {
                            f6 = z4 ? 1.0f - iVar.f12590N0 : iVar.f12590N0;
                            i10 = i34;
                            fVar9.f12522l0 = i10;
                            fVar9.f12512g0 = f6;
                        }
                    } else {
                        f5 = f4;
                    }
                    if (!z5 || (i10 = iVar.f12586J0) == -1) {
                        i10 = i9;
                        f6 = f5;
                    } else {
                        f6 = z4 ? 1.0f - iVar.f12592P0 : iVar.f12592P0;
                    }
                    fVar9.f12522l0 = i10;
                    fVar9.f12512g0 = f6;
                }
                if (i30 == i12 - 1) {
                    i8 = i12;
                    fVar9.g(fVar9.f12485M, this.f12569f, this.f12573j);
                } else {
                    i8 = i12;
                }
                if (fVar8 != null) {
                    int i35 = iVar.f12594R0;
                    C1428d c1428d11 = fVar8.f12485M;
                    c1428d10.a(c1428d11, i35);
                    if (i30 == i14) {
                        int i36 = this.f12571h;
                        if (c1428d10.h()) {
                            c1428d10.f12471h = i36;
                        }
                    }
                    c1428d11.a(c1428d10, 0);
                    if (i30 == i15 + 1) {
                        int i37 = this.f12573j;
                        if (c1428d11.h()) {
                            c1428d11.f12471h = i37;
                        }
                    }
                }
                if (fVar9 != fVar7) {
                    int i38 = iVar.f12597U0;
                    c4 = 3;
                    if (i38 == 3 && fVar.f12478F && fVar9 != fVar && fVar9.f12478F) {
                        fVar9.f12487O.a(fVar.f12487O, 0);
                    } else {
                        C1428d c1428d12 = fVar9.f12484L;
                        if (i38 != 0) {
                            C1428d c1428d13 = fVar9.f12486N;
                            if (i38 == 1) {
                                c1428d13.a(c1428d9, 0);
                            } else if (z6) {
                                c1428d12.a(this.f12568e, this.f12572i);
                                c1428d13.a(this.f12570g, this.f12574k);
                            } else {
                                c1428d12.a(c1428d8, 0);
                                c1428d13.a(c1428d9, 0);
                            }
                        } else {
                            c1428d12.a(c1428d8, 0);
                        }
                    }
                } else {
                    c4 = 3;
                }
                fVar8 = fVar9;
            }
            i30++;
            i12 = i8;
        }
    }

    public final int c() {
        return this.f12564a == 1 ? this.f12576m - this.f12581r.f12595S0 : this.f12576m;
    }

    public final int d() {
        return this.f12564a == 0 ? this.f12575l - this.f12581r.f12594R0 : this.f12575l;
    }

    public final void e(int i4) {
        int i5 = this.f12579p;
        if (i5 == 0) {
            return;
        }
        int i6 = this.f12578o;
        int i7 = i4 / i5;
        for (int i8 = 0; i8 < i6; i8++) {
            int i9 = this.f12577n;
            int i10 = i9 + i8;
            i iVar = this.f12581r;
            if (i10 >= iVar.f12606d1) {
                break;
            }
            f fVar = iVar.f12605c1[i9 + i8];
            int i11 = this.f12564a;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.FIXED;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
            if (i11 == 0) {
                if (fVar != null) {
                    ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = fVar.f12494V;
                    if (constraintWidget$DimensionBehaviourArr[0] == constraintWidget$DimensionBehaviour2 && fVar.f12535s == 0) {
                        iVar.T(fVar, constraintWidget$DimensionBehaviour, i7, constraintWidget$DimensionBehaviourArr[1], fVar.l());
                    }
                }
            } else if (fVar != null) {
                ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr2 = fVar.f12494V;
                if (constraintWidget$DimensionBehaviourArr2[1] == constraintWidget$DimensionBehaviour2 && fVar.f12536t == 0) {
                    iVar.T(fVar, constraintWidget$DimensionBehaviourArr2[0], fVar.r(), constraintWidget$DimensionBehaviour, i7);
                }
            }
        }
        this.f12575l = 0;
        this.f12576m = 0;
        this.f12565b = null;
        this.f12566c = 0;
        int i12 = this.f12578o;
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = this.f12577n + i13;
            i iVar2 = this.f12581r;
            if (i14 >= iVar2.f12606d1) {
                return;
            }
            f fVar2 = iVar2.f12605c1[i14];
            if (this.f12564a == 0) {
                int r4 = fVar2.r();
                int i15 = iVar2.f12594R0;
                if (fVar2.f12518j0 == 8) {
                    i15 = 0;
                }
                this.f12575l = r4 + i15 + this.f12575l;
                int U3 = iVar2.U(this.f12580q, fVar2);
                if (this.f12565b == null || this.f12566c < U3) {
                    this.f12565b = fVar2;
                    this.f12566c = U3;
                    this.f12576m = U3;
                }
            } else {
                int V3 = iVar2.V(this.f12580q, fVar2);
                int U4 = iVar2.U(this.f12580q, fVar2);
                int i16 = iVar2.f12595S0;
                if (fVar2.f12518j0 == 8) {
                    i16 = 0;
                }
                this.f12576m = U4 + i16 + this.f12576m;
                if (this.f12565b == null || this.f12566c < V3) {
                    this.f12565b = fVar2;
                    this.f12566c = V3;
                    this.f12575l = V3;
                }
            }
        }
    }

    public final void f(int i4, C1428d c1428d, C1428d c1428d2, C1428d c1428d3, C1428d c1428d4, int i5, int i6, int i7, int i8, int i9) {
        this.f12564a = i4;
        this.f12567d = c1428d;
        this.f12568e = c1428d2;
        this.f12569f = c1428d3;
        this.f12570g = c1428d4;
        this.f12571h = i5;
        this.f12572i = i6;
        this.f12573j = i7;
        this.f12574k = i8;
        this.f12580q = i9;
    }
}
