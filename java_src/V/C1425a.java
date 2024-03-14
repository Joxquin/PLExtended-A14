package v;

import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import s.C1391a;
import t.C1395a;
/* renamed from: v.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1425a extends l {

    /* renamed from: u0  reason: collision with root package name */
    public int f12443u0 = 0;

    /* renamed from: v0  reason: collision with root package name */
    public boolean f12444v0 = true;

    /* renamed from: w0  reason: collision with root package name */
    public int f12445w0 = 0;

    /* renamed from: x0  reason: collision with root package name */
    public boolean f12446x0 = false;

    @Override // v.f
    public final boolean B() {
        return this.f12446x0;
    }

    @Override // v.f
    public final boolean C() {
        return this.f12446x0;
    }

    public final boolean S() {
        int i4;
        int i5;
        int i6;
        boolean z4 = true;
        int i7 = 0;
        while (true) {
            i4 = this.f12614t0;
            if (i7 >= i4) {
                break;
            }
            f fVar = this.f12613s0[i7];
            if ((this.f12444v0 || fVar.d()) && ((((i5 = this.f12443u0) == 0 || i5 == 1) && !fVar.B()) || (((i6 = this.f12443u0) == 2 || i6 == 3) && !fVar.C()))) {
                z4 = false;
            }
            i7++;
        }
        if (!z4 || i4 <= 0) {
            return false;
        }
        int i8 = 0;
        boolean z5 = false;
        for (int i9 = 0; i9 < this.f12614t0; i9++) {
            f fVar2 = this.f12613s0[i9];
            if (this.f12444v0 || fVar2.d()) {
                ConstraintAnchor$Type constraintAnchor$Type = ConstraintAnchor$Type.BOTTOM;
                ConstraintAnchor$Type constraintAnchor$Type2 = ConstraintAnchor$Type.TOP;
                ConstraintAnchor$Type constraintAnchor$Type3 = ConstraintAnchor$Type.RIGHT;
                ConstraintAnchor$Type constraintAnchor$Type4 = ConstraintAnchor$Type.LEFT;
                if (!z5) {
                    int i10 = this.f12443u0;
                    if (i10 == 0) {
                        i8 = fVar2.j(constraintAnchor$Type4).d();
                    } else if (i10 == 1) {
                        i8 = fVar2.j(constraintAnchor$Type3).d();
                    } else if (i10 == 2) {
                        i8 = fVar2.j(constraintAnchor$Type2).d();
                    } else if (i10 == 3) {
                        i8 = fVar2.j(constraintAnchor$Type).d();
                    }
                    z5 = true;
                }
                int i11 = this.f12443u0;
                if (i11 == 0) {
                    i8 = Math.min(i8, fVar2.j(constraintAnchor$Type4).d());
                } else if (i11 == 1) {
                    i8 = Math.max(i8, fVar2.j(constraintAnchor$Type3).d());
                } else if (i11 == 2) {
                    i8 = Math.min(i8, fVar2.j(constraintAnchor$Type2).d());
                } else if (i11 == 3) {
                    i8 = Math.max(i8, fVar2.j(constraintAnchor$Type).d());
                }
            }
        }
        int i12 = i8 + this.f12445w0;
        int i13 = this.f12443u0;
        if (i13 == 0 || i13 == 1) {
            J(i12, i12);
        } else {
            K(i12, i12);
        }
        this.f12446x0 = true;
        return true;
    }

    public final int T() {
        int i4 = this.f12443u0;
        if (i4 == 0 || i4 == 1) {
            return 0;
        }
        return (i4 == 2 || i4 == 3) ? 1 : -1;
    }

    @Override // v.f
    public final void c(t.f fVar, boolean z4) {
        boolean z5;
        int i4;
        C1428d[] c1428dArr = this.f12491S;
        C1428d c1428d = this.f12483K;
        c1428dArr[0] = c1428d;
        int i5 = 2;
        C1428d c1428d2 = this.f12484L;
        c1428dArr[2] = c1428d2;
        C1428d c1428d3 = this.f12485M;
        c1428dArr[1] = c1428d3;
        C1428d c1428d4 = this.f12486N;
        c1428dArr[3] = c1428d4;
        for (C1428d c1428d5 : c1428dArr) {
            c1428d5.f12472i = fVar.k(c1428d5);
        }
        int i6 = this.f12443u0;
        if (i6 < 0 || i6 >= 4) {
            return;
        }
        C1428d c1428d6 = c1428dArr[i6];
        if (!this.f12446x0) {
            S();
        }
        if (this.f12446x0) {
            this.f12446x0 = false;
            int i7 = this.f12443u0;
            if (i7 == 0 || i7 == 1) {
                fVar.d(c1428d.f12472i, this.f12502b0);
                fVar.d(c1428d3.f12472i, this.f12502b0);
                return;
            } else if (i7 == 2 || i7 == 3) {
                fVar.d(c1428d2.f12472i, this.f12504c0);
                fVar.d(c1428d4.f12472i, this.f12504c0);
                return;
            } else {
                return;
            }
        }
        for (int i8 = 0; i8 < this.f12614t0; i8++) {
            f fVar2 = this.f12613s0[i8];
            if (this.f12444v0 || fVar2.d()) {
                int i9 = this.f12443u0;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                if (((i9 == 0 || i9 == 1) && fVar2.f12494V[0] == constraintWidget$DimensionBehaviour && fVar2.f12483K.f12469f != null && fVar2.f12485M.f12469f != null) || ((i9 == 2 || i9 == 3) && fVar2.f12494V[1] == constraintWidget$DimensionBehaviour && fVar2.f12484L.f12469f != null && fVar2.f12486N.f12469f != null)) {
                    z5 = true;
                    break;
                }
            }
        }
        z5 = false;
        boolean z6 = c1428d.g() || c1428d3.g();
        boolean z7 = c1428d2.g() || c1428d4.g();
        int i10 = !(!z5 && (((i4 = this.f12443u0) == 0 && z6) || ((i4 == 2 && z7) || ((i4 == 1 && z6) || (i4 == 3 && z7))))) ? 4 : 5;
        int i11 = 0;
        while (i11 < this.f12614t0) {
            f fVar3 = this.f12613s0[i11];
            if (this.f12444v0 || fVar3.d()) {
                t.m k4 = fVar.k(fVar3.f12491S[this.f12443u0]);
                int i12 = this.f12443u0;
                C1428d c1428d7 = fVar3.f12491S[i12];
                c1428d7.f12472i = k4;
                C1428d c1428d8 = c1428d7.f12469f;
                int i13 = (c1428d8 == null || c1428d8.f12467d != this) ? 0 : c1428d7.f12470g + 0;
                if (i12 == 0 || i12 == i5) {
                    t.d l4 = fVar.l();
                    t.m m4 = fVar.m();
                    m4.f12333g = 0;
                    l4.c(c1428d6.f12472i, k4, m4, this.f12445w0 - i13);
                    fVar.c(l4);
                } else {
                    t.d l5 = fVar.l();
                    t.m m5 = fVar.m();
                    m5.f12333g = 0;
                    l5.b(c1428d6.f12472i, k4, m5, this.f12445w0 + i13);
                    fVar.c(l5);
                }
                fVar.e(c1428d6.f12472i, k4, this.f12445w0 + i13, i10);
            }
            i11++;
            i5 = 2;
        }
        int i14 = this.f12443u0;
        if (i14 == 0) {
            fVar.e(c1428d3.f12472i, c1428d.f12472i, 0, 8);
            fVar.e(c1428d.f12472i, this.f12495W.f12485M.f12472i, 0, 4);
            fVar.e(c1428d.f12472i, this.f12495W.f12483K.f12472i, 0, 0);
        } else if (i14 == 1) {
            fVar.e(c1428d.f12472i, c1428d3.f12472i, 0, 8);
            fVar.e(c1428d.f12472i, this.f12495W.f12483K.f12472i, 0, 4);
            fVar.e(c1428d.f12472i, this.f12495W.f12485M.f12472i, 0, 0);
        } else if (i14 == 2) {
            fVar.e(c1428d4.f12472i, c1428d2.f12472i, 0, 8);
            fVar.e(c1428d2.f12472i, this.f12495W.f12486N.f12472i, 0, 4);
            fVar.e(c1428d2.f12472i, this.f12495W.f12484L.f12472i, 0, 0);
        } else if (i14 == 3) {
            fVar.e(c1428d2.f12472i, c1428d4.f12472i, 0, 8);
            fVar.e(c1428d2.f12472i, this.f12495W.f12484L.f12472i, 0, 4);
            fVar.e(c1428d2.f12472i, this.f12495W.f12486N.f12472i, 0, 0);
        }
    }

    @Override // v.f
    public final boolean d() {
        return true;
    }

    @Override // v.f
    public final String toString() {
        String str = "[Barrier] " + this.f12520k0 + " {";
        for (int i4 = 0; i4 < this.f12614t0; i4++) {
            f fVar = this.f12613s0[i4];
            if (i4 > 0) {
                str = C1391a.a(str, ", ");
            }
            StringBuilder a4 = C1395a.a(str);
            a4.append(fVar.f12520k0);
            str = a4.toString();
        }
        return C1391a.a(str, "}");
    }
}
