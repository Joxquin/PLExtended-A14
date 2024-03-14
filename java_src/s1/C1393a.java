package s1;

import U2.c;
/* renamed from: s1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1393a extends c {

    /* renamed from: b  reason: collision with root package name */
    public b[] f12282b;

    public C1393a() {
        if (b.f12283d == null) {
            synchronized (U2.b.f1776a) {
                if (b.f12283d == null) {
                    b.f12283d = new b[0];
                }
            }
        }
        this.f12282b = b.f12283d;
        this.f1777a = -1;
    }

    @Override // U2.c
    public final int a() {
        b[] bVarArr = this.f12282b;
        int i4 = 0;
        if (bVarArr == null || bVarArr.length <= 0) {
            return 0;
        }
        int i5 = 0;
        while (true) {
            b[] bVarArr2 = this.f12282b;
            if (i4 >= bVarArr2.length) {
                return i5;
            }
            b bVar = bVarArr2[i4];
            if (bVar != null) {
                int a4 = U2.a.a(8);
                int b4 = bVar.b();
                i5 += U2.a.a(b4) + b4 + a4;
            }
            i4++;
        }
    }
}
