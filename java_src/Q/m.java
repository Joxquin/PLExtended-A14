package q;

import j.C1080K;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;
import r.C1367a;
/* loaded from: classes.dex */
public class m {

    /* renamed from: d  reason: collision with root package name */
    public int[] f11965d;

    /* renamed from: e  reason: collision with root package name */
    public Object[] f11966e;

    /* renamed from: f  reason: collision with root package name */
    public int f11967f;

    public m() {
        this(0);
    }

    private final int d(int i4, Object obj) {
        int i5 = this.f11967f;
        if (i5 == 0) {
            return -1;
        }
        int a4 = C1367a.a(i5, i4, this.f11965d);
        if (a4 >= 0 && !kotlin.jvm.internal.h.a(obj, this.f11966e[a4 << 1])) {
            int i6 = a4 + 1;
            while (i6 < i5 && this.f11965d[i6] == i4) {
                if (kotlin.jvm.internal.h.a(obj, this.f11966e[i6 << 1])) {
                    return i6;
                }
                i6++;
            }
            for (int i7 = a4 - 1; i7 >= 0 && this.f11965d[i7] == i4; i7--) {
                if (kotlin.jvm.internal.h.a(obj, this.f11966e[i7 << 1])) {
                    return i7;
                }
            }
            return ~i6;
        }
        return a4;
    }

    private final int f() {
        int i4 = this.f11967f;
        if (i4 == 0) {
            return -1;
        }
        int a4 = C1367a.a(i4, 0, this.f11965d);
        if (a4 >= 0 && this.f11966e[a4 << 1] != null) {
            int i5 = a4 + 1;
            while (i5 < i4 && this.f11965d[i5] == 0) {
                if (this.f11966e[i5 << 1] == null) {
                    return i5;
                }
                i5++;
            }
            for (int i6 = a4 - 1; i6 >= 0 && this.f11965d[i6] == 0; i6--) {
                if (this.f11966e[i6 << 1] == null) {
                    return i6;
                }
            }
            return ~i5;
        }
        return a4;
    }

    public final int b(Object obj) {
        int i4 = this.f11967f * 2;
        Object[] objArr = this.f11966e;
        if (obj == null) {
            for (int i5 = 1; i5 < i4; i5 += 2) {
                if (objArr[i5] == null) {
                    return i5 >> 1;
                }
            }
            return -1;
        }
        for (int i6 = 1; i6 < i4; i6 += 2) {
            if (kotlin.jvm.internal.h.a(obj, objArr[i6])) {
                return i6 >> 1;
            }
        }
        return -1;
    }

    public final void c(int i4) {
        int i5 = this.f11967f;
        int[] iArr = this.f11965d;
        if (iArr.length < i4) {
            int[] copyOf = Arrays.copyOf(iArr, i4);
            kotlin.jvm.internal.h.d(copyOf, "copyOf(this, newSize)");
            this.f11965d = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f11966e, i4 * 2);
            kotlin.jvm.internal.h.d(copyOf2, "copyOf(this, newSize)");
            this.f11966e = copyOf2;
        }
        if (this.f11967f != i5) {
            throw new ConcurrentModificationException();
        }
    }

    public final void clear() {
        if (this.f11967f > 0) {
            this.f11965d = C1367a.f12064a;
            this.f11966e = C1367a.f12066c;
            this.f11967f = 0;
        }
        if (this.f11967f > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return e(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return b(obj) >= 0;
    }

    public final int e(Object obj) {
        return obj == null ? f() : d(obj.hashCode(), obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof m) {
                int i4 = this.f11967f;
                if (i4 != ((m) obj).f11967f) {
                    return false;
                }
                m mVar = (m) obj;
                for (int i5 = 0; i5 < i4; i5++) {
                    Object g4 = g(i5);
                    Object j4 = j(i5);
                    Object obj2 = mVar.get(g4);
                    if (j4 == null) {
                        if (obj2 != null || !mVar.containsKey(g4)) {
                            return false;
                        }
                    } else if (!kotlin.jvm.internal.h.a(j4, obj2)) {
                        return false;
                    }
                }
                return true;
            } else if ((obj instanceof Map) && this.f11967f == ((Map) obj).size()) {
                int i6 = this.f11967f;
                for (int i7 = 0; i7 < i6; i7++) {
                    Object g5 = g(i7);
                    Object j5 = j(i7);
                    Object obj3 = ((Map) obj).get(g5);
                    if (j5 == null) {
                        if (obj3 != null || !((Map) obj).containsKey(g5)) {
                            return false;
                        }
                    } else if (!kotlin.jvm.internal.h.a(j5, obj3)) {
                        return false;
                    }
                }
                return true;
            } else {
                return false;
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public final Object g(int i4) {
        boolean z4 = false;
        if (i4 >= 0 && i4 < this.f11967f) {
            z4 = true;
        }
        if (z4) {
            return this.f11966e[i4 << 1];
        }
        throw new IllegalArgumentException(C1080K.a("Expected index to be within 0..size()-1, but was ", i4).toString());
    }

    public Object get(Object obj) {
        int e4 = e(obj);
        if (e4 >= 0) {
            return this.f11966e[(e4 << 1) + 1];
        }
        return null;
    }

    public final Object getOrDefault(Object obj, Object obj2) {
        int e4 = e(obj);
        return e4 >= 0 ? this.f11966e[(e4 << 1) + 1] : obj2;
    }

    public final Object h(int i4) {
        if (i4 >= 0 && i4 < this.f11967f) {
            Object[] objArr = this.f11966e;
            int i5 = i4 << 1;
            Object obj = objArr[i5 + 1];
            int i6 = this.f11967f;
            if (i6 <= 1) {
                clear();
            } else {
                int i7 = i6 - 1;
                int[] iArr = this.f11965d;
                if (iArr.length <= 8 || i6 >= iArr.length / 3) {
                    if (i4 < i7) {
                        int i8 = i4 + 1;
                        int i9 = i7 + 1;
                        kotlin.collections.m.d(i4, i8, iArr, iArr, i9);
                        Object[] objArr2 = this.f11966e;
                        kotlin.collections.m.c(i5, i8 << 1, i9 << 1, objArr2, objArr2);
                    }
                    Object[] objArr3 = this.f11966e;
                    int i10 = i7 << 1;
                    objArr3[i10] = null;
                    objArr3[i10 + 1] = null;
                } else {
                    int i11 = i6 > 8 ? i6 + (i6 >> 1) : 8;
                    int[] copyOf = Arrays.copyOf(iArr, i11);
                    kotlin.jvm.internal.h.d(copyOf, "copyOf(this, newSize)");
                    this.f11965d = copyOf;
                    Object[] copyOf2 = Arrays.copyOf(this.f11966e, i11 << 1);
                    kotlin.jvm.internal.h.d(copyOf2, "copyOf(this, newSize)");
                    this.f11966e = copyOf2;
                    if (i6 != this.f11967f) {
                        throw new ConcurrentModificationException();
                    }
                    if (i4 > 0) {
                        kotlin.collections.m.d(0, 0, iArr, this.f11965d, i4);
                        kotlin.collections.m.c(0, 0, i5, objArr, this.f11966e);
                    }
                    if (i4 < i7) {
                        int i12 = i4 + 1;
                        int i13 = i7 + 1;
                        kotlin.collections.m.d(i4, i12, iArr, this.f11965d, i13);
                        kotlin.collections.m.c(i5, i12 << 1, i13 << 1, objArr, this.f11966e);
                    }
                }
                if (i6 != this.f11967f) {
                    throw new ConcurrentModificationException();
                }
                this.f11967f = i7;
            }
            return obj;
        }
        throw new IllegalArgumentException(C1080K.a("Expected index to be within 0..size()-1, but was ", i4).toString());
    }

    public final int hashCode() {
        int[] iArr = this.f11965d;
        Object[] objArr = this.f11966e;
        int i4 = this.f11967f;
        int i5 = 1;
        int i6 = 0;
        int i7 = 0;
        while (i6 < i4) {
            Object obj = objArr[i5];
            i7 += (obj != null ? obj.hashCode() : 0) ^ iArr[i6];
            i6++;
            i5 += 2;
        }
        return i7;
    }

    public final Object i(int i4, Object obj) {
        boolean z4 = false;
        if (i4 >= 0 && i4 < this.f11967f) {
            z4 = true;
        }
        if (z4) {
            int i5 = (i4 << 1) + 1;
            Object[] objArr = this.f11966e;
            Object obj2 = objArr[i5];
            objArr[i5] = obj;
            return obj2;
        }
        throw new IllegalArgumentException(C1080K.a("Expected index to be within 0..size()-1, but was ", i4).toString());
    }

    public final boolean isEmpty() {
        return this.f11967f <= 0;
    }

    public final Object j(int i4) {
        boolean z4 = false;
        if (i4 >= 0 && i4 < this.f11967f) {
            z4 = true;
        }
        if (z4) {
            return this.f11966e[(i4 << 1) + 1];
        }
        throw new IllegalArgumentException(C1080K.a("Expected index to be within 0..size()-1, but was ", i4).toString());
    }

    public final Object put(Object obj, Object obj2) {
        int i4 = this.f11967f;
        int hashCode = obj != null ? obj.hashCode() : 0;
        int d4 = obj != null ? d(hashCode, obj) : f();
        if (d4 >= 0) {
            int i5 = (d4 << 1) + 1;
            Object[] objArr = this.f11966e;
            Object obj3 = objArr[i5];
            objArr[i5] = obj2;
            return obj3;
        }
        int i6 = ~d4;
        int[] iArr = this.f11965d;
        if (i4 >= iArr.length) {
            int i7 = 8;
            if (i4 >= 8) {
                i7 = (i4 >> 1) + i4;
            } else if (i4 < 4) {
                i7 = 4;
            }
            int[] copyOf = Arrays.copyOf(iArr, i7);
            kotlin.jvm.internal.h.d(copyOf, "copyOf(this, newSize)");
            this.f11965d = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f11966e, i7 << 1);
            kotlin.jvm.internal.h.d(copyOf2, "copyOf(this, newSize)");
            this.f11966e = copyOf2;
            if (i4 != this.f11967f) {
                throw new ConcurrentModificationException();
            }
        }
        if (i6 < i4) {
            int[] iArr2 = this.f11965d;
            int i8 = i6 + 1;
            kotlin.collections.m.d(i8, i6, iArr2, iArr2, i4);
            Object[] objArr2 = this.f11966e;
            kotlin.collections.m.c(i8 << 1, i6 << 1, this.f11967f << 1, objArr2, objArr2);
        }
        int i9 = this.f11967f;
        if (i4 == i9) {
            int[] iArr3 = this.f11965d;
            if (i6 < iArr3.length) {
                iArr3[i6] = hashCode;
                Object[] objArr3 = this.f11966e;
                int i10 = i6 << 1;
                objArr3[i10] = obj;
                objArr3[i10 + 1] = obj2;
                this.f11967f = i9 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final Object putIfAbsent(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 == null ? put(obj, obj2) : obj3;
    }

    public Object remove(Object obj) {
        int e4 = e(obj);
        if (e4 >= 0) {
            return h(e4);
        }
        return null;
    }

    public final Object replace(Object obj, Object obj2) {
        int e4 = e(obj);
        if (e4 >= 0) {
            return i(e4, obj2);
        }
        return null;
    }

    public final int size() {
        return this.f11967f;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f11967f * 28);
        sb.append('{');
        int i4 = this.f11967f;
        for (int i5 = 0; i5 < i4; i5++) {
            if (i5 > 0) {
                sb.append(", ");
            }
            Object g4 = g(i5);
            if (g4 != sb) {
                sb.append(g4);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object j4 = j(i5);
            if (j4 != sb) {
                sb.append(j4);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        kotlin.jvm.internal.h.d(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    public m(int i4) {
        int[] iArr;
        Object[] objArr;
        if (i4 == 0) {
            iArr = C1367a.f12064a;
        } else {
            iArr = new int[i4];
        }
        this.f11965d = iArr;
        if (i4 == 0) {
            objArr = C1367a.f12066c;
        } else {
            objArr = new Object[i4 << 1];
        }
        this.f11966e = objArr;
    }

    public final boolean remove(Object obj, Object obj2) {
        int e4 = e(obj);
        if (e4 < 0 || !kotlin.jvm.internal.h.a(obj2, j(e4))) {
            return false;
        }
        h(e4);
        return true;
    }

    public final boolean replace(Object obj, Object obj2, Object obj3) {
        int e4 = e(obj);
        if (e4 < 0 || !kotlin.jvm.internal.h.a(obj2, j(e4))) {
            return false;
        }
        i(e4, obj3);
        return true;
    }
}
