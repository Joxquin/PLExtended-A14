package q;

import java.util.Arrays;
import r.C1367a;
/* loaded from: classes.dex */
public final class n implements Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public /* synthetic */ int[] f11968d;

    /* renamed from: e  reason: collision with root package name */
    public /* synthetic */ Object[] f11969e;

    /* renamed from: f  reason: collision with root package name */
    public /* synthetic */ int f11970f;

    public n() {
        int i4;
        int i5 = 4;
        while (true) {
            i4 = 40;
            if (i5 >= 32) {
                break;
            }
            int i6 = (1 << i5) - 12;
            if (40 <= i6) {
                i4 = i6;
                break;
            }
            i5++;
        }
        int i7 = i4 / 4;
        this.f11968d = new int[i7];
        this.f11969e = new Object[i7];
    }

    public final void a(int i4, Object obj) {
        int i5 = this.f11970f;
        if (i5 != 0 && i4 <= this.f11968d[i5 - 1]) {
            d(i4, obj);
            return;
        }
        if (i5 >= this.f11968d.length) {
            int i6 = (i5 + 1) * 4;
            int i7 = 4;
            while (true) {
                if (i7 >= 32) {
                    break;
                }
                int i8 = (1 << i7) - 12;
                if (i6 <= i8) {
                    i6 = i8;
                    break;
                }
                i7++;
            }
            int i9 = i6 / 4;
            int[] copyOf = Arrays.copyOf(this.f11968d, i9);
            kotlin.jvm.internal.h.d(copyOf, "copyOf(this, newSize)");
            this.f11968d = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f11969e, i9);
            kotlin.jvm.internal.h.d(copyOf2, "copyOf(this, newSize)");
            this.f11969e = copyOf2;
        }
        this.f11968d[i5] = i4;
        this.f11969e[i5] = obj;
        this.f11970f = i5 + 1;
    }

    /* renamed from: b */
    public final n clone() {
        Object clone = super.clone();
        kotlin.jvm.internal.h.c(clone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        n nVar = (n) clone;
        nVar.f11968d = (int[]) this.f11968d.clone();
        nVar.f11969e = (Object[]) this.f11969e.clone();
        return nVar;
    }

    public final Object c(int i4) {
        Object obj;
        Object obj2 = o.f11971a;
        int a4 = C1367a.a(this.f11970f, i4, this.f11968d);
        if (a4 < 0 || (obj = this.f11969e[a4]) == o.f11971a) {
            return null;
        }
        return obj;
    }

    public final void d(int i4, Object obj) {
        int a4 = C1367a.a(this.f11970f, i4, this.f11968d);
        if (a4 >= 0) {
            this.f11969e[a4] = obj;
            return;
        }
        int i5 = ~a4;
        int i6 = this.f11970f;
        if (i5 < i6) {
            Object[] objArr = this.f11969e;
            if (objArr[i5] == o.f11971a) {
                this.f11968d[i5] = i4;
                objArr[i5] = obj;
                return;
            }
        }
        if (i6 >= this.f11968d.length) {
            int i7 = (i6 + 1) * 4;
            int i8 = 4;
            while (true) {
                if (i8 >= 32) {
                    break;
                }
                int i9 = (1 << i8) - 12;
                if (i7 <= i9) {
                    i7 = i9;
                    break;
                }
                i8++;
            }
            int i10 = i7 / 4;
            int[] copyOf = Arrays.copyOf(this.f11968d, i10);
            kotlin.jvm.internal.h.d(copyOf, "copyOf(this, newSize)");
            this.f11968d = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f11969e, i10);
            kotlin.jvm.internal.h.d(copyOf2, "copyOf(this, newSize)");
            this.f11969e = copyOf2;
        }
        int i11 = this.f11970f;
        if (i11 - i5 != 0) {
            int[] iArr = this.f11968d;
            int i12 = i5 + 1;
            kotlin.collections.m.d(i12, i5, iArr, iArr, i11);
            Object[] objArr2 = this.f11969e;
            kotlin.collections.m.c(i12, i5, this.f11970f, objArr2, objArr2);
        }
        this.f11968d[i5] = i4;
        this.f11969e[i5] = obj;
        this.f11970f++;
    }

    public final String toString() {
        int i4 = this.f11970f;
        if (i4 <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i4 * 28);
        sb.append('{');
        int i5 = this.f11970f;
        for (int i6 = 0; i6 < i5; i6++) {
            if (i6 > 0) {
                sb.append(", ");
            }
            sb.append(this.f11968d[i6]);
            sb.append('=');
            Object obj = this.f11969e[i6];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        kotlin.jvm.internal.h.d(sb2, "buffer.toString()");
        return sb2;
    }
}
