package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.Collections;
/* renamed from: androidx.recyclerview.widget.v  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0298v {

    /* renamed from: a  reason: collision with root package name */
    public static final C0285o f4034a = new C0285o();

    public static r a(AbstractC0287p abstractC0287p, boolean z4) {
        ArrayList arrayList;
        ArrayList arrayList2;
        C0294t c0294t;
        C0296u c0296u;
        ArrayList arrayList3;
        ArrayList arrayList4;
        C0294t c0294t2;
        C0294t c0294t3;
        C0289q c0289q;
        int i4;
        int i5;
        boolean z5;
        C0296u c0296u2;
        C0296u c0296u3;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int oldListSize = abstractC0287p.getOldListSize();
        int newListSize = abstractC0287p.getNewListSize();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        arrayList6.add(new C0294t(oldListSize, newListSize));
        int i13 = oldListSize + newListSize;
        int i14 = 1;
        int i15 = (((i13 + 1) / 2) * 2) + 1;
        int[] iArr = new int[i15];
        int i16 = i15 / 2;
        int[] iArr2 = new int[i15];
        ArrayList arrayList7 = new ArrayList();
        while (!arrayList6.isEmpty()) {
            C0294t c0294t4 = (C0294t) arrayList6.remove(arrayList6.size() - i14);
            int i17 = c0294t4.f4018b;
            int i18 = c0294t4.f4017a;
            int i19 = i17 - i18;
            if (i19 >= i14 && (i4 = c0294t4.f4020d - c0294t4.f4019c) >= i14) {
                int i20 = ((i4 + i19) + i14) / 2;
                int i21 = i14 + i16;
                iArr[i21] = i18;
                iArr2[i21] = i17;
                int i22 = 0;
                while (i22 < i20) {
                    int i23 = Math.abs((c0294t4.f4018b - c0294t4.f4017a) - (c0294t4.f4020d - c0294t4.f4019c)) % 2 == i14 ? i14 : 0;
                    int i24 = (c0294t4.f4018b - c0294t4.f4017a) - (c0294t4.f4020d - c0294t4.f4019c);
                    int i25 = -i22;
                    int i26 = i25;
                    while (true) {
                        if (i26 > i22) {
                            arrayList = arrayList7;
                            arrayList2 = arrayList6;
                            i5 = i20;
                            z5 = false;
                            c0296u2 = null;
                            break;
                        }
                        if (i26 == i25 || (i26 != i22 && iArr[i26 + 1 + i16] > iArr[(i26 - 1) + i16])) {
                            i9 = iArr[i26 + 1 + i16];
                            i10 = i9;
                        } else {
                            i9 = iArr[(i26 - 1) + i16];
                            i10 = i9 + 1;
                        }
                        i5 = i20;
                        arrayList2 = arrayList6;
                        int i27 = ((i10 - c0294t4.f4017a) + c0294t4.f4019c) - i26;
                        if (i22 == 0 || i10 != i9) {
                            arrayList = arrayList7;
                            i11 = i27;
                        } else {
                            i11 = i27 - 1;
                            arrayList = arrayList7;
                        }
                        while (i10 < c0294t4.f4018b && i27 < c0294t4.f4020d && abstractC0287p.areItemsTheSame(i10, i27)) {
                            i10++;
                            i27++;
                        }
                        iArr[i26 + i16] = i10;
                        if (i23 != 0) {
                            int i28 = i24 - i26;
                            i12 = i23;
                            if (i28 >= i25 + 1 && i28 <= i22 - 1 && iArr2[i28 + i16] <= i10) {
                                c0296u2 = new C0296u();
                                c0296u2.f4029a = i9;
                                c0296u2.f4030b = i11;
                                c0296u2.f4031c = i10;
                                c0296u2.f4032d = i27;
                                z5 = false;
                                c0296u2.f4033e = false;
                                break;
                            }
                        } else {
                            i12 = i23;
                        }
                        i26 += 2;
                        i20 = i5;
                        arrayList6 = arrayList2;
                        arrayList7 = arrayList;
                        i23 = i12;
                    }
                    if (c0296u2 != null) {
                        c0296u = c0296u2;
                        c0294t = c0294t4;
                        break;
                    }
                    int i29 = (c0294t4.f4018b - c0294t4.f4017a) - (c0294t4.f4020d - c0294t4.f4019c);
                    boolean z6 = i29 % 2 == 0 ? true : z5;
                    int i30 = i25;
                    while (true) {
                        if (i30 > i22) {
                            c0294t = c0294t4;
                            c0296u3 = null;
                            break;
                        }
                        if (i30 == i25 || (i30 != i22 && iArr2[i30 + 1 + i16] < iArr2[(i30 - 1) + i16])) {
                            i6 = iArr2[i30 + 1 + i16];
                            i7 = i6;
                        } else {
                            i6 = iArr2[(i30 - 1) + i16];
                            i7 = i6 - 1;
                        }
                        int i31 = c0294t4.f4020d - ((c0294t4.f4018b - i7) - i30);
                        int i32 = (i22 == 0 || i7 != i6) ? i31 : i31 + 1;
                        while (i7 > c0294t4.f4017a && i31 > c0294t4.f4019c) {
                            int i33 = i7 - 1;
                            c0294t = c0294t4;
                            int i34 = i31 - 1;
                            if (!abstractC0287p.areItemsTheSame(i33, i34)) {
                                break;
                            }
                            i7 = i33;
                            i31 = i34;
                            c0294t4 = c0294t;
                        }
                        c0294t = c0294t4;
                        iArr2[i30 + i16] = i7;
                        if (z6 && (i8 = i29 - i30) >= i25 && i8 <= i22 && iArr[i8 + i16] >= i7) {
                            c0296u3 = new C0296u();
                            c0296u3.f4029a = i7;
                            c0296u3.f4030b = i31;
                            c0296u3.f4031c = i6;
                            c0296u3.f4032d = i32;
                            c0296u3.f4033e = true;
                            break;
                        }
                        i30 += 2;
                        c0294t4 = c0294t;
                    }
                    if (c0296u3 != null) {
                        c0296u = c0296u3;
                        break;
                    }
                    i22++;
                    i20 = i5;
                    arrayList6 = arrayList2;
                    arrayList7 = arrayList;
                    c0294t4 = c0294t;
                    i14 = 1;
                }
            }
            arrayList = arrayList7;
            arrayList2 = arrayList6;
            c0294t = c0294t4;
            c0296u = null;
            if (c0296u != null) {
                if (c0296u.a() > 0) {
                    int i35 = c0296u.f4032d;
                    int i36 = c0296u.f4030b;
                    int i37 = i35 - i36;
                    int i38 = c0296u.f4031c;
                    int i39 = c0296u.f4029a;
                    int i40 = i38 - i39;
                    if (!(i37 != i40)) {
                        c0289q = new C0289q(i39, i36, i40);
                    } else if (c0296u.f4033e) {
                        c0289q = new C0289q(i39, i36, c0296u.a());
                    } else {
                        c0289q = i37 > i40 ? new C0289q(i39, i36 + 1, c0296u.a()) : new C0289q(i39 + 1, i36, c0296u.a());
                    }
                    arrayList5.add(c0289q);
                }
                if (arrayList.isEmpty()) {
                    c0294t2 = new C0294t();
                    arrayList4 = arrayList;
                    c0294t3 = c0294t;
                    i14 = 1;
                } else {
                    i14 = 1;
                    arrayList4 = arrayList;
                    c0294t2 = (C0294t) arrayList4.remove(arrayList.size() - 1);
                    c0294t3 = c0294t;
                }
                c0294t2.f4017a = c0294t3.f4017a;
                c0294t2.f4019c = c0294t3.f4019c;
                c0294t2.f4018b = c0296u.f4029a;
                c0294t2.f4020d = c0296u.f4030b;
                arrayList3 = arrayList2;
                arrayList3.add(c0294t2);
                c0294t3.f4018b = c0294t3.f4018b;
                c0294t3.f4020d = c0294t3.f4020d;
                c0294t3.f4017a = c0296u.f4031c;
                c0294t3.f4019c = c0296u.f4032d;
                arrayList3.add(c0294t3);
            } else {
                arrayList3 = arrayList2;
                arrayList4 = arrayList;
                i14 = 1;
                arrayList4.add(c0294t);
            }
            arrayList7 = arrayList4;
            arrayList6 = arrayList3;
        }
        Collections.sort(arrayList5, f4034a);
        return new r(abstractC0287p, arrayList5, iArr, iArr2, z4);
    }
}
