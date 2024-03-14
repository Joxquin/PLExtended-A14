package androidx.recyclerview.widget;

import android.view.View;
/* loaded from: classes.dex */
public final class J {

    /* renamed from: a  reason: collision with root package name */
    public S f3812a;

    /* renamed from: b  reason: collision with root package name */
    public int f3813b;

    /* renamed from: c  reason: collision with root package name */
    public int f3814c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3815d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f3816e;

    public J() {
        d();
    }

    public final void a() {
        this.f3814c = this.f3815d ? this.f3812a.f() : this.f3812a.h();
    }

    public final void b(View view, int i4) {
        if (this.f3815d) {
            this.f3814c = this.f3812a.j() + this.f3812a.b(view);
        } else {
            this.f3814c = this.f3812a.d(view);
        }
        this.f3813b = i4;
    }

    public final void c(View view, int i4) {
        int j4 = this.f3812a.j();
        if (j4 >= 0) {
            b(view, i4);
            return;
        }
        this.f3813b = i4;
        if (!this.f3815d) {
            int d4 = this.f3812a.d(view);
            int h4 = d4 - this.f3812a.h();
            this.f3814c = d4;
            if (h4 > 0) {
                int f4 = (this.f3812a.f() - Math.min(0, (this.f3812a.f() - j4) - this.f3812a.b(view))) - (this.f3812a.c(view) + d4);
                if (f4 < 0) {
                    this.f3814c -= Math.min(h4, -f4);
                    return;
                }
                return;
            }
            return;
        }
        int f5 = (this.f3812a.f() - j4) - this.f3812a.b(view);
        this.f3814c = this.f3812a.f() - f5;
        if (f5 > 0) {
            int c4 = this.f3814c - this.f3812a.c(view);
            int h5 = this.f3812a.h();
            int min = c4 - (Math.min(this.f3812a.d(view) - h5, 0) + h5);
            if (min < 0) {
                this.f3814c = Math.min(f5, -min) + this.f3814c;
            }
        }
    }

    public final void d() {
        this.f3813b = -1;
        this.f3814c = Integer.MIN_VALUE;
        this.f3815d = false;
        this.f3816e = false;
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.f3813b + ", mCoordinate=" + this.f3814c + ", mLayoutFromEnd=" + this.f3815d + ", mValid=" + this.f3816e + '}';
    }
}
