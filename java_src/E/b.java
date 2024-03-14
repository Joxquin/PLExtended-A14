package E;

import android.graphics.Insets;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: e  reason: collision with root package name */
    public static final b f328e = new b(0, 0, 0, 0);

    /* renamed from: a  reason: collision with root package name */
    public final int f329a;

    /* renamed from: b  reason: collision with root package name */
    public final int f330b;

    /* renamed from: c  reason: collision with root package name */
    public final int f331c;

    /* renamed from: d  reason: collision with root package name */
    public final int f332d;

    public b(int i4, int i5, int i6, int i7) {
        this.f329a = i4;
        this.f330b = i5;
        this.f331c = i6;
        this.f332d = i7;
    }

    public static b a(int i4, int i5, int i6, int i7) {
        return (i4 == 0 && i5 == 0 && i6 == 0 && i7 == 0) ? f328e : new b(i4, i5, i6, i7);
    }

    public static b b(Insets insets) {
        return a(insets.left, insets.top, insets.right, insets.bottom);
    }

    public final Insets c() {
        return Insets.of(this.f329a, this.f330b, this.f331c, this.f332d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f332d == bVar.f332d && this.f329a == bVar.f329a && this.f331c == bVar.f331c && this.f330b == bVar.f330b;
    }

    public final int hashCode() {
        return (((((this.f329a * 31) + this.f330b) * 31) + this.f331c) * 31) + this.f332d;
    }

    public final String toString() {
        return "Insets{left=" + this.f329a + ", top=" + this.f330b + ", right=" + this.f331c + ", bottom=" + this.f332d + '}';
    }
}
