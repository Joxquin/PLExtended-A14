package androidx.recyclerview.widget;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public final List f4003a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f4004b;

    /* renamed from: c  reason: collision with root package name */
    public final int[] f4005c;

    /* renamed from: d  reason: collision with root package name */
    public final AbstractC0287p f4006d;

    /* renamed from: e  reason: collision with root package name */
    public final int f4007e;

    /* renamed from: f  reason: collision with root package name */
    public final int f4008f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f4009g;

    public r(AbstractC0287p abstractC0287p, List list, int[] iArr, int[] iArr2, boolean z4) {
        AbstractC0287p abstractC0287p2;
        int[] iArr3;
        int[] iArr4;
        int i4;
        C0289q c0289q;
        int i5;
        this.f4003a = list;
        this.f4004b = iArr;
        this.f4005c = iArr2;
        Arrays.fill(iArr, 0);
        Arrays.fill(iArr2, 0);
        this.f4006d = abstractC0287p;
        int oldListSize = abstractC0287p.getOldListSize();
        this.f4007e = oldListSize;
        int newListSize = abstractC0287p.getNewListSize();
        this.f4008f = newListSize;
        this.f4009g = z4;
        ArrayList arrayList = (ArrayList) list;
        C0289q c0289q2 = arrayList.isEmpty() ? null : (C0289q) arrayList.get(0);
        if (c0289q2 == null || c0289q2.f4000a != 0 || c0289q2.f4001b != 0) {
            arrayList.add(0, new C0289q(0, 0, 0));
        }
        arrayList.add(new C0289q(oldListSize, newListSize, 0));
        Iterator it = arrayList.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            abstractC0287p2 = this.f4006d;
            iArr3 = this.f4005c;
            iArr4 = this.f4004b;
            if (!hasNext) {
                break;
            }
            C0289q c0289q3 = (C0289q) it.next();
            for (int i6 = 0; i6 < c0289q3.f4002c; i6++) {
                int i7 = c0289q3.f4000a + i6;
                int i8 = c0289q3.f4001b + i6;
                int i9 = abstractC0287p2.areContentsTheSame(i7, i8) ? 1 : 2;
                iArr4[i7] = (i8 << 4) | i9;
                iArr3[i8] = (i7 << 4) | i9;
            }
        }
        if (this.f4009g) {
            Iterator it2 = arrayList.iterator();
            int i10 = 0;
            while (it2.hasNext()) {
                C0289q c0289q4 = (C0289q) it2.next();
                while (true) {
                    i4 = c0289q4.f4000a;
                    if (i10 < i4) {
                        if (iArr4[i10] == 0) {
                            int size = arrayList.size();
                            int i11 = 0;
                            int i12 = 0;
                            while (true) {
                                if (i11 < size) {
                                    c0289q = (C0289q) arrayList.get(i11);
                                    while (true) {
                                        i5 = c0289q.f4001b;
                                        if (i12 < i5) {
                                            if (iArr3[i12] == 0 && abstractC0287p2.areItemsTheSame(i10, i12)) {
                                                int i13 = abstractC0287p2.areContentsTheSame(i10, i12) ? 8 : 4;
                                                iArr4[i10] = (i12 << 4) | i13;
                                                iArr3[i12] = i13 | (i10 << 4);
                                            } else {
                                                i12++;
                                            }
                                        }
                                    }
                                }
                                i12 = c0289q.f4002c + i5;
                                i11++;
                            }
                        }
                        i10++;
                    }
                }
                i10 = c0289q4.f4002c + i4;
            }
        }
    }

    public static C0292s b(Collection collection, int i4, boolean z4) {
        C0292s c0292s;
        Iterator it = ((ArrayDeque) collection).iterator();
        while (true) {
            if (!it.hasNext()) {
                c0292s = null;
                break;
            }
            c0292s = (C0292s) it.next();
            if (c0292s.f4014a == i4 && c0292s.f4016c == z4) {
                it.remove();
                break;
            }
        }
        while (it.hasNext()) {
            C0292s c0292s2 = (C0292s) it.next();
            if (z4) {
                c0292s2.f4015b--;
            } else {
                c0292s2.f4015b++;
            }
        }
        return c0292s;
    }

    public final void a(Z z4) {
        int[] iArr;
        AbstractC0287p abstractC0287p;
        List list;
        C0261c c0261c = new C0261c(z4);
        C0263d c0263d = c0261c instanceof C0263d ? (C0263d) c0261c : new C0263d(c0261c);
        ArrayDeque arrayDeque = new ArrayDeque();
        List list2 = this.f4003a;
        int size = list2.size() - 1;
        int i4 = this.f4007e;
        int i5 = this.f4008f;
        int i6 = i4;
        while (size >= 0) {
            C0289q c0289q = (C0289q) list2.get(size);
            int i7 = c0289q.f4000a;
            int i8 = c0289q.f4002c;
            int i9 = i7 + i8;
            int i10 = c0289q.f4001b;
            int i11 = i8 + i10;
            while (true) {
                iArr = this.f4004b;
                abstractC0287p = this.f4006d;
                if (i6 <= i9) {
                    break;
                }
                i6--;
                int i12 = iArr[i6];
                if ((i12 & 12) != 0) {
                    list = list2;
                    C0292s b4 = b(arrayDeque, i12 >> 4, false);
                    if (b4 != null) {
                        int i13 = (i4 - b4.f4015b) - 1;
                        c0263d.b(i6, i13);
                        if ((i12 & 4) != 0) {
                            abstractC0287p.getClass();
                            c0263d.d(i13, 1, null);
                        }
                    } else {
                        arrayDeque.add(new C0292s(i6, (i4 - i6) - 1, true));
                    }
                } else {
                    list = list2;
                    c0263d.a(i6, 1);
                    i4--;
                }
                list2 = list;
            }
            List list3 = list2;
            while (i5 > i11) {
                i5--;
                int i14 = this.f4005c[i5];
                if ((i14 & 12) != 0) {
                    C0292s b5 = b(arrayDeque, i14 >> 4, true);
                    if (b5 == null) {
                        arrayDeque.add(new C0292s(i5, i4 - i6, false));
                    } else {
                        c0263d.b((i4 - b5.f4015b) - 1, i6);
                        if ((i14 & 4) != 0) {
                            abstractC0287p.getClass();
                            c0263d.d(i6, 1, null);
                        }
                    }
                } else {
                    c0263d.c(i6, 1);
                    i4++;
                }
            }
            i6 = c0289q.f4000a;
            int i15 = i6;
            for (int i16 = 0; i16 < i8; i16++) {
                if ((iArr[i15] & 15) == 2) {
                    abstractC0287p.getClass();
                    c0263d.d(i15, 1, null);
                }
                i15++;
            }
            size--;
            i5 = i10;
            list2 = list3;
        }
        c0263d.e();
    }
}
