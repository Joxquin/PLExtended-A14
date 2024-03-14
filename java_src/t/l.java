package t;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class l extends d {

    /* renamed from: f  reason: collision with root package name */
    public m[] f12326f;

    /* renamed from: g  reason: collision with root package name */
    public m[] f12327g;

    /* renamed from: h  reason: collision with root package name */
    public int f12328h;

    /* renamed from: i  reason: collision with root package name */
    public final k f12329i;

    public l(e eVar) {
        super(eVar);
        this.f12326f = new m[128];
        this.f12327g = new m[128];
        this.f12328h = 0;
        this.f12329i = new k(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x004d, code lost:
        if (r9 < r8) goto L32;
     */
    @Override // t.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final t.m d(boolean[] r12) {
        /*
            r11 = this;
            r0 = -1
            r1 = 0
            r3 = r0
            r2 = r1
        L4:
            int r4 = r11.f12328h
            if (r2 >= r4) goto L57
            t.m[] r4 = r11.f12326f
            r5 = r4[r2]
            int r6 = r5.f12331e
            boolean r6 = r12[r6]
            if (r6 == 0) goto L13
            goto L54
        L13:
            t.k r6 = r11.f12329i
            r6.f12324a = r5
            r5 = 1
            r7 = 8
            if (r3 != r0) goto L36
        L1c:
            if (r7 < 0) goto L32
            t.m r4 = r6.f12324a
            float[] r4 = r4.f12337k
            r4 = r4[r7]
            r8 = 0
            int r9 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r9 <= 0) goto L2a
            goto L32
        L2a:
            int r4 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r4 >= 0) goto L2f
            goto L33
        L2f:
            int r7 = r7 + (-1)
            goto L1c
        L32:
            r5 = r1
        L33:
            if (r5 == 0) goto L54
            goto L53
        L36:
            r4 = r4[r3]
        L38:
            if (r7 < 0) goto L50
            float[] r8 = r4.f12337k
            r8 = r8[r7]
            t.m r9 = r6.f12324a
            float[] r9 = r9.f12337k
            r9 = r9[r7]
            int r10 = (r9 > r8 ? 1 : (r9 == r8 ? 0 : -1))
            if (r10 != 0) goto L4b
            int r7 = r7 + (-1)
            goto L38
        L4b:
            int r4 = (r9 > r8 ? 1 : (r9 == r8 ? 0 : -1))
            if (r4 >= 0) goto L50
            goto L51
        L50:
            r5 = r1
        L51:
            if (r5 == 0) goto L54
        L53:
            r3 = r2
        L54:
            int r2 = r2 + 1
            goto L4
        L57:
            if (r3 != r0) goto L5b
            r11 = 0
            return r11
        L5b:
            t.m[] r11 = r11.f12326f
            r11 = r11[r3]
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: t.l.d(boolean[]):t.m");
    }

    @Override // t.d
    public final boolean e() {
        return this.f12328h == 0;
    }

    @Override // t.d
    public final void i(f fVar, d dVar, boolean z4) {
        m mVar = dVar.f12297a;
        if (mVar == null) {
            return;
        }
        InterfaceC1397c interfaceC1397c = dVar.f12300d;
        int f4 = interfaceC1397c.f();
        for (int i4 = 0; i4 < f4; i4++) {
            m h4 = interfaceC1397c.h(i4);
            float a4 = interfaceC1397c.a(i4);
            k kVar = this.f12329i;
            kVar.f12324a = h4;
            boolean z5 = true;
            if (h4.f12330d) {
                for (int i5 = 0; i5 < 9; i5++) {
                    float[] fArr = kVar.f12324a.f12337k;
                    float f5 = (mVar.f12337k[i5] * a4) + fArr[i5];
                    fArr[i5] = f5;
                    if (Math.abs(f5) < 1.0E-4f) {
                        kVar.f12324a.f12337k[i5] = 0.0f;
                    } else {
                        z5 = false;
                    }
                }
                if (z5) {
                    kVar.f12325b.k(kVar.f12324a);
                }
                z5 = false;
            } else {
                for (int i6 = 0; i6 < 9; i6++) {
                    float f6 = mVar.f12337k[i6];
                    if (f6 != 0.0f) {
                        float f7 = f6 * a4;
                        if (Math.abs(f7) < 1.0E-4f) {
                            f7 = 0.0f;
                        }
                        kVar.f12324a.f12337k[i6] = f7;
                    } else {
                        kVar.f12324a.f12337k[i6] = 0.0f;
                    }
                }
            }
            if (z5) {
                j(h4);
            }
            this.f12298b = (dVar.f12298b * a4) + this.f12298b;
        }
        k(mVar);
    }

    public final void j(m mVar) {
        int i4;
        int i5 = this.f12328h + 1;
        m[] mVarArr = this.f12326f;
        if (i5 > mVarArr.length) {
            m[] mVarArr2 = (m[]) Arrays.copyOf(mVarArr, mVarArr.length * 2);
            this.f12326f = mVarArr2;
            this.f12327g = (m[]) Arrays.copyOf(mVarArr2, mVarArr2.length * 2);
        }
        m[] mVarArr3 = this.f12326f;
        int i6 = this.f12328h;
        mVarArr3[i6] = mVar;
        int i7 = i6 + 1;
        this.f12328h = i7;
        if (i7 > 1 && mVarArr3[i7 - 1].f12331e > mVar.f12331e) {
            int i8 = 0;
            while (true) {
                i4 = this.f12328h;
                if (i8 >= i4) {
                    break;
                }
                this.f12327g[i8] = this.f12326f[i8];
                i8++;
            }
            Arrays.sort(this.f12327g, 0, i4, new i());
            for (int i9 = 0; i9 < this.f12328h; i9++) {
                this.f12326f[i9] = this.f12327g[i9];
            }
        }
        mVar.f12330d = true;
        mVar.a(this);
    }

    public final void k(m mVar) {
        int i4 = 0;
        while (i4 < this.f12328h) {
            if (this.f12326f[i4] == mVar) {
                while (true) {
                    int i5 = this.f12328h;
                    if (i4 >= i5 - 1) {
                        this.f12328h = i5 - 1;
                        mVar.f12330d = false;
                        return;
                    }
                    m[] mVarArr = this.f12326f;
                    int i6 = i4 + 1;
                    mVarArr[i4] = mVarArr[i6];
                    i4 = i6;
                }
            } else {
                i4++;
            }
        }
    }

    @Override // t.d
    public final String toString() {
        String str = " goal -> (" + this.f12298b + ") : ";
        for (int i4 = 0; i4 < this.f12328h; i4++) {
            m mVar = this.f12326f[i4];
            k kVar = this.f12329i;
            kVar.f12324a = mVar;
            str = str + kVar + " ";
        }
        return str;
    }
}
