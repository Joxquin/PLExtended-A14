package androidx.recyclerview.widget;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public final class O0 {

    /* renamed from: a  reason: collision with root package name */
    public int[] f3850a;

    /* renamed from: b  reason: collision with root package name */
    public List f3851b;

    public final void a() {
        int[] iArr = this.f3850a;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.f3851b = null;
    }

    public final void b(int i4) {
        int[] iArr = this.f3850a;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i4, 10) + 1];
            this.f3850a = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i4 >= iArr.length) {
            int length = iArr.length;
            while (length <= i4) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.f3850a = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = this.f3850a;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int c(int r6) {
        /*
            r5 = this;
            int[] r0 = r5.f3850a
            r1 = -1
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r0.length
            if (r6 < r0) goto La
            return r1
        La:
            java.util.List r0 = r5.f3851b
            if (r0 != 0) goto Lf
            goto L5e
        Lf:
            r2 = 0
            if (r0 != 0) goto L13
            goto L2b
        L13:
            int r0 = r0.size()
            int r0 = r0 + r1
        L18:
            if (r0 < 0) goto L2b
            java.util.List r3 = r5.f3851b
            java.lang.Object r3 = r3.get(r0)
            androidx.recyclerview.widget.N0 r3 = (androidx.recyclerview.widget.N0) r3
            int r4 = r3.f3846d
            if (r4 != r6) goto L28
            r2 = r3
            goto L2b
        L28:
            int r0 = r0 + (-1)
            goto L18
        L2b:
            if (r2 == 0) goto L32
            java.util.List r0 = r5.f3851b
            r0.remove(r2)
        L32:
            java.util.List r0 = r5.f3851b
            int r0 = r0.size()
            r2 = 0
        L39:
            if (r2 >= r0) goto L4b
            java.util.List r3 = r5.f3851b
            java.lang.Object r3 = r3.get(r2)
            androidx.recyclerview.widget.N0 r3 = (androidx.recyclerview.widget.N0) r3
            int r3 = r3.f3846d
            if (r3 < r6) goto L48
            goto L4c
        L48:
            int r2 = r2 + 1
            goto L39
        L4b:
            r2 = r1
        L4c:
            if (r2 == r1) goto L5e
            java.util.List r0 = r5.f3851b
            java.lang.Object r0 = r0.get(r2)
            androidx.recyclerview.widget.N0 r0 = (androidx.recyclerview.widget.N0) r0
            java.util.List r3 = r5.f3851b
            r3.remove(r2)
            int r0 = r0.f3846d
            goto L5f
        L5e:
            r0 = r1
        L5f:
            if (r0 != r1) goto L6b
            int[] r0 = r5.f3850a
            int r2 = r0.length
            java.util.Arrays.fill(r0, r6, r2, r1)
            int[] r5 = r5.f3850a
            int r5 = r5.length
            return r5
        L6b:
            int r0 = r0 + 1
            int[] r2 = r5.f3850a
            int r2 = r2.length
            int r0 = java.lang.Math.min(r0, r2)
            int[] r5 = r5.f3850a
            java.util.Arrays.fill(r5, r6, r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.O0.c(int):int");
    }

    public final void d(int i4, int i5) {
        int[] iArr = this.f3850a;
        if (iArr == null || i4 >= iArr.length) {
            return;
        }
        int i6 = i4 + i5;
        b(i6);
        int[] iArr2 = this.f3850a;
        System.arraycopy(iArr2, i4, iArr2, i6, (iArr2.length - i4) - i5);
        Arrays.fill(this.f3850a, i4, i6, -1);
        List list = this.f3851b;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            N0 n02 = (N0) this.f3851b.get(size);
            int i7 = n02.f3846d;
            if (i7 >= i4) {
                n02.f3846d = i7 + i5;
            }
        }
    }

    public final void e(int i4, int i5) {
        int[] iArr = this.f3850a;
        if (iArr == null || i4 >= iArr.length) {
            return;
        }
        int i6 = i4 + i5;
        b(i6);
        int[] iArr2 = this.f3850a;
        System.arraycopy(iArr2, i6, iArr2, i4, (iArr2.length - i4) - i5);
        int[] iArr3 = this.f3850a;
        Arrays.fill(iArr3, iArr3.length - i5, iArr3.length, -1);
        List list = this.f3851b;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            N0 n02 = (N0) this.f3851b.get(size);
            int i7 = n02.f3846d;
            if (i7 >= i4) {
                if (i7 < i6) {
                    this.f3851b.remove(size);
                } else {
                    n02.f3846d = i7 - i5;
                }
            }
        }
    }
}
