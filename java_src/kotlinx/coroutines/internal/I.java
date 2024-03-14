package kotlinx.coroutines.internal;

import java.util.Arrays;
import kotlinx.coroutines.P;
/* loaded from: classes.dex */
public class I {

    /* renamed from: a  reason: collision with root package name */
    public J[] f11450a;

    /* renamed from: b  reason: collision with root package name */
    public final t3.d f11451b = t3.c.b(0);

    public final void a(J node) {
        kotlin.jvm.internal.h.e(node, "node");
        node.e((P) this);
        J[] jArr = this.f11450a;
        if (jArr == null) {
            jArr = new J[4];
            this.f11450a = jArr;
        } else if (this.f11451b.f12360b >= jArr.length) {
            Object[] copyOf = Arrays.copyOf(jArr, this.f11451b.f12360b * 2);
            kotlin.jvm.internal.h.d(copyOf, "copyOf(this, newSize)");
            jArr = (J[]) copyOf;
            this.f11450a = jArr;
        }
        int i4 = this.f11451b.f12360b;
        this.f11451b.d(i4 + 1);
        jArr[i4] = node;
        node.a(i4);
        c(i4);
    }

    public final J b(int i4) {
        J[] jArr = this.f11450a;
        kotlin.jvm.internal.h.b(jArr);
        this.f11451b.d(this.f11451b.f12360b - 1);
        if (i4 < this.f11451b.f12360b) {
            d(i4, this.f11451b.f12360b);
            int i5 = (i4 - 1) / 2;
            if (i4 > 0) {
                J j4 = jArr[i4];
                kotlin.jvm.internal.h.b(j4);
                J j5 = jArr[i5];
                kotlin.jvm.internal.h.b(j5);
                if (((Comparable) j4).compareTo(j5) < 0) {
                    d(i4, i5);
                    c(i5);
                }
            }
            while (true) {
                int i6 = (i4 * 2) + 1;
                if (i6 >= this.f11451b.f12360b) {
                    break;
                }
                J[] jArr2 = this.f11450a;
                kotlin.jvm.internal.h.b(jArr2);
                int i7 = i6 + 1;
                if (i7 < this.f11451b.f12360b) {
                    J j6 = jArr2[i7];
                    kotlin.jvm.internal.h.b(j6);
                    J j7 = jArr2[i6];
                    kotlin.jvm.internal.h.b(j7);
                    if (((Comparable) j6).compareTo(j7) < 0) {
                        i6 = i7;
                    }
                }
                J j8 = jArr2[i4];
                kotlin.jvm.internal.h.b(j8);
                J j9 = jArr2[i6];
                kotlin.jvm.internal.h.b(j9);
                if (((Comparable) j8).compareTo(j9) <= 0) {
                    break;
                }
                d(i4, i6);
                i4 = i6;
            }
        }
        J j10 = jArr[this.f11451b.f12360b];
        kotlin.jvm.internal.h.b(j10);
        j10.e(null);
        j10.a(-1);
        jArr[this.f11451b.f12360b] = null;
        return j10;
    }

    public final void c(int i4) {
        while (i4 > 0) {
            J[] jArr = this.f11450a;
            kotlin.jvm.internal.h.b(jArr);
            int i5 = (i4 - 1) / 2;
            J j4 = jArr[i5];
            kotlin.jvm.internal.h.b(j4);
            J j5 = jArr[i4];
            kotlin.jvm.internal.h.b(j5);
            if (((Comparable) j4).compareTo(j5) <= 0) {
                return;
            }
            d(i4, i5);
            i4 = i5;
        }
    }

    public final void d(int i4, int i5) {
        J[] jArr = this.f11450a;
        kotlin.jvm.internal.h.b(jArr);
        J j4 = jArr[i5];
        kotlin.jvm.internal.h.b(j4);
        J j5 = jArr[i4];
        kotlin.jvm.internal.h.b(j5);
        jArr[i4] = j4;
        jArr[i5] = j5;
        j4.a(i4);
        j5.a(i5);
    }
}
