package s1;

import U2.c;
/* loaded from: classes.dex */
public final class b extends c {

    /* renamed from: d  reason: collision with root package name */
    public static volatile b[] f12283d;

    /* renamed from: b  reason: collision with root package name */
    public int f12284b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f12285c = 0;

    public b() {
        this.f1777a = -1;
    }

    @Override // U2.c
    public final int a() {
        int i4 = this.f12284b;
        int i5 = 0;
        if (i4 != 0) {
            i5 = 0 + U2.a.a(8) + (i4 >= 0 ? U2.a.a(i4) : 10);
        }
        int i6 = this.f12285c;
        if (i6 != 0) {
            return i5 + U2.a.a(16) + (i6 >= 0 ? U2.a.a(i6) : 10);
        }
        return i5;
    }
}
