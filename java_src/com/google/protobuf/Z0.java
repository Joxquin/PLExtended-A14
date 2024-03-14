package com.google.protobuf;
/* loaded from: classes.dex */
public abstract class Z0 {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean a(byte[] bArr, int i4, int i5) {
        int i6;
        int i7;
        int i8 = i4;
        byte b4 = -96;
        byte b5 = -32;
        switch (((a1) this).f8624a) {
            case 0:
                while (i8 < i5 && bArr[i8] >= 0) {
                    i8++;
                }
                if (i8 < i5) {
                    while (i8 < i5) {
                        int i9 = i8 + 1;
                        i7 = bArr[i8];
                        if (i7 < 0) {
                            if (i7 < -32) {
                                if (i9 >= i5) {
                                    break;
                                } else {
                                    if (i7 >= -62) {
                                        i8 = i9 + 1;
                                        if (bArr[i9] > -65) {
                                        }
                                    }
                                    i7 = -1;
                                }
                            } else if (i7 < -16) {
                                if (i9 >= i5 - 1) {
                                    i7 = b1.a(bArr, i9, i5);
                                    break;
                                } else {
                                    int i10 = i9 + 1;
                                    char c4 = bArr[i9];
                                    if (c4 <= -65 && ((i7 != -32 || c4 >= -96) && (i7 != -19 || c4 < -96))) {
                                        i8 = i10 + 1;
                                        if (bArr[i10] > -65) {
                                        }
                                    }
                                    i7 = -1;
                                }
                            } else if (i9 >= i5 - 2) {
                                i7 = b1.a(bArr, i9, i5);
                                break;
                            } else {
                                int i11 = i9 + 1;
                                int i12 = bArr[i9];
                                if (i12 <= -65) {
                                    if ((((i12 + 112) + (i7 << 28)) >> 30) == 0) {
                                        int i13 = i11 + 1;
                                        if (bArr[i11] <= -65) {
                                            i9 = i13 + 1;
                                            if (bArr[i13] > -65) {
                                            }
                                        }
                                    }
                                }
                                i7 = -1;
                            }
                        }
                        i8 = i9;
                    }
                }
                i7 = 0;
                break;
            default:
                if ((i8 | i5 | (bArr.length - i5)) >= 0) {
                    long j4 = i8;
                    int i14 = (int) (i5 - j4);
                    if (i14 < 16) {
                        i6 = 0;
                    } else {
                        int i15 = 8 - (((int) j4) & 7);
                        long j5 = j4;
                        i6 = 0;
                        while (true) {
                            if (i6 < i15) {
                                long j6 = j5 + 1;
                                if (X0.h(bArr, j5) >= 0) {
                                    i6++;
                                    j5 = j6;
                                }
                            } else {
                                while (true) {
                                    int i16 = i6 + 8;
                                    if (i16 <= i14 && (X0.n(X0.f8620f + j5, bArr) & (-9187201950435737472L)) == 0) {
                                        j5 += 8;
                                        i6 = i16;
                                    }
                                }
                                while (true) {
                                    if (i6 < i14) {
                                        long j7 = j5 + 1;
                                        if (X0.h(bArr, j5) >= 0) {
                                            i6++;
                                            j5 = j7;
                                        }
                                    } else {
                                        i6 = i14;
                                    }
                                }
                            }
                        }
                    }
                    int i17 = i14 - i6;
                    long j8 = j4 + i6;
                    while (true) {
                        byte b6 = 0;
                        while (true) {
                            if (i17 > 0) {
                                long j9 = j8 + 1;
                                byte h4 = X0.h(bArr, j8);
                                if (h4 >= 0) {
                                    i17--;
                                    j8 = j9;
                                    b6 = h4;
                                } else {
                                    j8 = j9;
                                    b6 = h4;
                                }
                            }
                        }
                        if (i17 != 0) {
                            int i18 = i17 - 1;
                            if (b6 >= b5) {
                                if (b6 >= -16) {
                                    if (i18 >= 3) {
                                        i17 = i18 - 3;
                                        long j10 = j8 + 1;
                                        byte h5 = X0.h(bArr, j8);
                                        if (h5 > -65) {
                                            break;
                                        } else {
                                            if ((((h5 + 112) + (b6 << 28)) >> 30) != 0) {
                                                break;
                                            } else {
                                                long j11 = j10 + 1;
                                                if (X0.h(bArr, j10) > -65) {
                                                    break;
                                                } else {
                                                    long j12 = j11 + 1;
                                                    if (X0.h(bArr, j11) > -65) {
                                                        break;
                                                    } else {
                                                        j8 = j12;
                                                        b4 = -96;
                                                        b5 = -32;
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        i7 = a1.b(bArr, b6, j8, i18);
                                        break;
                                    }
                                } else if (i18 < 2) {
                                    i7 = a1.b(bArr, b6, j8, i18);
                                    break;
                                } else {
                                    i17 = i18 - 2;
                                    long j13 = j8 + 1;
                                    byte h6 = X0.h(bArr, j8);
                                    if (h6 <= -65 && ((b6 != b5 || h6 >= b4) && (b6 != -19 || h6 < b4))) {
                                        j8 = j13 + 1;
                                        if (X0.h(bArr, j13) > -65) {
                                            break;
                                        }
                                    }
                                }
                            } else if (i18 != 0) {
                                i17 = i18 - 1;
                                if (b6 < -62) {
                                    break;
                                } else {
                                    long j14 = j8 + 1;
                                    if (X0.h(bArr, j8) > -65) {
                                        break;
                                    } else {
                                        j8 = j14;
                                    }
                                }
                            } else {
                                i7 = b6;
                                break;
                            }
                        }
                    }
                    i7 = 0;
                    break;
                } else {
                    throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i4), Integer.valueOf(i5)));
                }
        }
        return i7 == 0;
    }
}
