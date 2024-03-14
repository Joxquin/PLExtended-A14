package com.google.common.collect;

import O2.m;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public Object[] f8466a;

    /* renamed from: b  reason: collision with root package name */
    public int f8467b = 0;

    /* renamed from: c  reason: collision with root package name */
    public d f8468c;

    public e(int i4) {
        this.f8466a = new Object[i4 * 2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object, int[]] */
    /* JADX WARN: Type inference failed for: r6v5 */
    public final ImmutableMap a() {
        byte[] bArr;
        RegularImmutableMap regularImmutableMap;
        d dVar = this.f8468c;
        if (dVar == null) {
            int i4 = this.f8467b;
            Object[] objArr = this.f8466a;
            if (i4 == 0) {
                regularImmutableMap = (RegularImmutableMap) RegularImmutableMap.f8439j;
            } else {
                ImmutableMap immutableMap = RegularImmutableMap.f8439j;
                Object obj = null;
                if (i4 == 1) {
                    Objects.requireNonNull(objArr[0]);
                    Objects.requireNonNull(objArr[1]);
                    regularImmutableMap = new RegularImmutableMap(1, null, objArr);
                } else {
                    m.i(i4, objArr.length >> 1);
                    int o4 = ImmutableSet.o(i4);
                    if (i4 == 1) {
                        Objects.requireNonNull(objArr[0]);
                        Objects.requireNonNull(objArr[1]);
                    } else {
                        int i5 = o4 - 1;
                        char c4 = 65535;
                        if (o4 <= 128) {
                            bArr = new byte[o4];
                            Arrays.fill(bArr, (byte) -1);
                            int i6 = 0;
                            for (int i7 = 0; i7 < i4; i7++) {
                                int i8 = (i7 * 2) + 0;
                                int i9 = (i6 * 2) + 0;
                                Object obj2 = objArr[i8];
                                Objects.requireNonNull(obj2);
                                Object obj3 = objArr[i8 ^ 1];
                                Objects.requireNonNull(obj3);
                                int a4 = b.a(obj2.hashCode());
                                while (true) {
                                    int i10 = a4 & i5;
                                    int i11 = bArr[i10] & 255;
                                    if (i11 == 255) {
                                        bArr[i10] = (byte) i9;
                                        if (i6 < i7) {
                                            objArr[i9] = obj2;
                                            objArr[i9 ^ 1] = obj3;
                                        }
                                        i6++;
                                    } else if (obj2.equals(objArr[i11])) {
                                        int i12 = i11 ^ 1;
                                        Object obj4 = objArr[i12];
                                        Objects.requireNonNull(obj4);
                                        obj = new d(obj2, obj3, obj4);
                                        objArr[i12] = obj3;
                                        break;
                                    } else {
                                        a4 = i10 + 1;
                                    }
                                }
                            }
                            if (i6 != i4) {
                                obj = new Object[]{bArr, Integer.valueOf(i6), obj};
                            }
                            obj = bArr;
                        } else if (o4 <= 32768) {
                            bArr = new short[o4];
                            Arrays.fill(bArr, (short) -1);
                            int i13 = 0;
                            for (int i14 = 0; i14 < i4; i14++) {
                                int i15 = (i14 * 2) + 0;
                                int i16 = (i13 * 2) + 0;
                                Object obj5 = objArr[i15];
                                Objects.requireNonNull(obj5);
                                Object obj6 = objArr[i15 ^ 1];
                                Objects.requireNonNull(obj6);
                                int a5 = b.a(obj5.hashCode());
                                while (true) {
                                    int i17 = a5 & i5;
                                    int i18 = bArr[i17] & 65535;
                                    if (i18 == 65535) {
                                        bArr[i17] = (short) i16;
                                        if (i13 < i14) {
                                            objArr[i16] = obj5;
                                            objArr[i16 ^ 1] = obj6;
                                        }
                                        i13++;
                                    } else if (obj5.equals(objArr[i18])) {
                                        int i19 = i18 ^ 1;
                                        Object obj7 = objArr[i19];
                                        Objects.requireNonNull(obj7);
                                        obj = new d(obj5, obj6, obj7);
                                        objArr[i19] = obj6;
                                        break;
                                    } else {
                                        a5 = i17 + 1;
                                    }
                                }
                            }
                            if (i13 != i4) {
                                obj = new Object[]{bArr, Integer.valueOf(i13), obj};
                            }
                            obj = bArr;
                        } else {
                            bArr = new int[o4];
                            Arrays.fill((int[]) bArr, -1);
                            int i20 = 0;
                            int i21 = 0;
                            while (i20 < i4) {
                                int i22 = (i20 * 2) + 0;
                                int i23 = (i21 * 2) + 0;
                                Object obj8 = objArr[i22];
                                Objects.requireNonNull(obj8);
                                Object obj9 = objArr[i22 ^ 1];
                                Objects.requireNonNull(obj9);
                                int a6 = b.a(obj8.hashCode());
                                while (true) {
                                    int i24 = a6 & i5;
                                    ?? r15 = bArr[i24];
                                    if (r15 == c4) {
                                        bArr[i24] = i23;
                                        if (i21 < i20) {
                                            objArr[i23] = obj8;
                                            objArr[i23 ^ 1] = obj9;
                                        }
                                        i21++;
                                    } else if (obj8.equals(objArr[r15])) {
                                        int i25 = r15 ^ 1;
                                        Object obj10 = objArr[i25];
                                        Objects.requireNonNull(obj10);
                                        obj = new d(obj8, obj9, obj10);
                                        objArr[i25] = obj9;
                                        break;
                                    } else {
                                        a6 = i24 + 1;
                                        c4 = 65535;
                                    }
                                }
                                i20++;
                                c4 = 65535;
                            }
                            if (i21 != i4) {
                                obj = new Object[]{bArr, Integer.valueOf(i21), obj};
                            }
                            obj = bArr;
                        }
                    }
                    if (obj instanceof Object[]) {
                        Object[] objArr2 = (Object[]) obj;
                        this.f8468c = (d) objArr2[2];
                        Object obj11 = objArr2[0];
                        int intValue = ((Integer) objArr2[1]).intValue();
                        objArr = Arrays.copyOf(objArr, intValue * 2);
                        obj = obj11;
                        i4 = intValue;
                    }
                    regularImmutableMap = new RegularImmutableMap(i4, obj, objArr);
                }
            }
            d dVar2 = this.f8468c;
            if (dVar2 == null) {
                return regularImmutableMap;
            }
            throw dVar2.a();
        }
        throw dVar.a();
    }

    public final void b(int i4) {
        int i5 = i4 * 2;
        Object[] objArr = this.f8466a;
        if (i5 > objArr.length) {
            int length = objArr.length;
            if (i5 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int i6 = length + (length >> 1) + 1;
            if (i6 < i5) {
                i6 = Integer.highestOneBit(i5 - 1) << 1;
            }
            if (i6 < 0) {
                i6 = Integer.MAX_VALUE;
            }
            this.f8466a = Arrays.copyOf(objArr, i6);
        }
    }

    public final void c(Object obj, Object obj2) {
        b(this.f8467b + 1);
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=" + obj2);
        } else if (obj2 == null) {
            throw new NullPointerException("null value in entry: " + obj + "=null");
        } else {
            Object[] objArr = this.f8466a;
            int i4 = this.f8467b;
            int i5 = i4 * 2;
            objArr[i5] = obj;
            objArr[i5 + 1] = obj2;
            this.f8467b = i4 + 1;
        }
    }
}
