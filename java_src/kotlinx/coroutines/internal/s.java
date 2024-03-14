package kotlinx.coroutines.internal;
/* loaded from: classes.dex */
public final class s {

    /* renamed from: g  reason: collision with root package name */
    public static final E f11488g = new E("REMOVE_FROZEN");

    /* renamed from: a  reason: collision with root package name */
    public final int f11489a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f11490b;

    /* renamed from: c  reason: collision with root package name */
    public final int f11491c;

    /* renamed from: d  reason: collision with root package name */
    public final t3.f f11492d = t3.c.d(null);

    /* renamed from: e  reason: collision with root package name */
    public final t3.e f11493e = t3.c.c(0);

    /* renamed from: f  reason: collision with root package name */
    public final t3.a f11494f;

    public s(int i4, boolean z4) {
        this.f11489a = i4;
        this.f11490b = z4;
        int i5 = i4 - 1;
        this.f11491c = i5;
        this.f11494f = new t3.a(i4);
        if (!(i5 <= 1073741823)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!((i4 & i5) == 0)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    public final int a(Object element) {
        s sVar = this;
        kotlin.jvm.internal.h.e(element, "element");
        t3.e eVar = sVar.f11493e;
        while (true) {
            long j4 = eVar.f12363b;
            if ((3458764513820540928L & j4) != 0) {
                return (2305843009213693952L & j4) != 0 ? 2 : 1;
            }
            int i4 = (int) ((1073741823 & j4) >> 0);
            int i5 = (int) ((1152921503533105152L & j4) >> 30);
            int i6 = sVar.f11491c;
            if (((i5 + 2) & i6) == (i4 & i6)) {
                return 1;
            }
            if (!sVar.f11490b) {
                if (sVar.f11494f.f12354a[i5 & i6].f12366b != null) {
                    int i7 = sVar.f11489a;
                    if (i7 < 1024 || ((i5 - i4) & 1073741823) > (i7 >> 1)) {
                        break;
                    }
                }
            }
            if (sVar.f11493e.b(j4, (((i5 + 1) & 1073741823) << 30) | ((-1152921503533105153L) & j4))) {
                sVar.f11494f.f12354a[i5 & i6].d(element);
                while ((sVar.f11493e.f12363b & 1152921504606846976L) != 0) {
                    sVar = sVar.c();
                    Object obj = sVar.f11494f.f12354a[sVar.f11491c & i5].f12366b;
                    if ((obj instanceof r) && ((r) obj).f11487a == i5) {
                        sVar.f11494f.f12354a[sVar.f11491c & i5].d(element);
                        continue;
                    } else {
                        sVar = null;
                        continue;
                    }
                    if (sVar == null) {
                        return 0;
                    }
                }
                return 0;
            }
        }
        return 1;
    }

    public final boolean b() {
        long j4;
        t3.e eVar = this.f11493e;
        do {
            j4 = eVar.f12363b;
            if ((j4 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j4) != 0) {
                return false;
            }
        } while (!eVar.b(j4, 2305843009213693952L | j4));
        return true;
    }

    public final s c() {
        long j4;
        t3.e eVar = this.f11493e;
        while (true) {
            j4 = eVar.f12363b;
            if ((j4 & 1152921504606846976L) == 0) {
                long j5 = 1152921504606846976L | j4;
                if (eVar.b(j4, j5)) {
                    j4 = j5;
                    break;
                }
            } else {
                break;
            }
        }
        t3.f fVar = this.f11492d;
        while (true) {
            s sVar = (s) fVar.f12366b;
            if (sVar != null) {
                return sVar;
            }
            t3.f fVar2 = this.f11492d;
            s sVar2 = new s(this.f11489a * 2, this.f11490b);
            int i4 = (int) ((1073741823 & j4) >> 0);
            int i5 = (int) ((1152921503533105152L & j4) >> 30);
            while (true) {
                int i6 = this.f11491c;
                int i7 = i4 & i6;
                if (i7 != (i6 & i5)) {
                    Object obj = this.f11494f.f12354a[i7].f12366b;
                    if (obj == null) {
                        obj = new r(i4);
                    }
                    sVar2.f11494f.f12354a[sVar2.f11491c & i4].d(obj);
                    i4++;
                }
            }
            sVar2.f11493e.d((-1152921504606846977L) & j4);
            fVar2.a(null, sVar2);
        }
    }

    public final Object d() {
        t3.e eVar = this.f11493e;
        while (true) {
            long j4 = eVar.f12363b;
            if ((j4 & 1152921504606846976L) != 0) {
                return f11488g;
            }
            long j5 = 1073741823;
            int i4 = (int) ((j4 & 1073741823) >> 0);
            int i5 = this.f11491c;
            int i6 = ((int) ((1152921503533105152L & j4) >> 30)) & i5;
            int i7 = i5 & i4;
            if (i6 == i7) {
                return null;
            }
            Object obj = this.f11494f.f12354a[i7].f12366b;
            if (obj == null) {
                if (this.f11490b) {
                    return null;
                }
            } else if (obj instanceof r) {
                return null;
            } else {
                long j6 = ((i4 + 1) & 1073741823) << 0;
                if (this.f11493e.b(j4, j6 | (j4 & (-1073741824)))) {
                    this.f11494f.f12354a[this.f11491c & i4].d(null);
                    return obj;
                } else if (this.f11490b) {
                    s sVar = this;
                    while (true) {
                        t3.e eVar2 = sVar.f11493e;
                        while (true) {
                            long j7 = eVar2.f12363b;
                            int i8 = (int) ((j7 & j5) >> 0);
                            if ((j7 & 1152921504606846976L) != 0) {
                                sVar = sVar.c();
                                break;
                            } else if (sVar.f11493e.b(j7, j6 | (j7 & (-1073741824)))) {
                                sVar.f11494f.f12354a[sVar.f11491c & i8].d(null);
                                sVar = null;
                                break;
                            } else {
                                j5 = 1073741823;
                            }
                        }
                        if (sVar == null) {
                            return obj;
                        }
                        j5 = 1073741823;
                    }
                }
            }
        }
    }
}
