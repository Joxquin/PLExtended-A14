package androidx.recyclerview.widget;
/* renamed from: androidx.recyclerview.widget.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0267f {

    /* renamed from: a  reason: collision with root package name */
    public long f3934a = 0;

    /* renamed from: b  reason: collision with root package name */
    public C0267f f3935b;

    public final void a(int i4) {
        if (i4 < 64) {
            this.f3934a &= ~(1 << i4);
            return;
        }
        C0267f c0267f = this.f3935b;
        if (c0267f != null) {
            c0267f.a(i4 - 64);
        }
    }

    public final int b(int i4) {
        C0267f c0267f = this.f3935b;
        if (c0267f == null) {
            if (i4 >= 64) {
                return Long.bitCount(this.f3934a);
            }
            return Long.bitCount(((1 << i4) - 1) & this.f3934a);
        } else if (i4 < 64) {
            return Long.bitCount(((1 << i4) - 1) & this.f3934a);
        } else {
            return Long.bitCount(this.f3934a) + c0267f.b(i4 - 64);
        }
    }

    public final void c() {
        if (this.f3935b == null) {
            this.f3935b = new C0267f();
        }
    }

    public final boolean d(int i4) {
        if (i4 < 64) {
            return ((1 << i4) & this.f3934a) != 0;
        }
        c();
        return this.f3935b.d(i4 - 64);
    }

    public final void e(int i4, boolean z4) {
        if (i4 >= 64) {
            c();
            this.f3935b.e(i4 - 64, z4);
            return;
        }
        long j4 = this.f3934a;
        boolean z5 = (Long.MIN_VALUE & j4) != 0;
        long j5 = (1 << i4) - 1;
        this.f3934a = ((j4 & (~j5)) << 1) | (j4 & j5);
        if (z4) {
            h(i4);
        } else {
            a(i4);
        }
        if (z5 || this.f3935b != null) {
            c();
            this.f3935b.e(0, z5);
        }
    }

    public final boolean f(int i4) {
        if (i4 >= 64) {
            c();
            return this.f3935b.f(i4 - 64);
        }
        long j4 = 1 << i4;
        long j5 = this.f3934a;
        boolean z4 = (j5 & j4) != 0;
        long j6 = j5 & (~j4);
        this.f3934a = j6;
        long j7 = j4 - 1;
        this.f3934a = (j6 & j7) | Long.rotateRight((~j7) & j6, 1);
        C0267f c0267f = this.f3935b;
        if (c0267f != null) {
            if (c0267f.d(0)) {
                h(63);
            }
            this.f3935b.f(0);
        }
        return z4;
    }

    public final void g() {
        this.f3934a = 0L;
        C0267f c0267f = this.f3935b;
        if (c0267f != null) {
            c0267f.g();
        }
    }

    public final void h(int i4) {
        if (i4 < 64) {
            this.f3934a |= 1 << i4;
            return;
        }
        c();
        this.f3935b.h(i4 - 64);
    }

    public final String toString() {
        if (this.f3935b == null) {
            return Long.toBinaryString(this.f3934a);
        }
        return this.f3935b.toString() + "xx" + Long.toBinaryString(this.f3934a);
    }
}
