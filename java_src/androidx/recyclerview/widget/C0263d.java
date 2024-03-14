package androidx.recyclerview.widget;
/* renamed from: androidx.recyclerview.widget.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0263d implements P {

    /* renamed from: a  reason: collision with root package name */
    public final P f3929a;

    /* renamed from: b  reason: collision with root package name */
    public int f3930b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f3931c = -1;

    /* renamed from: d  reason: collision with root package name */
    public int f3932d = -1;

    /* renamed from: e  reason: collision with root package name */
    public Object f3933e = null;

    public C0263d(C0261c c0261c) {
        this.f3929a = c0261c;
    }

    @Override // androidx.recyclerview.widget.P
    public final void a(int i4, int i5) {
        int i6;
        if (this.f3930b == 2 && (i6 = this.f3931c) >= i4 && i6 <= i4 + i5) {
            this.f3932d += i5;
            this.f3931c = i4;
            return;
        }
        e();
        this.f3931c = i4;
        this.f3932d = i5;
        this.f3930b = 2;
    }

    @Override // androidx.recyclerview.widget.P
    public final void b(int i4, int i5) {
        e();
        this.f3929a.b(i4, i5);
    }

    @Override // androidx.recyclerview.widget.P
    public final void c(int i4, int i5) {
        int i6;
        if (this.f3930b == 1 && i4 >= (i6 = this.f3931c)) {
            int i7 = this.f3932d;
            if (i4 <= i6 + i7) {
                this.f3932d = i7 + i5;
                this.f3931c = Math.min(i4, i6);
                return;
            }
        }
        e();
        this.f3931c = i4;
        this.f3932d = i5;
        this.f3930b = 1;
    }

    @Override // androidx.recyclerview.widget.P
    public final void d(int i4, int i5, Object obj) {
        int i6;
        if (this.f3930b == 3) {
            int i7 = this.f3931c;
            int i8 = this.f3932d;
            if (i4 <= i7 + i8 && (i6 = i4 + i5) >= i7 && this.f3933e == obj) {
                this.f3931c = Math.min(i4, i7);
                this.f3932d = Math.max(i8 + i7, i6) - this.f3931c;
                return;
            }
        }
        e();
        this.f3931c = i4;
        this.f3932d = i5;
        this.f3933e = obj;
        this.f3930b = 3;
    }

    public final void e() {
        int i4 = this.f3930b;
        if (i4 == 0) {
            return;
        }
        P p4 = this.f3929a;
        if (i4 == 1) {
            p4.c(this.f3931c, this.f3932d);
        } else if (i4 == 2) {
            p4.a(this.f3931c, this.f3932d);
        } else if (i4 == 3) {
            p4.d(this.f3931c, this.f3932d, this.f3933e);
        }
        this.f3933e = null;
        this.f3930b = 0;
    }
}
