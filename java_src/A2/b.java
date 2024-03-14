package A2;

import android.graphics.Typeface;
import x2.C1466d;
/* loaded from: classes.dex */
public final class b extends h {

    /* renamed from: a  reason: collision with root package name */
    public final Typeface f81a;

    /* renamed from: b  reason: collision with root package name */
    public final a f82b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f83c;

    public b(C1466d c1466d, Typeface typeface) {
        this.f81a = typeface;
        this.f82b = c1466d;
    }

    @Override // A2.h
    public final void a(int i4) {
        c(this.f81a);
    }

    @Override // A2.h
    public final void b(Typeface typeface, boolean z4) {
        c(typeface);
    }

    public final void c(Typeface typeface) {
        if (this.f83c) {
            return;
        }
        C1466d c1466d = (C1466d) this.f82b;
        int i4 = c1466d.f12844a;
        com.google.android.material.internal.a aVar = c1466d.f12845b;
        switch (i4) {
            case 0:
                if (aVar.l(typeface)) {
                    aVar.i(false);
                    return;
                }
                return;
            default:
                if (aVar.n(typeface)) {
                    aVar.i(false);
                    return;
                }
                return;
        }
    }
}
