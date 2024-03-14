package v;

import androidx.constraintlayout.core.SolverVariable$Type;
import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: v.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1428d {

    /* renamed from: b  reason: collision with root package name */
    public int f12465b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f12466c;

    /* renamed from: d  reason: collision with root package name */
    public final f f12467d;

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintAnchor$Type f12468e;

    /* renamed from: f  reason: collision with root package name */
    public C1428d f12469f;

    /* renamed from: i  reason: collision with root package name */
    public t.m f12472i;

    /* renamed from: a  reason: collision with root package name */
    public HashSet f12464a = null;

    /* renamed from: g  reason: collision with root package name */
    public int f12470g = 0;

    /* renamed from: h  reason: collision with root package name */
    public int f12471h = Integer.MIN_VALUE;

    public C1428d(f fVar, ConstraintAnchor$Type constraintAnchor$Type) {
        this.f12467d = fVar;
        this.f12468e = constraintAnchor$Type;
    }

    public final void a(C1428d c1428d, int i4) {
        b(c1428d, i4, Integer.MIN_VALUE, false);
    }

    public final boolean b(C1428d c1428d, int i4, int i5, boolean z4) {
        if (c1428d == null) {
            j();
            return true;
        } else if (z4 || i(c1428d)) {
            this.f12469f = c1428d;
            if (c1428d.f12464a == null) {
                c1428d.f12464a = new HashSet();
            }
            HashSet hashSet = this.f12469f.f12464a;
            if (hashSet != null) {
                hashSet.add(this);
            }
            this.f12470g = i4;
            this.f12471h = i5;
            return true;
        } else {
            return false;
        }
    }

    public final void c(int i4, w.m mVar, ArrayList arrayList) {
        HashSet hashSet = this.f12464a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                w.i.a(((C1428d) it.next()).f12467d, i4, arrayList, mVar);
            }
        }
    }

    public final int d() {
        if (this.f12466c) {
            return this.f12465b;
        }
        return 0;
    }

    public final int e() {
        C1428d c1428d;
        if (this.f12467d.f12518j0 == 8) {
            return 0;
        }
        int i4 = this.f12471h;
        return (i4 == Integer.MIN_VALUE || (c1428d = this.f12469f) == null || c1428d.f12467d.f12518j0 != 8) ? this.f12470g : i4;
    }

    public final C1428d f() {
        ConstraintAnchor$Type constraintAnchor$Type = this.f12468e;
        int ordinal = constraintAnchor$Type.ordinal();
        f fVar = this.f12467d;
        switch (ordinal) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return fVar.f12485M;
            case 2:
                return fVar.f12486N;
            case 3:
                return fVar.f12483K;
            case 4:
                return fVar.f12484L;
            default:
                throw new AssertionError(constraintAnchor$Type.name());
        }
    }

    public final boolean g() {
        HashSet hashSet = this.f12464a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((C1428d) it.next()).f().h()) {
                return true;
            }
        }
        return false;
    }

    public final boolean h() {
        return this.f12469f != null;
    }

    public final boolean i(C1428d c1428d) {
        boolean z4 = false;
        if (c1428d == null) {
            return false;
        }
        ConstraintAnchor$Type constraintAnchor$Type = ConstraintAnchor$Type.BASELINE;
        ConstraintAnchor$Type constraintAnchor$Type2 = this.f12468e;
        f fVar = c1428d.f12467d;
        ConstraintAnchor$Type constraintAnchor$Type3 = c1428d.f12468e;
        if (constraintAnchor$Type3 == constraintAnchor$Type2) {
            return constraintAnchor$Type2 != constraintAnchor$Type || (fVar.f12478F && this.f12467d.f12478F);
        }
        int ordinal = constraintAnchor$Type2.ordinal();
        ConstraintAnchor$Type constraintAnchor$Type4 = ConstraintAnchor$Type.CENTER_Y;
        ConstraintAnchor$Type constraintAnchor$Type5 = ConstraintAnchor$Type.RIGHT;
        ConstraintAnchor$Type constraintAnchor$Type6 = ConstraintAnchor$Type.CENTER_X;
        ConstraintAnchor$Type constraintAnchor$Type7 = ConstraintAnchor$Type.LEFT;
        switch (ordinal) {
            case 0:
            case 7:
            case 8:
                return false;
            case 1:
            case 3:
                boolean z5 = constraintAnchor$Type3 == constraintAnchor$Type7 || constraintAnchor$Type3 == constraintAnchor$Type5;
                if (fVar instanceof j) {
                    if (z5 || constraintAnchor$Type3 == constraintAnchor$Type6) {
                        z4 = true;
                    }
                    return z4;
                }
                return z5;
            case 2:
            case 4:
                boolean z6 = constraintAnchor$Type3 == ConstraintAnchor$Type.TOP || constraintAnchor$Type3 == ConstraintAnchor$Type.BOTTOM;
                if (fVar instanceof j) {
                    if (z6 || constraintAnchor$Type3 == constraintAnchor$Type4) {
                        z4 = true;
                    }
                    return z4;
                }
                return z6;
            case 5:
                return (constraintAnchor$Type3 == constraintAnchor$Type7 || constraintAnchor$Type3 == constraintAnchor$Type5) ? false : true;
            case 6:
                return (constraintAnchor$Type3 == constraintAnchor$Type || constraintAnchor$Type3 == constraintAnchor$Type6 || constraintAnchor$Type3 == constraintAnchor$Type4) ? false : true;
            default:
                throw new AssertionError(constraintAnchor$Type2.name());
        }
    }

    public final void j() {
        HashSet hashSet;
        C1428d c1428d = this.f12469f;
        if (c1428d != null && (hashSet = c1428d.f12464a) != null) {
            hashSet.remove(this);
            if (this.f12469f.f12464a.size() == 0) {
                this.f12469f.f12464a = null;
            }
        }
        this.f12464a = null;
        this.f12469f = null;
        this.f12470g = 0;
        this.f12471h = Integer.MIN_VALUE;
        this.f12466c = false;
        this.f12465b = 0;
    }

    public final void k() {
        t.m mVar = this.f12472i;
        if (mVar == null) {
            this.f12472i = new t.m(SolverVariable$Type.UNRESTRICTED);
        } else {
            mVar.d();
        }
    }

    public final void l(int i4) {
        this.f12465b = i4;
        this.f12466c = true;
    }

    public final String toString() {
        return this.f12467d.f12520k0 + ":" + this.f12468e.toString();
    }
}
