package t;

import androidx.constraintlayout.core.SolverVariable$Type;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class m implements Comparable {

    /* renamed from: d  reason: collision with root package name */
    public boolean f12330d;

    /* renamed from: h  reason: collision with root package name */
    public float f12334h;

    /* renamed from: l  reason: collision with root package name */
    public SolverVariable$Type f12338l;

    /* renamed from: e  reason: collision with root package name */
    public int f12331e = -1;

    /* renamed from: f  reason: collision with root package name */
    public int f12332f = -1;

    /* renamed from: g  reason: collision with root package name */
    public int f12333g = 0;

    /* renamed from: i  reason: collision with root package name */
    public boolean f12335i = false;

    /* renamed from: j  reason: collision with root package name */
    public final float[] f12336j = new float[9];

    /* renamed from: k  reason: collision with root package name */
    public final float[] f12337k = new float[9];

    /* renamed from: m  reason: collision with root package name */
    public d[] f12339m = new d[16];

    /* renamed from: n  reason: collision with root package name */
    public int f12340n = 0;

    /* renamed from: o  reason: collision with root package name */
    public int f12341o = 0;

    public m(SolverVariable$Type solverVariable$Type) {
        this.f12338l = solverVariable$Type;
    }

    public final void a(d dVar) {
        int i4 = 0;
        while (true) {
            int i5 = this.f12340n;
            if (i4 >= i5) {
                d[] dVarArr = this.f12339m;
                if (i5 >= dVarArr.length) {
                    this.f12339m = (d[]) Arrays.copyOf(dVarArr, dVarArr.length * 2);
                }
                d[] dVarArr2 = this.f12339m;
                int i6 = this.f12340n;
                dVarArr2[i6] = dVar;
                this.f12340n = i6 + 1;
                return;
            } else if (this.f12339m[i4] == dVar) {
                return;
            } else {
                i4++;
            }
        }
    }

    public final void c(d dVar) {
        int i4 = this.f12340n;
        int i5 = 0;
        while (i5 < i4) {
            if (this.f12339m[i5] == dVar) {
                while (i5 < i4 - 1) {
                    d[] dVarArr = this.f12339m;
                    int i6 = i5 + 1;
                    dVarArr[i5] = dVarArr[i6];
                    i5 = i6;
                }
                this.f12340n--;
                return;
            }
            i5++;
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f12331e - ((m) obj).f12331e;
    }

    public final void d() {
        this.f12338l = SolverVariable$Type.UNKNOWN;
        this.f12333g = 0;
        this.f12331e = -1;
        this.f12332f = -1;
        this.f12334h = 0.0f;
        this.f12335i = false;
        int i4 = this.f12340n;
        for (int i5 = 0; i5 < i4; i5++) {
            this.f12339m[i5] = null;
        }
        this.f12340n = 0;
        this.f12341o = 0;
        this.f12330d = false;
        Arrays.fill(this.f12337k, 0.0f);
    }

    public final void e(f fVar, float f4) {
        this.f12334h = f4;
        this.f12335i = true;
        int i4 = this.f12340n;
        this.f12332f = -1;
        for (int i5 = 0; i5 < i4; i5++) {
            this.f12339m[i5].h(fVar, this, false);
        }
        this.f12340n = 0;
    }

    public final void g(f fVar, d dVar) {
        int i4 = this.f12340n;
        for (int i5 = 0; i5 < i4; i5++) {
            this.f12339m[i5].i(fVar, dVar, false);
        }
        this.f12340n = 0;
    }

    public final String toString() {
        return "" + this.f12331e;
    }
}
