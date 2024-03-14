package k;

import android.content.Context;
import android.view.MenuItem;
import j.C1097o;
/* loaded from: classes.dex */
public final class F0 extends C0 implements D0 {

    /* renamed from: D  reason: collision with root package name */
    public D0 f10761D;

    public F0(Context context, int i4, int i5) {
        super(context, null, i4, i5);
    }

    @Override // k.D0
    public final void c(C1097o c1097o, MenuItem menuItem) {
        D0 d02 = this.f10761D;
        if (d02 != null) {
            d02.c(c1097o, menuItem);
        }
    }

    @Override // k.D0
    public final void j(C1097o c1097o, j.r rVar) {
        D0 d02 = this.f10761D;
        if (d02 != null) {
            d02.j(c1097o, rVar);
        }
    }

    @Override // k.C0
    public final C1161s0 p(Context context, boolean z4) {
        E0 e02 = new E0(context, z4);
        e02.f10759r = this;
        return e02;
    }
}
