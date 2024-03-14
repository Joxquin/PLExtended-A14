package v;

import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class j extends f {

    /* renamed from: s0  reason: collision with root package name */
    public float f12607s0 = -1.0f;

    /* renamed from: t0  reason: collision with root package name */
    public int f12608t0 = -1;

    /* renamed from: u0  reason: collision with root package name */
    public int f12609u0 = -1;

    /* renamed from: v0  reason: collision with root package name */
    public C1428d f12610v0 = this.f12484L;

    /* renamed from: w0  reason: collision with root package name */
    public int f12611w0 = 0;

    /* renamed from: x0  reason: collision with root package name */
    public boolean f12612x0;

    public j() {
        this.f12492T.clear();
        this.f12492T.add(this.f12610v0);
        int length = this.f12491S.length;
        for (int i4 = 0; i4 < length; i4++) {
            this.f12491S[i4] = this.f12610v0;
        }
    }

    @Override // v.f
    public final boolean B() {
        return this.f12612x0;
    }

    @Override // v.f
    public final boolean C() {
        return this.f12612x0;
    }

    @Override // v.f
    public final void Q(t.f fVar, boolean z4) {
        if (this.f12495W == null) {
            return;
        }
        C1428d c1428d = this.f12610v0;
        fVar.getClass();
        int n4 = t.f.n(c1428d);
        if (this.f12611w0 == 1) {
            this.f12502b0 = n4;
            this.f12504c0 = 0;
            L(this.f12495W.l());
            O(0);
            return;
        }
        this.f12502b0 = 0;
        this.f12504c0 = n4;
        O(this.f12495W.r());
        L(0);
    }

    public final void R(int i4) {
        this.f12610v0.l(i4);
        this.f12612x0 = true;
    }

    public final void S(int i4) {
        if (this.f12611w0 == i4) {
            return;
        }
        this.f12611w0 = i4;
        ArrayList arrayList = this.f12492T;
        arrayList.clear();
        if (this.f12611w0 == 1) {
            this.f12610v0 = this.f12483K;
        } else {
            this.f12610v0 = this.f12484L;
        }
        arrayList.add(this.f12610v0);
        C1428d[] c1428dArr = this.f12491S;
        int length = c1428dArr.length;
        for (int i5 = 0; i5 < length; i5++) {
            c1428dArr[i5] = this.f12610v0;
        }
    }

    @Override // v.f
    public final void c(t.f fVar, boolean z4) {
        g gVar = (g) this.f12495W;
        if (gVar == null) {
            return;
        }
        Object j4 = gVar.j(ConstraintAnchor$Type.LEFT);
        Object j5 = gVar.j(ConstraintAnchor$Type.RIGHT);
        f fVar2 = this.f12495W;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        boolean z5 = true;
        boolean z6 = fVar2 != null && fVar2.f12494V[0] == constraintWidget$DimensionBehaviour;
        if (this.f12611w0 == 0) {
            j4 = gVar.j(ConstraintAnchor$Type.TOP);
            j5 = gVar.j(ConstraintAnchor$Type.BOTTOM);
            f fVar3 = this.f12495W;
            if (fVar3 == null || fVar3.f12494V[1] != constraintWidget$DimensionBehaviour) {
                z5 = false;
            }
            z6 = z5;
        }
        if (this.f12612x0) {
            C1428d c1428d = this.f12610v0;
            if (c1428d.f12466c) {
                t.m k4 = fVar.k(c1428d);
                fVar.d(k4, this.f12610v0.d());
                if (this.f12608t0 != -1) {
                    if (z6) {
                        fVar.f(fVar.k(j5), k4, 0, 5);
                    }
                } else if (this.f12609u0 != -1 && z6) {
                    t.m k5 = fVar.k(j5);
                    fVar.f(k4, fVar.k(j4), 0, 5);
                    fVar.f(k5, k4, 0, 5);
                }
                this.f12612x0 = false;
                return;
            }
        }
        if (this.f12608t0 != -1) {
            t.m k6 = fVar.k(this.f12610v0);
            fVar.e(k6, fVar.k(j4), this.f12608t0, 8);
            if (z6) {
                fVar.f(fVar.k(j5), k6, 0, 5);
            }
        } else if (this.f12609u0 != -1) {
            t.m k7 = fVar.k(this.f12610v0);
            t.m k8 = fVar.k(j5);
            fVar.e(k7, k8, -this.f12609u0, 8);
            if (z6) {
                fVar.f(k7, fVar.k(j4), 0, 5);
                fVar.f(k8, k7, 0, 5);
            }
        } else if (this.f12607s0 != -1.0f) {
            t.m k9 = fVar.k(this.f12610v0);
            t.m k10 = fVar.k(j5);
            float f4 = this.f12607s0;
            t.d l4 = fVar.l();
            l4.f12300d.d(k9, -1.0f);
            l4.f12300d.d(k10, f4);
            fVar.c(l4);
        }
    }

    @Override // v.f
    public final boolean d() {
        return true;
    }

    @Override // v.f
    public final C1428d j(ConstraintAnchor$Type constraintAnchor$Type) {
        int ordinal = constraintAnchor$Type.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        return null;
                    }
                }
            }
            if (this.f12611w0 == 0) {
                return this.f12610v0;
            }
            return null;
        }
        if (this.f12611w0 == 1) {
            return this.f12610v0;
        }
        return null;
    }
}
