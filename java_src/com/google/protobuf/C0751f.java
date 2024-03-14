package com.google.protobuf;
/* renamed from: com.google.protobuf.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0751f {
    public static int a(byte[] bArr, int i4, C0749e c0749e) {
        int k4 = k(bArr, i4, c0749e);
        int i5 = c0749e.f8634a;
        if (i5 >= 0) {
            if (i5 <= bArr.length - k4) {
                if (i5 == 0) {
                    c0749e.f8636c = ByteString.f8505d;
                    return k4;
                }
                c0749e.f8636c = ByteString.j(bArr, k4, i5);
                return k4 + i5;
            }
            throw InvalidProtocolBufferException.j();
        }
        throw InvalidProtocolBufferException.f();
    }

    public static int b(int i4, byte[] bArr) {
        return ((bArr[i4 + 3] & 255) << 24) | (bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16);
    }

    public static long c(int i4, byte[] bArr) {
        return ((bArr[i4 + 7] & 255) << 56) | (bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16) | ((bArr[i4 + 3] & 255) << 24) | ((bArr[i4 + 4] & 255) << 32) | ((bArr[i4 + 5] & 255) << 40) | ((bArr[i4 + 6] & 255) << 48);
    }

    public static int d(C0 c02, byte[] bArr, int i4, int i5, C0749e c0749e) {
        Object i6 = c02.i();
        int n4 = n(i6, c02, bArr, i4, i5, c0749e);
        c02.d(i6);
        c0749e.f8636c = i6;
        return n4;
    }

    public static int e(C0 c02, int i4, byte[] bArr, int i5, int i6, S s4, C0749e c0749e) {
        int d4 = d(c02, bArr, i5, i6, c0749e);
        s4.add(c0749e.f8636c);
        while (d4 < i6) {
            int k4 = k(bArr, d4, c0749e);
            if (i4 != c0749e.f8634a) {
                break;
            }
            d4 = d(c02, bArr, k4, i6, c0749e);
            s4.add(c0749e.f8636c);
        }
        return d4;
    }

    public static int f(byte[] bArr, int i4, S s4, C0749e c0749e) {
        K k4 = (K) s4;
        int k5 = k(bArr, i4, c0749e);
        int i5 = c0749e.f8634a + k5;
        while (k5 < i5) {
            k5 = k(bArr, k5, c0749e);
            k4.i(c0749e.f8634a);
        }
        if (k5 == i5) {
            return k5;
        }
        throw InvalidProtocolBufferException.j();
    }

    public static int g(byte[] bArr, int i4, C0749e c0749e) {
        int k4 = k(bArr, i4, c0749e);
        int i5 = c0749e.f8634a;
        if (i5 >= 0) {
            if (i5 == 0) {
                c0749e.f8636c = "";
                return k4;
            }
            c0749e.f8636c = new String(bArr, k4, i5, T.f8577a);
            return k4 + i5;
        }
        throw InvalidProtocolBufferException.f();
    }

    public static int h(byte[] bArr, int i4, C0749e c0749e) {
        int k4 = k(bArr, i4, c0749e);
        int i5 = c0749e.f8634a;
        if (i5 >= 0) {
            if (i5 == 0) {
                c0749e.f8636c = "";
                return k4;
            }
            c0749e.f8636c = b1.b(bArr, k4, i5);
            return k4 + i5;
        }
        throw InvalidProtocolBufferException.f();
    }

    public static int i(int i4, byte[] bArr, int i5, int i6, P0 p02, C0749e c0749e) {
        if ((i4 >>> 3) != 0) {
            int i7 = i4 & 7;
            if (i7 == 0) {
                int m4 = m(bArr, i5, c0749e);
                p02.c(i4, Long.valueOf(c0749e.f8635b));
                return m4;
            } else if (i7 == 1) {
                p02.c(i4, Long.valueOf(c(i5, bArr)));
                return i5 + 8;
            } else if (i7 == 2) {
                int k4 = k(bArr, i5, c0749e);
                int i8 = c0749e.f8634a;
                if (i8 >= 0) {
                    if (i8 <= bArr.length - k4) {
                        if (i8 == 0) {
                            p02.c(i4, ByteString.f8505d);
                        } else {
                            p02.c(i4, ByteString.j(bArr, k4, i8));
                        }
                        return k4 + i8;
                    }
                    throw InvalidProtocolBufferException.j();
                }
                throw InvalidProtocolBufferException.f();
            } else if (i7 != 3) {
                if (i7 == 5) {
                    p02.c(i4, Integer.valueOf(b(i5, bArr)));
                    return i5 + 4;
                }
                throw InvalidProtocolBufferException.b();
            } else {
                P0 p03 = new P0();
                int i9 = (i4 & (-8)) | 4;
                int i10 = 0;
                while (true) {
                    if (i5 >= i6) {
                        break;
                    }
                    int k5 = k(bArr, i5, c0749e);
                    int i11 = c0749e.f8634a;
                    if (i11 == i9) {
                        i10 = i11;
                        i5 = k5;
                        break;
                    }
                    i10 = i11;
                    i5 = i(i11, bArr, k5, i6, p03, c0749e);
                }
                if (i5 > i6 || i10 != i9) {
                    throw InvalidProtocolBufferException.g();
                }
                p02.c(i4, p03);
                return i5;
            }
        }
        throw InvalidProtocolBufferException.b();
    }

    public static int j(int i4, byte[] bArr, int i5, C0749e c0749e) {
        int i6 = i4 & 127;
        int i7 = i5 + 1;
        byte b4 = bArr[i5];
        if (b4 >= 0) {
            c0749e.f8634a = i6 | (b4 << 7);
            return i7;
        }
        int i8 = i6 | ((b4 & Byte.MAX_VALUE) << 7);
        int i9 = i7 + 1;
        byte b5 = bArr[i7];
        if (b5 >= 0) {
            c0749e.f8634a = i8 | (b5 << 14);
            return i9;
        }
        int i10 = i8 | ((b5 & Byte.MAX_VALUE) << 14);
        int i11 = i9 + 1;
        byte b6 = bArr[i9];
        if (b6 >= 0) {
            c0749e.f8634a = i10 | (b6 << 21);
            return i11;
        }
        int i12 = i10 | ((b6 & Byte.MAX_VALUE) << 21);
        int i13 = i11 + 1;
        byte b7 = bArr[i11];
        if (b7 >= 0) {
            c0749e.f8634a = i12 | (b7 << 28);
            return i13;
        }
        int i14 = i12 | ((b7 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i15 = i13 + 1;
            if (bArr[i13] >= 0) {
                c0749e.f8634a = i14;
                return i15;
            }
            i13 = i15;
        }
    }

    public static int k(byte[] bArr, int i4, C0749e c0749e) {
        int i5 = i4 + 1;
        byte b4 = bArr[i4];
        if (b4 >= 0) {
            c0749e.f8634a = b4;
            return i5;
        }
        return j(b4, bArr, i5, c0749e);
    }

    public static int l(int i4, byte[] bArr, int i5, int i6, S s4, C0749e c0749e) {
        K k4 = (K) s4;
        int k5 = k(bArr, i5, c0749e);
        k4.i(c0749e.f8634a);
        while (k5 < i6) {
            int k6 = k(bArr, k5, c0749e);
            if (i4 != c0749e.f8634a) {
                break;
            }
            k5 = k(bArr, k6, c0749e);
            k4.i(c0749e.f8634a);
        }
        return k5;
    }

    public static int m(byte[] bArr, int i4, C0749e c0749e) {
        byte b4;
        int i5 = i4 + 1;
        long j4 = bArr[i4];
        if (j4 >= 0) {
            c0749e.f8635b = j4;
            return i5;
        }
        int i6 = i5 + 1;
        byte b5 = bArr[i5];
        long j5 = (j4 & 127) | ((b5 & Byte.MAX_VALUE) << 7);
        int i7 = 7;
        while (b5 < 0) {
            int i8 = i6 + 1;
            i7 += 7;
            j5 |= (b4 & Byte.MAX_VALUE) << i7;
            b5 = bArr[i6];
            i6 = i8;
        }
        c0749e.f8635b = j5;
        return i6;
    }

    public static int n(Object obj, C0 c02, byte[] bArr, int i4, int i5, C0749e c0749e) {
        int i6 = i4 + 1;
        int i7 = bArr[i4];
        if (i7 < 0) {
            i6 = j(i7, bArr, i6, c0749e);
            i7 = c0749e.f8634a;
        }
        int i8 = i6;
        if (i7 < 0 || i7 > i5 - i8) {
            throw InvalidProtocolBufferException.j();
        }
        int i9 = i7 + i8;
        c02.g(obj, bArr, i8, i9, c0749e);
        c0749e.f8636c = obj;
        return i9;
    }

    public static int o(int i4, byte[] bArr, int i5, int i6, C0749e c0749e) {
        if ((i4 >>> 3) != 0) {
            int i7 = i4 & 7;
            if (i7 != 0) {
                if (i7 != 1) {
                    if (i7 != 2) {
                        if (i7 != 3) {
                            if (i7 == 5) {
                                return i5 + 4;
                            }
                            throw InvalidProtocolBufferException.b();
                        }
                        int i8 = (i4 & (-8)) | 4;
                        int i9 = 0;
                        while (i5 < i6) {
                            i5 = k(bArr, i5, c0749e);
                            i9 = c0749e.f8634a;
                            if (i9 == i8) {
                                break;
                            }
                            i5 = o(i9, bArr, i5, i6, c0749e);
                        }
                        if (i5 > i6 || i9 != i8) {
                            throw InvalidProtocolBufferException.g();
                        }
                        return i5;
                    }
                    return k(bArr, i5, c0749e) + c0749e.f8634a;
                }
                return i5 + 8;
            }
            return m(bArr, i5, c0749e);
        }
        throw InvalidProtocolBufferException.b();
    }
}
