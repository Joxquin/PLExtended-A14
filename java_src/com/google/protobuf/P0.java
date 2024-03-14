package com.google.protobuf;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class P0 {

    /* renamed from: f  reason: collision with root package name */
    public static final P0 f8566f = new P0(0, new int[0], new Object[0], false);

    /* renamed from: a  reason: collision with root package name */
    public int f8567a;

    /* renamed from: b  reason: collision with root package name */
    public int[] f8568b;

    /* renamed from: c  reason: collision with root package name */
    public Object[] f8569c;

    /* renamed from: d  reason: collision with root package name */
    public int f8570d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f8571e;

    public P0() {
        this(0, new int[8], new Object[8], true);
    }

    public final void a(int i4) {
        int[] iArr = this.f8568b;
        if (i4 > iArr.length) {
            int i5 = this.f8567a;
            int i6 = (i5 / 2) + i5;
            if (i6 >= i4) {
                i4 = i6;
            }
            if (i4 < 8) {
                i4 = 8;
            }
            this.f8568b = Arrays.copyOf(iArr, i4);
            this.f8569c = Arrays.copyOf(this.f8569c, i4);
        }
    }

    public final int b() {
        int i4;
        int i5 = this.f8570d;
        if (i5 != -1) {
            return i5;
        }
        int i6 = 0;
        for (int i7 = 0; i7 < this.f8567a; i7++) {
            int i8 = this.f8568b[i7];
            int i9 = i8 >>> 3;
            int i10 = i8 & 7;
            if (i10 == 0) {
                i4 = r.i(i9) + r.l(((Long) this.f8569c[i7]).longValue());
            } else if (i10 == 1) {
                ((Long) this.f8569c[i7]).longValue();
                i4 = r.d(i9);
            } else if (i10 == 2) {
                i4 = r.b(i9, (ByteString) this.f8569c[i7]);
            } else if (i10 == 3) {
                i6 = ((P0) this.f8569c[i7]).b() + (r.i(i9) * 2) + i6;
            } else if (i10 != 5) {
                throw new IllegalStateException(InvalidProtocolBufferException.d());
            } else {
                ((Integer) this.f8569c[i7]).intValue();
                i4 = r.c(i9);
            }
            i6 = i4 + i6;
        }
        this.f8570d = i6;
        return i6;
    }

    public final void c(int i4, Object obj) {
        if (!this.f8571e) {
            throw new UnsupportedOperationException();
        }
        a(this.f8567a + 1);
        int[] iArr = this.f8568b;
        int i5 = this.f8567a;
        iArr[i5] = i4;
        this.f8569c[i5] = obj;
        this.f8567a = i5 + 1;
    }

    public final void d(C0776s c0776s) {
        if (this.f8567a == 0) {
            return;
        }
        c0776s.getClass();
        for (int i4 = 0; i4 < this.f8567a; i4++) {
            int i5 = this.f8568b[i4];
            Object obj = this.f8569c[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                c0776s.f(i6, ((Long) obj).longValue());
            } else if (i7 == 1) {
                c0776s.d(i6, ((Long) obj).longValue());
            } else if (i7 == 2) {
                c0776s.a(i6, (ByteString) obj);
            } else if (i7 == 3) {
                c0776s.h(i6);
                ((P0) obj).d(c0776s);
                c0776s.b(i6);
            } else if (i7 != 5) {
                throw new RuntimeException(InvalidProtocolBufferException.d());
            } else {
                c0776s.c(i6, ((Integer) obj).intValue());
            }
        }
    }

    public final boolean equals(Object obj) {
        boolean z4;
        boolean z5;
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof P0)) {
            P0 p02 = (P0) obj;
            int i4 = this.f8567a;
            if (i4 == p02.f8567a) {
                int[] iArr = this.f8568b;
                int[] iArr2 = p02.f8568b;
                int i5 = 0;
                while (true) {
                    if (i5 >= i4) {
                        z4 = true;
                        break;
                    } else if (iArr[i5] != iArr2[i5]) {
                        z4 = false;
                        break;
                    } else {
                        i5++;
                    }
                }
                if (z4) {
                    Object[] objArr = this.f8569c;
                    Object[] objArr2 = p02.f8569c;
                    int i6 = this.f8567a;
                    int i7 = 0;
                    while (true) {
                        if (i7 >= i6) {
                            z5 = true;
                            break;
                        } else if (!objArr[i7].equals(objArr2[i7])) {
                            z5 = false;
                            break;
                        } else {
                            i7++;
                        }
                    }
                    if (z5) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int i4 = this.f8567a;
        int i5 = (527 + i4) * 31;
        int[] iArr = this.f8568b;
        int i6 = 17;
        int i7 = 17;
        for (int i8 = 0; i8 < i4; i8++) {
            i7 = (i7 * 31) + iArr[i8];
        }
        int i9 = (i5 + i7) * 31;
        Object[] objArr = this.f8569c;
        int i10 = this.f8567a;
        for (int i11 = 0; i11 < i10; i11++) {
            i6 = (i6 * 31) + objArr[i11].hashCode();
        }
        return i9 + i6;
    }

    public P0(int i4, int[] iArr, Object[] objArr, boolean z4) {
        this.f8570d = -1;
        this.f8567a = i4;
        this.f8568b = iArr;
        this.f8569c = objArr;
        this.f8571e = z4;
    }
}
