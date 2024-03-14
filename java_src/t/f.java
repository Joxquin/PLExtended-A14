package t;

import androidx.constraintlayout.core.SolverVariable$Type;
import java.util.Arrays;
import v.C1428d;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: p  reason: collision with root package name */
    public static boolean f12305p = false;

    /* renamed from: q  reason: collision with root package name */
    public static int f12306q = 1000;

    /* renamed from: c  reason: collision with root package name */
    public final l f12309c;

    /* renamed from: f  reason: collision with root package name */
    public d[] f12312f;

    /* renamed from: l  reason: collision with root package name */
    public final e f12318l;

    /* renamed from: o  reason: collision with root package name */
    public d f12321o;

    /* renamed from: a  reason: collision with root package name */
    public boolean f12307a = false;

    /* renamed from: b  reason: collision with root package name */
    public int f12308b = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f12310d = 32;

    /* renamed from: e  reason: collision with root package name */
    public int f12311e = 32;

    /* renamed from: g  reason: collision with root package name */
    public boolean f12313g = false;

    /* renamed from: h  reason: collision with root package name */
    public boolean[] f12314h = new boolean[32];

    /* renamed from: i  reason: collision with root package name */
    public int f12315i = 1;

    /* renamed from: j  reason: collision with root package name */
    public int f12316j = 0;

    /* renamed from: k  reason: collision with root package name */
    public int f12317k = 32;

    /* renamed from: m  reason: collision with root package name */
    public m[] f12319m = new m[f12306q];

    /* renamed from: n  reason: collision with root package name */
    public int f12320n = 0;

    public f() {
        this.f12312f = null;
        this.f12312f = new d[32];
        for (int i4 = 0; i4 < this.f12316j; i4++) {
            d[] dVarArr = this.f12312f;
            d dVar = dVarArr[i4];
            if (dVar != null) {
                h hVar = this.f12318l.f12302a;
                int i5 = hVar.f12323b;
                Object[] objArr = hVar.f12322a;
                if (i5 < objArr.length) {
                    objArr[i5] = dVar;
                    hVar.f12323b = i5 + 1;
                }
            }
            dVarArr[i4] = null;
        }
        e eVar = new e();
        this.f12318l = eVar;
        this.f12309c = new l(eVar);
        this.f12321o = new d(eVar);
    }

    public static int n(C1428d c1428d) {
        m mVar = c1428d.f12472i;
        if (mVar != null) {
            return (int) (mVar.f12334h + 0.5f);
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v0 */
    public final m a(SolverVariable$Type solverVariable$Type) {
        h hVar = this.f12318l.f12303b;
        int i4 = hVar.f12323b;
        m mVar = null;
        if (i4 > 0) {
            int i5 = i4 - 1;
            ?? r32 = hVar.f12322a;
            ?? r4 = r32[i5];
            r32[i5] = 0;
            hVar.f12323b = i5;
            mVar = r4;
        }
        m mVar2 = mVar;
        if (mVar2 == null) {
            mVar2 = new m(solverVariable$Type);
            mVar2.f12338l = solverVariable$Type;
        } else {
            mVar2.d();
            mVar2.f12338l = solverVariable$Type;
        }
        int i6 = this.f12320n;
        int i7 = f12306q;
        if (i6 >= i7) {
            int i8 = i7 * 2;
            f12306q = i8;
            this.f12319m = (m[]) Arrays.copyOf(this.f12319m, i8);
        }
        m[] mVarArr = this.f12319m;
        int i9 = this.f12320n;
        this.f12320n = i9 + 1;
        mVarArr[i9] = mVar2;
        return mVar2;
    }

    public final void b(m mVar, m mVar2, int i4, float f4, m mVar3, m mVar4, int i5, int i6) {
        d l4 = l();
        if (mVar2 == mVar3) {
            l4.f12300d.d(mVar, 1.0f);
            l4.f12300d.d(mVar4, 1.0f);
            l4.f12300d.d(mVar2, -2.0f);
        } else if (f4 == 0.5f) {
            l4.f12300d.d(mVar, 1.0f);
            l4.f12300d.d(mVar2, -1.0f);
            l4.f12300d.d(mVar3, -1.0f);
            l4.f12300d.d(mVar4, 1.0f);
            if (i4 > 0 || i5 > 0) {
                l4.f12298b = (-i4) + i5;
            }
        } else if (f4 <= 0.0f) {
            l4.f12300d.d(mVar, -1.0f);
            l4.f12300d.d(mVar2, 1.0f);
            l4.f12298b = i4;
        } else if (f4 >= 1.0f) {
            l4.f12300d.d(mVar4, -1.0f);
            l4.f12300d.d(mVar3, 1.0f);
            l4.f12298b = -i5;
        } else {
            float f5 = 1.0f - f4;
            l4.f12300d.d(mVar, f5 * 1.0f);
            l4.f12300d.d(mVar2, f5 * (-1.0f));
            l4.f12300d.d(mVar3, (-1.0f) * f4);
            l4.f12300d.d(mVar4, 1.0f * f4);
            if (i4 > 0 || i5 > 0) {
                l4.f12298b = (i5 * f4) + ((-i4) * f5);
            }
        }
        if (i6 != 8) {
            l4.a(this, i6);
        }
        c(l4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ba, code lost:
        if (r5.f12341o <= 1) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00c3, code lost:
        if (r5.f12341o <= 1) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00c6, code lost:
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00e1, code lost:
        if (r5.f12341o <= 1) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00ea, code lost:
        if (r5.f12341o <= 1) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00ed, code lost:
        r14 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01ba A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(t.d r17) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: t.f.c(t.d):void");
    }

    public final void d(m mVar, int i4) {
        int i5 = mVar.f12332f;
        if (i5 == -1) {
            mVar.e(this, i4);
            for (int i6 = 0; i6 < this.f12308b + 1; i6++) {
                m mVar2 = this.f12318l.f12304c[i6];
            }
        } else if (i5 == -1) {
            d l4 = l();
            l4.f12297a = mVar;
            float f4 = i4;
            mVar.f12334h = f4;
            l4.f12298b = f4;
            l4.f12301e = true;
            c(l4);
        } else {
            d dVar = this.f12312f[i5];
            if (dVar.f12301e) {
                dVar.f12298b = i4;
            } else if (dVar.f12300d.f() == 0) {
                dVar.f12301e = true;
                dVar.f12298b = i4;
            } else {
                d l5 = l();
                if (i4 < 0) {
                    l5.f12298b = i4 * (-1);
                    l5.f12300d.d(mVar, 1.0f);
                } else {
                    l5.f12298b = i4;
                    l5.f12300d.d(mVar, -1.0f);
                }
                c(l5);
            }
        }
    }

    public final void e(m mVar, m mVar2, int i4, int i5) {
        if (i5 == 8 && mVar2.f12335i && mVar.f12332f == -1) {
            mVar.e(this, mVar2.f12334h + i4);
            return;
        }
        d l4 = l();
        boolean z4 = false;
        if (i4 != 0) {
            if (i4 < 0) {
                i4 *= -1;
                z4 = true;
            }
            l4.f12298b = i4;
        }
        if (z4) {
            l4.f12300d.d(mVar, 1.0f);
            l4.f12300d.d(mVar2, -1.0f);
        } else {
            l4.f12300d.d(mVar, -1.0f);
            l4.f12300d.d(mVar2, 1.0f);
        }
        if (i5 != 8) {
            l4.a(this, i5);
        }
        c(l4);
    }

    public final void f(m mVar, m mVar2, int i4, int i5) {
        d l4 = l();
        m m4 = m();
        m4.f12333g = 0;
        l4.b(mVar, mVar2, m4, i4);
        if (i5 != 8) {
            l4.f12300d.d(j(i5), (int) (l4.f12300d.e(m4) * (-1.0f)));
        }
        c(l4);
    }

    public final void g(m mVar, m mVar2, int i4, int i5) {
        d l4 = l();
        m m4 = m();
        m4.f12333g = 0;
        l4.c(mVar, mVar2, m4, i4);
        if (i5 != 8) {
            l4.f12300d.d(j(i5), (int) (l4.f12300d.e(m4) * (-1.0f)));
        }
        c(l4);
    }

    public final void h(d dVar) {
        int i4;
        if (dVar.f12301e) {
            dVar.f12297a.e(this, dVar.f12298b);
        } else {
            d[] dVarArr = this.f12312f;
            int i5 = this.f12316j;
            dVarArr[i5] = dVar;
            m mVar = dVar.f12297a;
            mVar.f12332f = i5;
            this.f12316j = i5 + 1;
            mVar.g(this, dVar);
        }
        if (this.f12307a) {
            int i6 = 0;
            while (i6 < this.f12316j) {
                if (this.f12312f[i6] == null) {
                    System.out.println("WTF");
                }
                d dVar2 = this.f12312f[i6];
                if (dVar2 != null && dVar2.f12301e) {
                    dVar2.f12297a.e(this, dVar2.f12298b);
                    h hVar = this.f12318l.f12302a;
                    int i7 = hVar.f12323b;
                    Object[] objArr = hVar.f12322a;
                    if (i7 < objArr.length) {
                        objArr[i7] = dVar2;
                        hVar.f12323b = i7 + 1;
                    }
                    this.f12312f[i6] = null;
                    int i8 = i6 + 1;
                    int i9 = i8;
                    while (true) {
                        i4 = this.f12316j;
                        if (i8 >= i4) {
                            break;
                        }
                        d[] dVarArr2 = this.f12312f;
                        int i10 = i8 - 1;
                        d dVar3 = dVarArr2[i8];
                        dVarArr2[i10] = dVar3;
                        m mVar2 = dVar3.f12297a;
                        if (mVar2.f12332f == i8) {
                            mVar2.f12332f = i10;
                        }
                        i9 = i8;
                        i8++;
                    }
                    if (i9 < i4) {
                        this.f12312f[i9] = null;
                    }
                    this.f12316j = i4 - 1;
                    i6--;
                }
                i6++;
            }
            this.f12307a = false;
        }
    }

    public final void i() {
        for (int i4 = 0; i4 < this.f12316j; i4++) {
            d dVar = this.f12312f[i4];
            dVar.f12297a.f12334h = dVar.f12298b;
        }
    }

    public final m j(int i4) {
        if (this.f12315i + 1 >= this.f12311e) {
            o();
        }
        m a4 = a(SolverVariable$Type.ERROR);
        int i5 = this.f12308b + 1;
        this.f12308b = i5;
        this.f12315i++;
        a4.f12331e = i5;
        a4.f12333g = i4;
        this.f12318l.f12304c[i5] = a4;
        l lVar = this.f12309c;
        lVar.f12329i.f12324a = a4;
        Arrays.fill(a4.f12337k, 0.0f);
        a4.f12337k[a4.f12333g] = 1.0f;
        lVar.j(a4);
        return a4;
    }

    public final m k(Object obj) {
        m mVar = null;
        if (obj == null) {
            return null;
        }
        if (this.f12315i + 1 >= this.f12311e) {
            o();
        }
        if (obj instanceof C1428d) {
            C1428d c1428d = (C1428d) obj;
            mVar = c1428d.f12472i;
            if (mVar == null) {
                c1428d.k();
                mVar = c1428d.f12472i;
            }
            int i4 = mVar.f12331e;
            e eVar = this.f12318l;
            if (i4 == -1 || i4 > this.f12308b || eVar.f12304c[i4] == null) {
                if (i4 != -1) {
                    mVar.d();
                }
                int i5 = this.f12308b + 1;
                this.f12308b = i5;
                this.f12315i++;
                mVar.f12331e = i5;
                mVar.f12338l = SolverVariable$Type.UNRESTRICTED;
                eVar.f12304c[i5] = mVar;
            }
        }
        return mVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v4 */
    public final d l() {
        d dVar;
        e eVar = this.f12318l;
        h hVar = eVar.f12302a;
        int i4 = hVar.f12323b;
        if (i4 > 0) {
            int i5 = i4 - 1;
            ?? r32 = hVar.f12322a;
            ?? r4 = r32[i5];
            r32[i5] = 0;
            hVar.f12323b = i5;
            dVar = r4;
        } else {
            dVar = null;
        }
        d dVar2 = dVar;
        if (dVar2 == null) {
            return new d(eVar);
        }
        dVar2.f12297a = null;
        dVar2.f12300d.clear();
        dVar2.f12298b = 0.0f;
        dVar2.f12301e = false;
        return dVar2;
    }

    public final m m() {
        if (this.f12315i + 1 >= this.f12311e) {
            o();
        }
        m a4 = a(SolverVariable$Type.SLACK);
        int i4 = this.f12308b + 1;
        this.f12308b = i4;
        this.f12315i++;
        a4.f12331e = i4;
        this.f12318l.f12304c[i4] = a4;
        return a4;
    }

    public final void o() {
        int i4 = this.f12310d * 2;
        this.f12310d = i4;
        this.f12312f = (d[]) Arrays.copyOf(this.f12312f, i4);
        e eVar = this.f12318l;
        eVar.f12304c = (m[]) Arrays.copyOf(eVar.f12304c, this.f12310d);
        int i5 = this.f12310d;
        this.f12314h = new boolean[i5];
        this.f12311e = i5;
        this.f12317k = i5;
    }

    public final void p() {
        l lVar = this.f12309c;
        if (lVar.e()) {
            i();
        } else if (!this.f12313g) {
            q(lVar);
        } else {
            boolean z4 = false;
            int i4 = 0;
            while (true) {
                if (i4 >= this.f12316j) {
                    z4 = true;
                    break;
                } else if (!this.f12312f[i4].f12301e) {
                    break;
                } else {
                    i4++;
                }
            }
            if (z4) {
                i();
            } else {
                q(lVar);
            }
        }
    }

    public final void q(l lVar) {
        SolverVariable$Type solverVariable$Type;
        float f4;
        int i4;
        boolean z4;
        int i5 = 0;
        while (true) {
            int i6 = this.f12316j;
            solverVariable$Type = SolverVariable$Type.UNRESTRICTED;
            f4 = 0.0f;
            i4 = 1;
            if (i5 >= i6) {
                z4 = false;
                break;
            }
            d dVar = this.f12312f[i5];
            if (dVar.f12297a.f12338l != solverVariable$Type && dVar.f12298b < 0.0f) {
                z4 = true;
                break;
            }
            i5++;
        }
        if (z4) {
            boolean z5 = false;
            int i7 = 0;
            while (!z5) {
                i7 += i4;
                float f5 = Float.MAX_VALUE;
                int i8 = 0;
                int i9 = -1;
                int i10 = -1;
                int i11 = 0;
                while (i8 < this.f12316j) {
                    d dVar2 = this.f12312f[i8];
                    if (dVar2.f12297a.f12338l != solverVariable$Type && !dVar2.f12301e && dVar2.f12298b < f4) {
                        int f6 = dVar2.f12300d.f();
                        int i12 = 0;
                        while (i12 < f6) {
                            m h4 = dVar2.f12300d.h(i12);
                            float e4 = dVar2.f12300d.e(h4);
                            if (e4 > f4) {
                                for (int i13 = 0; i13 < 9; i13++) {
                                    float f7 = h4.f12336j[i13] / e4;
                                    if ((f7 < f5 && i13 == i11) || i13 > i11) {
                                        i10 = h4.f12331e;
                                        i11 = i13;
                                        f5 = f7;
                                        i9 = i8;
                                    }
                                }
                            }
                            i12++;
                            f4 = 0.0f;
                        }
                    }
                    i8++;
                    f4 = 0.0f;
                }
                if (i9 != -1) {
                    d dVar3 = this.f12312f[i9];
                    dVar3.f12297a.f12332f = -1;
                    dVar3.g(this.f12318l.f12304c[i10]);
                    m mVar = dVar3.f12297a;
                    mVar.f12332f = i9;
                    mVar.g(this, dVar3);
                } else {
                    z5 = true;
                }
                if (i7 > this.f12315i / 2) {
                    z5 = true;
                }
                f4 = 0.0f;
                i4 = 1;
            }
        }
        r(lVar);
        i();
    }

    public final void r(d dVar) {
        for (int i4 = 0; i4 < this.f12315i; i4++) {
            this.f12314h[i4] = false;
        }
        boolean z4 = false;
        int i5 = 0;
        while (!z4) {
            i5++;
            if (i5 >= this.f12315i * 2) {
                return;
            }
            m mVar = dVar.f12297a;
            if (mVar != null) {
                this.f12314h[mVar.f12331e] = true;
            }
            m d4 = dVar.d(this.f12314h);
            if (d4 != null) {
                boolean[] zArr = this.f12314h;
                int i6 = d4.f12331e;
                if (zArr[i6]) {
                    return;
                }
                zArr[i6] = true;
            }
            if (d4 != null) {
                float f4 = Float.MAX_VALUE;
                int i7 = -1;
                for (int i8 = 0; i8 < this.f12316j; i8++) {
                    d dVar2 = this.f12312f[i8];
                    if (dVar2.f12297a.f12338l != SolverVariable$Type.UNRESTRICTED && !dVar2.f12301e && dVar2.f12300d.g(d4)) {
                        float e4 = dVar2.f12300d.e(d4);
                        if (e4 < 0.0f) {
                            float f5 = (-dVar2.f12298b) / e4;
                            if (f5 < f4) {
                                i7 = i8;
                                f4 = f5;
                            }
                        }
                    }
                }
                if (i7 > -1) {
                    d dVar3 = this.f12312f[i7];
                    dVar3.f12297a.f12332f = -1;
                    dVar3.g(d4);
                    m mVar2 = dVar3.f12297a;
                    mVar2.f12332f = i7;
                    mVar2.g(this, dVar3);
                }
            } else {
                z4 = true;
            }
        }
    }

    public final void s() {
        e eVar;
        int i4 = 0;
        while (true) {
            eVar = this.f12318l;
            m[] mVarArr = eVar.f12304c;
            if (i4 >= mVarArr.length) {
                break;
            }
            m mVar = mVarArr[i4];
            if (mVar != null) {
                mVar.d();
            }
            i4++;
        }
        m[] mVarArr2 = this.f12319m;
        int i5 = this.f12320n;
        h hVar = eVar.f12303b;
        hVar.getClass();
        if (i5 > mVarArr2.length) {
            i5 = mVarArr2.length;
        }
        for (int i6 = 0; i6 < i5; i6++) {
            m mVar2 = mVarArr2[i6];
            int i7 = hVar.f12323b;
            Object[] objArr = hVar.f12322a;
            if (i7 < objArr.length) {
                objArr[i7] = mVar2;
                hVar.f12323b = i7 + 1;
            }
        }
        this.f12320n = 0;
        Arrays.fill(eVar.f12304c, (Object) null);
        this.f12308b = 0;
        l lVar = this.f12309c;
        lVar.f12328h = 0;
        lVar.f12298b = 0.0f;
        this.f12315i = 1;
        for (int i8 = 0; i8 < this.f12316j; i8++) {
            d dVar = this.f12312f[i8];
        }
        for (int i9 = 0; i9 < this.f12316j; i9++) {
            d[] dVarArr = this.f12312f;
            d dVar2 = dVarArr[i9];
            if (dVar2 != null) {
                h hVar2 = eVar.f12302a;
                int i10 = hVar2.f12323b;
                Object[] objArr2 = hVar2.f12322a;
                if (i10 < objArr2.length) {
                    objArr2[i10] = dVar2;
                    hVar2.f12323b = i10 + 1;
                }
            }
            dVarArr[i9] = null;
        }
        this.f12316j = 0;
        this.f12321o = new d(eVar);
    }
}
