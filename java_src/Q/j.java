package q;

import j.C1080K;
import java.util.Arrays;
import r.C1367a;
/* loaded from: classes.dex */
public final class j implements Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public /* synthetic */ boolean f11954d;

    /* renamed from: e  reason: collision with root package name */
    public /* synthetic */ long[] f11955e;

    /* renamed from: f  reason: collision with root package name */
    public /* synthetic */ Object[] f11956f;

    /* renamed from: g  reason: collision with root package name */
    public /* synthetic */ int f11957g;

    public j(int i4) {
        if (i4 == 0) {
            this.f11955e = C1367a.f12065b;
            this.f11956f = C1367a.f12066c;
            return;
        }
        int i5 = i4 * 8;
        int i6 = 4;
        while (true) {
            if (i6 >= 32) {
                break;
            }
            int i7 = (1 << i6) - 12;
            if (i5 <= i7) {
                i5 = i7;
                break;
            }
            i6++;
        }
        int i8 = i5 / 8;
        this.f11955e = new long[i8];
        this.f11956f = new Object[i8];
    }

    public final void a() {
        int i4 = this.f11957g;
        Object[] objArr = this.f11956f;
        for (int i5 = 0; i5 < i4; i5++) {
            objArr[i5] = null;
        }
        this.f11957g = 0;
        this.f11954d = false;
    }

    /* renamed from: b */
    public final j clone() {
        Object clone = super.clone();
        kotlin.jvm.internal.h.c(clone, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>");
        j jVar = (j) clone;
        jVar.f11955e = (long[]) this.f11955e.clone();
        jVar.f11956f = (Object[]) this.f11956f.clone();
        return jVar;
    }

    public final Object c(long j4) {
        Object obj;
        int b4 = C1367a.b(this.f11955e, this.f11957g, j4);
        if (b4 < 0 || (obj = this.f11956f[b4]) == k.f11958a) {
            return null;
        }
        return obj;
    }

    public final int d(long j4) {
        if (this.f11954d) {
            int i4 = this.f11957g;
            long[] jArr = this.f11955e;
            Object[] objArr = this.f11956f;
            int i5 = 0;
            for (int i6 = 0; i6 < i4; i6++) {
                Object obj = objArr[i6];
                if (obj != k.f11958a) {
                    if (i6 != i5) {
                        jArr[i5] = jArr[i6];
                        objArr[i5] = obj;
                        objArr[i6] = null;
                    }
                    i5++;
                }
            }
            this.f11954d = false;
            this.f11957g = i5;
        }
        return C1367a.b(this.f11955e, this.f11957g, j4);
    }

    public final long e(int i4) {
        if (i4 >= 0 && i4 < this.f11957g) {
            if (this.f11954d) {
                int i5 = this.f11957g;
                long[] jArr = this.f11955e;
                Object[] objArr = this.f11956f;
                int i6 = 0;
                for (int i7 = 0; i7 < i5; i7++) {
                    Object obj = objArr[i7];
                    if (obj != k.f11958a) {
                        if (i7 != i6) {
                            jArr[i6] = jArr[i7];
                            objArr[i6] = obj;
                            objArr[i7] = null;
                        }
                        i6++;
                    }
                }
                this.f11954d = false;
                this.f11957g = i6;
            }
            return this.f11955e[i4];
        }
        throw new IllegalArgumentException(C1080K.a("Expected index to be within 0..size()-1, but was ", i4).toString());
    }

    public final void f(long j4, Object obj) {
        int b4 = C1367a.b(this.f11955e, this.f11957g, j4);
        if (b4 >= 0) {
            this.f11956f[b4] = obj;
            return;
        }
        int i4 = ~b4;
        int i5 = this.f11957g;
        if (i4 < i5) {
            Object[] objArr = this.f11956f;
            if (objArr[i4] == k.f11958a) {
                this.f11955e[i4] = j4;
                objArr[i4] = obj;
                return;
            }
        }
        if (this.f11954d) {
            long[] jArr = this.f11955e;
            if (i5 >= jArr.length) {
                Object[] objArr2 = this.f11956f;
                int i6 = 0;
                for (int i7 = 0; i7 < i5; i7++) {
                    Object obj2 = objArr2[i7];
                    if (obj2 != k.f11958a) {
                        if (i7 != i6) {
                            jArr[i6] = jArr[i7];
                            objArr2[i6] = obj2;
                            objArr2[i7] = null;
                        }
                        i6++;
                    }
                }
                this.f11954d = false;
                this.f11957g = i6;
                i4 = ~C1367a.b(this.f11955e, i6, j4);
            }
        }
        int i8 = this.f11957g;
        if (i8 >= this.f11955e.length) {
            int i9 = (i8 + 1) * 8;
            int i10 = 4;
            while (true) {
                if (i10 >= 32) {
                    break;
                }
                int i11 = (1 << i10) - 12;
                if (i9 <= i11) {
                    i9 = i11;
                    break;
                }
                i10++;
            }
            int i12 = i9 / 8;
            long[] copyOf = Arrays.copyOf(this.f11955e, i12);
            kotlin.jvm.internal.h.d(copyOf, "copyOf(this, newSize)");
            this.f11955e = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f11956f, i12);
            kotlin.jvm.internal.h.d(copyOf2, "copyOf(this, newSize)");
            this.f11956f = copyOf2;
        }
        int i13 = this.f11957g - i4;
        if (i13 != 0) {
            long[] jArr2 = this.f11955e;
            int i14 = i4 + 1;
            kotlin.jvm.internal.h.e(jArr2, "<this>");
            System.arraycopy(jArr2, i4, jArr2, i14, i13);
            Object[] objArr3 = this.f11956f;
            kotlin.collections.m.c(i14, i4, this.f11957g, objArr3, objArr3);
        }
        this.f11955e[i4] = j4;
        this.f11956f[i4] = obj;
        this.f11957g++;
    }

    public final int g() {
        if (this.f11954d) {
            int i4 = this.f11957g;
            long[] jArr = this.f11955e;
            Object[] objArr = this.f11956f;
            int i5 = 0;
            for (int i6 = 0; i6 < i4; i6++) {
                Object obj = objArr[i6];
                if (obj != k.f11958a) {
                    if (i6 != i5) {
                        jArr[i5] = jArr[i6];
                        objArr[i5] = obj;
                        objArr[i6] = null;
                    }
                    i5++;
                }
            }
            this.f11954d = false;
            this.f11957g = i5;
        }
        return this.f11957g;
    }

    public final Object h(int i4) {
        if (i4 >= 0 && i4 < this.f11957g) {
            if (this.f11954d) {
                int i5 = this.f11957g;
                long[] jArr = this.f11955e;
                Object[] objArr = this.f11956f;
                int i6 = 0;
                for (int i7 = 0; i7 < i5; i7++) {
                    Object obj = objArr[i7];
                    if (obj != k.f11958a) {
                        if (i7 != i6) {
                            jArr[i6] = jArr[i7];
                            objArr[i6] = obj;
                            objArr[i7] = null;
                        }
                        i6++;
                    }
                }
                this.f11954d = false;
                this.f11957g = i6;
            }
            return this.f11956f[i4];
        }
        throw new IllegalArgumentException(C1080K.a("Expected index to be within 0..size()-1, but was ", i4).toString());
    }

    public final String toString() {
        if (g() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f11957g * 28);
        sb.append('{');
        int i4 = this.f11957g;
        for (int i5 = 0; i5 < i4; i5++) {
            if (i5 > 0) {
                sb.append(", ");
            }
            sb.append(e(i5));
            sb.append('=');
            Object h4 = h(i5);
            if (h4 != sb) {
                sb.append(h4);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        kotlin.jvm.internal.h.d(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    public j() {
        this(10);
    }
}
