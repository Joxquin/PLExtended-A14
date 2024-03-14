package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0259b {

    /* renamed from: d  reason: collision with root package name */
    public final Y f3925d;

    /* renamed from: a  reason: collision with root package name */
    public final L.d f3922a = new L.d(30);

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList f3923b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f3924c = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    public int f3927f = 0;

    /* renamed from: e  reason: collision with root package name */
    public final Q f3926e = new Q(this);

    public C0259b(Y y4) {
        this.f3925d = y4;
    }

    public final boolean a(int i4) {
        ArrayList arrayList = this.f3924c;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            C0257a c0257a = (C0257a) arrayList.get(i5);
            int i6 = c0257a.f3918a;
            if (i6 == 8) {
                if (f(c0257a.f3921d, i5 + 1) == i4) {
                    return true;
                }
            } else if (i6 == 1) {
                int i7 = c0257a.f3919b;
                int i8 = c0257a.f3921d + i7;
                while (i7 < i8) {
                    if (f(i7, i5 + 1) == i4) {
                        return true;
                    }
                    i7++;
                }
                continue;
            } else {
                continue;
            }
        }
        return false;
    }

    public final void b() {
        ArrayList arrayList = this.f3924c;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.f3925d.a((C0257a) arrayList.get(i4));
        }
        k(arrayList);
        this.f3927f = 0;
    }

    public final void c() {
        b();
        ArrayList arrayList = this.f3923b;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            C0257a c0257a = (C0257a) arrayList.get(i4);
            int i5 = c0257a.f3918a;
            Y y4 = this.f3925d;
            if (i5 == 1) {
                y4.a(c0257a);
                int i6 = c0257a.f3919b;
                int i7 = c0257a.f3921d;
                RecyclerView recyclerView = y4.f3917a;
                recyclerView.offsetPositionRecordsForInsert(i6, i7);
                recyclerView.mItemsAddedOrRemoved = true;
            } else if (i5 == 2) {
                y4.a(c0257a);
                int i8 = c0257a.f3919b;
                int i9 = c0257a.f3921d;
                RecyclerView recyclerView2 = y4.f3917a;
                recyclerView2.offsetPositionRecordsForRemove(i8, i9, true);
                recyclerView2.mItemsAddedOrRemoved = true;
                recyclerView2.mState.f3760c += i9;
            } else if (i5 == 4) {
                y4.a(c0257a);
                int i10 = c0257a.f3919b;
                int i11 = c0257a.f3921d;
                Object obj = c0257a.f3920c;
                RecyclerView recyclerView3 = y4.f3917a;
                recyclerView3.viewRangeUpdate(i10, i11, obj);
                recyclerView3.mItemsChanged = true;
            } else if (i5 == 8) {
                y4.a(c0257a);
                int i12 = c0257a.f3919b;
                int i13 = c0257a.f3921d;
                RecyclerView recyclerView4 = y4.f3917a;
                recyclerView4.offsetPositionRecordsForMove(i12, i13);
                recyclerView4.mItemsAddedOrRemoved = true;
            }
        }
        k(arrayList);
        this.f3927f = 0;
    }

    public final void d(C0257a c0257a) {
        int i4;
        L.d dVar;
        int i5 = c0257a.f3918a;
        if (i5 == 1 || i5 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int l4 = l(c0257a.f3919b, i5);
        int i6 = c0257a.f3919b;
        int i7 = c0257a.f3918a;
        if (i7 == 2) {
            i4 = 0;
        } else if (i7 != 4) {
            throw new IllegalArgumentException("op should be remove or update." + c0257a);
        } else {
            i4 = 1;
        }
        int i8 = 1;
        int i9 = 1;
        while (true) {
            int i10 = c0257a.f3921d;
            dVar = this.f3922a;
            if (i8 >= i10) {
                break;
            }
            int l5 = l((i4 * i8) + c0257a.f3919b, c0257a.f3918a);
            int i11 = c0257a.f3918a;
            if (i11 == 2 ? l5 == l4 : i11 == 4 && l5 == l4 + 1) {
                i9++;
            } else {
                C0257a h4 = h(c0257a.f3920c, i11, l4, i9);
                e(h4, i6);
                h4.f3920c = null;
                dVar.b(h4);
                if (c0257a.f3918a == 4) {
                    i6 += i9;
                }
                i9 = 1;
                l4 = l5;
            }
            i8++;
        }
        Object obj = c0257a.f3920c;
        c0257a.f3920c = null;
        dVar.b(c0257a);
        if (i9 > 0) {
            C0257a h5 = h(obj, c0257a.f3918a, l4, i9);
            e(h5, i6);
            h5.f3920c = null;
            dVar.b(h5);
        }
    }

    public final void e(C0257a c0257a, int i4) {
        Y y4 = this.f3925d;
        y4.a(c0257a);
        int i5 = c0257a.f3918a;
        RecyclerView recyclerView = y4.f3917a;
        if (i5 != 2) {
            if (i5 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            recyclerView.viewRangeUpdate(i4, c0257a.f3921d, c0257a.f3920c);
            recyclerView.mItemsChanged = true;
            return;
        }
        int i6 = c0257a.f3921d;
        recyclerView.offsetPositionRecordsForRemove(i4, i6, true);
        recyclerView.mItemsAddedOrRemoved = true;
        recyclerView.mState.f3760c += i6;
    }

    public final int f(int i4, int i5) {
        ArrayList arrayList = this.f3924c;
        int size = arrayList.size();
        while (i5 < size) {
            C0257a c0257a = (C0257a) arrayList.get(i5);
            int i6 = c0257a.f3918a;
            if (i6 == 8) {
                int i7 = c0257a.f3919b;
                if (i7 == i4) {
                    i4 = c0257a.f3921d;
                } else {
                    if (i7 < i4) {
                        i4--;
                    }
                    if (c0257a.f3921d <= i4) {
                        i4++;
                    }
                }
            } else {
                int i8 = c0257a.f3919b;
                if (i8 > i4) {
                    continue;
                } else if (i6 == 2) {
                    int i9 = c0257a.f3921d;
                    if (i4 < i8 + i9) {
                        return -1;
                    }
                    i4 -= i9;
                } else if (i6 == 1) {
                    i4 += c0257a.f3921d;
                }
            }
            i5++;
        }
        return i4;
    }

    public final boolean g() {
        return this.f3923b.size() > 0;
    }

    public final C0257a h(Object obj, int i4, int i5, int i6) {
        C0257a c0257a = (C0257a) this.f3922a.a();
        if (c0257a == null) {
            return new C0257a(obj, i4, i5, i6);
        }
        c0257a.f3918a = i4;
        c0257a.f3919b = i5;
        c0257a.f3921d = i6;
        c0257a.f3920c = obj;
        return c0257a;
    }

    public final void i(C0257a c0257a) {
        this.f3924c.add(c0257a);
        int i4 = c0257a.f3918a;
        Y y4 = this.f3925d;
        if (i4 == 1) {
            int i5 = c0257a.f3919b;
            int i6 = c0257a.f3921d;
            RecyclerView recyclerView = y4.f3917a;
            recyclerView.offsetPositionRecordsForInsert(i5, i6);
            recyclerView.mItemsAddedOrRemoved = true;
        } else if (i4 == 2) {
            int i7 = c0257a.f3919b;
            int i8 = c0257a.f3921d;
            RecyclerView recyclerView2 = y4.f3917a;
            recyclerView2.offsetPositionRecordsForRemove(i7, i8, false);
            recyclerView2.mItemsAddedOrRemoved = true;
        } else if (i4 == 4) {
            int i9 = c0257a.f3919b;
            int i10 = c0257a.f3921d;
            Object obj = c0257a.f3920c;
            RecyclerView recyclerView3 = y4.f3917a;
            recyclerView3.viewRangeUpdate(i9, i10, obj);
            recyclerView3.mItemsChanged = true;
        } else if (i4 != 8) {
            throw new IllegalArgumentException("Unknown update op type for " + c0257a);
        } else {
            int i11 = c0257a.f3919b;
            int i12 = c0257a.f3921d;
            RecyclerView recyclerView4 = y4.f3917a;
            recyclerView4.offsetPositionRecordsForMove(i11, i12);
            recyclerView4.mItemsAddedOrRemoved = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:184:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0129 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0117 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x00d0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0100  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j() {
        /*
            Method dump skipped, instructions count: 673
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0259b.j():void");
    }

    public final void k(List list) {
        ArrayList arrayList = (ArrayList) list;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            C0257a c0257a = (C0257a) arrayList.get(i4);
            c0257a.f3920c = null;
            this.f3922a.b(c0257a);
        }
        arrayList.clear();
    }

    public final int l(int i4, int i5) {
        int i6;
        int i7;
        ArrayList arrayList = this.f3924c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0257a c0257a = (C0257a) arrayList.get(size);
            int i8 = c0257a.f3918a;
            if (i8 == 8) {
                int i9 = c0257a.f3919b;
                int i10 = c0257a.f3921d;
                if (i9 < i10) {
                    i7 = i9;
                    i6 = i10;
                } else {
                    i6 = i9;
                    i7 = i10;
                }
                if (i4 < i7 || i4 > i6) {
                    if (i4 < i9) {
                        if (i5 == 1) {
                            c0257a.f3919b = i9 + 1;
                            c0257a.f3921d = i10 + 1;
                        } else if (i5 == 2) {
                            c0257a.f3919b = i9 - 1;
                            c0257a.f3921d = i10 - 1;
                        }
                    }
                } else if (i7 == i9) {
                    if (i5 == 1) {
                        c0257a.f3921d = i10 + 1;
                    } else if (i5 == 2) {
                        c0257a.f3921d = i10 - 1;
                    }
                    i4++;
                } else {
                    if (i5 == 1) {
                        c0257a.f3919b = i9 + 1;
                    } else if (i5 == 2) {
                        c0257a.f3919b = i9 - 1;
                    }
                    i4--;
                }
            } else {
                int i11 = c0257a.f3919b;
                if (i11 <= i4) {
                    if (i8 == 1) {
                        i4 -= c0257a.f3921d;
                    } else if (i8 == 2) {
                        i4 += c0257a.f3921d;
                    }
                } else if (i5 == 1) {
                    c0257a.f3919b = i11 + 1;
                } else if (i5 == 2) {
                    c0257a.f3919b = i11 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            C0257a c0257a2 = (C0257a) arrayList.get(size2);
            int i12 = c0257a2.f3918a;
            L.d dVar = this.f3922a;
            if (i12 == 8) {
                int i13 = c0257a2.f3921d;
                if (i13 == c0257a2.f3919b || i13 < 0) {
                    arrayList.remove(size2);
                    c0257a2.f3920c = null;
                    dVar.b(c0257a2);
                }
            } else if (c0257a2.f3921d <= 0) {
                arrayList.remove(size2);
                c0257a2.f3920c = null;
                dVar.b(c0257a2);
            }
        }
        return i4;
    }
}
