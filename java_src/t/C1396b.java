package t;

import java.util.Arrays;
import s.C1391a;
/* renamed from: t.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1396b implements InterfaceC1397c {

    /* renamed from: b  reason: collision with root package name */
    public final d f12288b;

    /* renamed from: c  reason: collision with root package name */
    public final e f12289c;

    /* renamed from: a  reason: collision with root package name */
    public int f12287a = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f12290d = 8;

    /* renamed from: e  reason: collision with root package name */
    public int[] f12291e = new int[8];

    /* renamed from: f  reason: collision with root package name */
    public int[] f12292f = new int[8];

    /* renamed from: g  reason: collision with root package name */
    public float[] f12293g = new float[8];

    /* renamed from: h  reason: collision with root package name */
    public int f12294h = -1;

    /* renamed from: i  reason: collision with root package name */
    public int f12295i = -1;

    /* renamed from: j  reason: collision with root package name */
    public boolean f12296j = false;

    public C1396b(d dVar, e eVar) {
        this.f12288b = dVar;
        this.f12289c = eVar;
    }

    @Override // t.InterfaceC1397c
    public final float a(int i4) {
        int i5 = this.f12294h;
        for (int i6 = 0; i5 != -1 && i6 < this.f12287a; i6++) {
            if (i6 == i4) {
                return this.f12293g[i5];
            }
            i5 = this.f12292f[i5];
        }
        return 0.0f;
    }

    @Override // t.InterfaceC1397c
    public final float b(d dVar, boolean z4) {
        float e4 = e(dVar.f12297a);
        c(dVar.f12297a, z4);
        InterfaceC1397c interfaceC1397c = dVar.f12300d;
        int f4 = interfaceC1397c.f();
        for (int i4 = 0; i4 < f4; i4++) {
            m h4 = interfaceC1397c.h(i4);
            j(h4, interfaceC1397c.e(h4) * e4, z4);
        }
        return e4;
    }

    @Override // t.InterfaceC1397c
    public final float c(m mVar, boolean z4) {
        int i4 = this.f12294h;
        if (i4 == -1) {
            return 0.0f;
        }
        int i5 = 0;
        int i6 = -1;
        while (i4 != -1 && i5 < this.f12287a) {
            if (this.f12291e[i4] == mVar.f12331e) {
                if (i4 == this.f12294h) {
                    this.f12294h = this.f12292f[i4];
                } else {
                    int[] iArr = this.f12292f;
                    iArr[i6] = iArr[i4];
                }
                if (z4) {
                    mVar.c(this.f12288b);
                }
                mVar.f12341o--;
                this.f12287a--;
                this.f12291e[i4] = -1;
                if (this.f12296j) {
                    this.f12295i = i4;
                }
                return this.f12293g[i4];
            }
            i5++;
            i6 = i4;
            i4 = this.f12292f[i4];
        }
        return 0.0f;
    }

    @Override // t.InterfaceC1397c
    public final void clear() {
        int i4 = this.f12294h;
        for (int i5 = 0; i4 != -1 && i5 < this.f12287a; i5++) {
            m mVar = this.f12289c.f12304c[this.f12291e[i4]];
            if (mVar != null) {
                mVar.c(this.f12288b);
            }
            i4 = this.f12292f[i4];
        }
        this.f12294h = -1;
        this.f12295i = -1;
        this.f12296j = false;
        this.f12287a = 0;
    }

    @Override // t.InterfaceC1397c
    public final void d(m mVar, float f4) {
        if (f4 == 0.0f) {
            c(mVar, true);
            return;
        }
        int i4 = this.f12294h;
        d dVar = this.f12288b;
        if (i4 == -1) {
            this.f12294h = 0;
            this.f12293g[0] = f4;
            this.f12291e[0] = mVar.f12331e;
            this.f12292f[0] = -1;
            mVar.f12341o++;
            mVar.a(dVar);
            this.f12287a++;
            if (this.f12296j) {
                return;
            }
            int i5 = this.f12295i + 1;
            this.f12295i = i5;
            int[] iArr = this.f12291e;
            if (i5 >= iArr.length) {
                this.f12296j = true;
                this.f12295i = iArr.length - 1;
                return;
            }
            return;
        }
        int i6 = -1;
        for (int i7 = 0; i4 != -1 && i7 < this.f12287a; i7++) {
            int i8 = this.f12291e[i4];
            int i9 = mVar.f12331e;
            if (i8 == i9) {
                this.f12293g[i4] = f4;
                return;
            }
            if (i8 < i9) {
                i6 = i4;
            }
            i4 = this.f12292f[i4];
        }
        int i10 = this.f12295i;
        int i11 = i10 + 1;
        if (this.f12296j) {
            int[] iArr2 = this.f12291e;
            if (iArr2[i10] != -1) {
                i10 = iArr2.length;
            }
        } else {
            i10 = i11;
        }
        int[] iArr3 = this.f12291e;
        if (i10 >= iArr3.length && this.f12287a < iArr3.length) {
            int i12 = 0;
            while (true) {
                int[] iArr4 = this.f12291e;
                if (i12 >= iArr4.length) {
                    break;
                } else if (iArr4[i12] == -1) {
                    i10 = i12;
                    break;
                } else {
                    i12++;
                }
            }
        }
        int[] iArr5 = this.f12291e;
        if (i10 >= iArr5.length) {
            i10 = iArr5.length;
            int i13 = this.f12290d * 2;
            this.f12290d = i13;
            this.f12296j = false;
            this.f12295i = i10 - 1;
            this.f12293g = Arrays.copyOf(this.f12293g, i13);
            this.f12291e = Arrays.copyOf(this.f12291e, this.f12290d);
            this.f12292f = Arrays.copyOf(this.f12292f, this.f12290d);
        }
        this.f12291e[i10] = mVar.f12331e;
        this.f12293g[i10] = f4;
        if (i6 != -1) {
            int[] iArr6 = this.f12292f;
            iArr6[i10] = iArr6[i6];
            iArr6[i6] = i10;
        } else {
            this.f12292f[i10] = this.f12294h;
            this.f12294h = i10;
        }
        mVar.f12341o++;
        mVar.a(dVar);
        int i14 = this.f12287a + 1;
        this.f12287a = i14;
        if (!this.f12296j) {
            this.f12295i++;
        }
        int[] iArr7 = this.f12291e;
        if (i14 >= iArr7.length) {
            this.f12296j = true;
        }
        if (this.f12295i >= iArr7.length) {
            this.f12296j = true;
            this.f12295i = iArr7.length - 1;
        }
    }

    @Override // t.InterfaceC1397c
    public final float e(m mVar) {
        int i4 = this.f12294h;
        for (int i5 = 0; i4 != -1 && i5 < this.f12287a; i5++) {
            if (this.f12291e[i4] == mVar.f12331e) {
                return this.f12293g[i4];
            }
            i4 = this.f12292f[i4];
        }
        return 0.0f;
    }

    @Override // t.InterfaceC1397c
    public final int f() {
        return this.f12287a;
    }

    @Override // t.InterfaceC1397c
    public final boolean g(m mVar) {
        int i4 = this.f12294h;
        if (i4 == -1) {
            return false;
        }
        for (int i5 = 0; i4 != -1 && i5 < this.f12287a; i5++) {
            if (this.f12291e[i4] == mVar.f12331e) {
                return true;
            }
            i4 = this.f12292f[i4];
        }
        return false;
    }

    @Override // t.InterfaceC1397c
    public final m h(int i4) {
        int i5 = this.f12294h;
        for (int i6 = 0; i5 != -1 && i6 < this.f12287a; i6++) {
            if (i6 == i4) {
                return this.f12289c.f12304c[this.f12291e[i5]];
            }
            i5 = this.f12292f[i5];
        }
        return null;
    }

    @Override // t.InterfaceC1397c
    public final void i(float f4) {
        int i4 = this.f12294h;
        for (int i5 = 0; i4 != -1 && i5 < this.f12287a; i5++) {
            float[] fArr = this.f12293g;
            fArr[i4] = fArr[i4] / f4;
            i4 = this.f12292f[i4];
        }
    }

    @Override // t.InterfaceC1397c
    public final void j(m mVar, float f4, boolean z4) {
        if (f4 <= -0.001f || f4 >= 0.001f) {
            int i4 = this.f12294h;
            d dVar = this.f12288b;
            if (i4 == -1) {
                this.f12294h = 0;
                this.f12293g[0] = f4;
                this.f12291e[0] = mVar.f12331e;
                this.f12292f[0] = -1;
                mVar.f12341o++;
                mVar.a(dVar);
                this.f12287a++;
                if (this.f12296j) {
                    return;
                }
                int i5 = this.f12295i + 1;
                this.f12295i = i5;
                int[] iArr = this.f12291e;
                if (i5 >= iArr.length) {
                    this.f12296j = true;
                    this.f12295i = iArr.length - 1;
                    return;
                }
                return;
            }
            int i6 = -1;
            for (int i7 = 0; i4 != -1 && i7 < this.f12287a; i7++) {
                int i8 = this.f12291e[i4];
                int i9 = mVar.f12331e;
                if (i8 == i9) {
                    float[] fArr = this.f12293g;
                    float f5 = fArr[i4] + f4;
                    if (f5 > -0.001f && f5 < 0.001f) {
                        f5 = 0.0f;
                    }
                    fArr[i4] = f5;
                    if (f5 == 0.0f) {
                        if (i4 == this.f12294h) {
                            this.f12294h = this.f12292f[i4];
                        } else {
                            int[] iArr2 = this.f12292f;
                            iArr2[i6] = iArr2[i4];
                        }
                        if (z4) {
                            mVar.c(dVar);
                        }
                        if (this.f12296j) {
                            this.f12295i = i4;
                        }
                        mVar.f12341o--;
                        this.f12287a--;
                        return;
                    }
                    return;
                }
                if (i8 < i9) {
                    i6 = i4;
                }
                i4 = this.f12292f[i4];
            }
            int i10 = this.f12295i;
            int i11 = i10 + 1;
            if (this.f12296j) {
                int[] iArr3 = this.f12291e;
                if (iArr3[i10] != -1) {
                    i10 = iArr3.length;
                }
            } else {
                i10 = i11;
            }
            int[] iArr4 = this.f12291e;
            if (i10 >= iArr4.length && this.f12287a < iArr4.length) {
                int i12 = 0;
                while (true) {
                    int[] iArr5 = this.f12291e;
                    if (i12 >= iArr5.length) {
                        break;
                    } else if (iArr5[i12] == -1) {
                        i10 = i12;
                        break;
                    } else {
                        i12++;
                    }
                }
            }
            int[] iArr6 = this.f12291e;
            if (i10 >= iArr6.length) {
                i10 = iArr6.length;
                int i13 = this.f12290d * 2;
                this.f12290d = i13;
                this.f12296j = false;
                this.f12295i = i10 - 1;
                this.f12293g = Arrays.copyOf(this.f12293g, i13);
                this.f12291e = Arrays.copyOf(this.f12291e, this.f12290d);
                this.f12292f = Arrays.copyOf(this.f12292f, this.f12290d);
            }
            this.f12291e[i10] = mVar.f12331e;
            this.f12293g[i10] = f4;
            if (i6 != -1) {
                int[] iArr7 = this.f12292f;
                iArr7[i10] = iArr7[i6];
                iArr7[i6] = i10;
            } else {
                this.f12292f[i10] = this.f12294h;
                this.f12294h = i10;
            }
            mVar.f12341o++;
            mVar.a(dVar);
            this.f12287a++;
            if (!this.f12296j) {
                this.f12295i++;
            }
            int i14 = this.f12295i;
            int[] iArr8 = this.f12291e;
            if (i14 >= iArr8.length) {
                this.f12296j = true;
                this.f12295i = iArr8.length - 1;
            }
        }
    }

    @Override // t.InterfaceC1397c
    public final void k() {
        int i4 = this.f12294h;
        for (int i5 = 0; i4 != -1 && i5 < this.f12287a; i5++) {
            float[] fArr = this.f12293g;
            fArr[i4] = fArr[i4] * (-1.0f);
            i4 = this.f12292f[i4];
        }
    }

    public final String toString() {
        int i4 = this.f12294h;
        String str = "";
        for (int i5 = 0; i4 != -1 && i5 < this.f12287a; i5++) {
            StringBuilder a4 = C1395a.a(C1391a.a(str, " -> "));
            a4.append(this.f12293g[i4]);
            a4.append(" : ");
            StringBuilder a5 = C1395a.a(a4.toString());
            a5.append(this.f12289c.f12304c[this.f12291e[i4]]);
            str = a5.toString();
            i4 = this.f12292f[i4];
        }
        return str;
    }
}
