package t;

import androidx.constraintlayout.core.SolverVariable$Type;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class d {

    /* renamed from: d  reason: collision with root package name */
    public InterfaceC1397c f12300d;

    /* renamed from: a  reason: collision with root package name */
    public m f12297a = null;

    /* renamed from: b  reason: collision with root package name */
    public float f12298b = 0.0f;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f12299c = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    public boolean f12301e = false;

    public d() {
    }

    public final void a(f fVar, int i4) {
        this.f12300d.d(fVar.j(i4), 1.0f);
        this.f12300d.d(fVar.j(i4), -1.0f);
    }

    public final void b(m mVar, m mVar2, m mVar3, int i4) {
        boolean z4 = false;
        if (i4 != 0) {
            if (i4 < 0) {
                i4 *= -1;
                z4 = true;
            }
            this.f12298b = i4;
        }
        if (z4) {
            this.f12300d.d(mVar, 1.0f);
            this.f12300d.d(mVar2, -1.0f);
            this.f12300d.d(mVar3, -1.0f);
            return;
        }
        this.f12300d.d(mVar, -1.0f);
        this.f12300d.d(mVar2, 1.0f);
        this.f12300d.d(mVar3, 1.0f);
    }

    public final void c(m mVar, m mVar2, m mVar3, int i4) {
        boolean z4 = false;
        if (i4 != 0) {
            if (i4 < 0) {
                i4 *= -1;
                z4 = true;
            }
            this.f12298b = i4;
        }
        if (z4) {
            this.f12300d.d(mVar, 1.0f);
            this.f12300d.d(mVar2, -1.0f);
            this.f12300d.d(mVar3, 1.0f);
            return;
        }
        this.f12300d.d(mVar, -1.0f);
        this.f12300d.d(mVar2, 1.0f);
        this.f12300d.d(mVar3, -1.0f);
    }

    public m d(boolean[] zArr) {
        return f(zArr, null);
    }

    public boolean e() {
        return this.f12297a == null && this.f12298b == 0.0f && this.f12300d.f() == 0;
    }

    public final m f(boolean[] zArr, m mVar) {
        SolverVariable$Type solverVariable$Type;
        int f4 = this.f12300d.f();
        m mVar2 = null;
        float f5 = 0.0f;
        for (int i4 = 0; i4 < f4; i4++) {
            float a4 = this.f12300d.a(i4);
            if (a4 < 0.0f) {
                m h4 = this.f12300d.h(i4);
                if ((zArr == null || !zArr[h4.f12331e]) && h4 != mVar && (((solverVariable$Type = h4.f12338l) == SolverVariable$Type.SLACK || solverVariable$Type == SolverVariable$Type.ERROR) && a4 < f5)) {
                    f5 = a4;
                    mVar2 = h4;
                }
            }
        }
        return mVar2;
    }

    public final void g(m mVar) {
        m mVar2 = this.f12297a;
        if (mVar2 != null) {
            this.f12300d.d(mVar2, -1.0f);
            this.f12297a.f12332f = -1;
            this.f12297a = null;
        }
        float c4 = this.f12300d.c(mVar, true) * (-1.0f);
        this.f12297a = mVar;
        if (c4 == 1.0f) {
            return;
        }
        this.f12298b /= c4;
        this.f12300d.i(c4);
    }

    public final void h(f fVar, m mVar, boolean z4) {
        if (mVar == null || !mVar.f12335i) {
            return;
        }
        float e4 = this.f12300d.e(mVar);
        this.f12298b = (mVar.f12334h * e4) + this.f12298b;
        this.f12300d.c(mVar, z4);
        if (z4) {
            mVar.c(this);
        }
        if (this.f12300d.f() == 0) {
            this.f12301e = true;
            fVar.f12307a = true;
        }
    }

    public void i(f fVar, d dVar, boolean z4) {
        float b4 = this.f12300d.b(dVar, z4);
        this.f12298b = (dVar.f12298b * b4) + this.f12298b;
        if (z4) {
            dVar.f12297a.c(this);
        }
        if (this.f12297a == null || this.f12300d.f() != 0) {
            return;
        }
        this.f12301e = true;
        fVar.f12307a = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r9 = this;
            t.m r0 = r9.f12297a
            if (r0 != 0) goto L7
            java.lang.String r0 = "0"
            goto L17
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = ""
            r0.<init>(r1)
            t.m r1 = r9.f12297a
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        L17:
            java.lang.String r1 = " = "
            java.lang.String r0 = s.C1391a.a(r0, r1)
            float r1 = r9.f12298b
            r2 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L35
            java.lang.StringBuilder r0 = t.C1395a.a(r0)
            float r1 = r9.f12298b
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r1 = r3
            goto L36
        L35:
            r1 = r4
        L36:
            t.c r5 = r9.f12300d
            int r5 = r5.f()
        L3c:
            if (r4 >= r5) goto L9b
            t.c r6 = r9.f12300d
            t.m r6 = r6.h(r4)
            if (r6 != 0) goto L47
            goto L98
        L47:
            t.c r7 = r9.f12300d
            float r7 = r7.a(r4)
            int r8 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r8 != 0) goto L52
            goto L98
        L52:
            java.lang.String r6 = r6.toString()
            if (r1 != 0) goto L63
            int r1 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r1 >= 0) goto L75
            java.lang.String r1 = "- "
            java.lang.String r0 = s.C1391a.a(r0, r1)
            goto L72
        L63:
            if (r8 <= 0) goto L6c
            java.lang.String r1 = " + "
            java.lang.String r0 = s.C1391a.a(r0, r1)
            goto L75
        L6c:
            java.lang.String r1 = " - "
            java.lang.String r0 = s.C1391a.a(r0, r1)
        L72:
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            float r7 = r7 * r1
        L75:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r1 != 0) goto L80
            java.lang.String r0 = s.C1391a.a(r0, r6)
            goto L97
        L80:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r7)
            java.lang.String r0 = " "
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = r1.toString()
        L97:
            r1 = r3
        L98:
            int r4 = r4 + 1
            goto L3c
        L9b:
            if (r1 != 0) goto La3
            java.lang.String r9 = "0.0"
            java.lang.String r0 = s.C1391a.a(r0, r9)
        La3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: t.d.toString():java.lang.String");
    }

    public d(e eVar) {
        this.f12300d = new C1396b(this, eVar);
    }
}
