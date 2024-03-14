package n2;

import android.view.View;
/* loaded from: classes.dex */
public final class o extends f {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ q f11824a;

    public o(q qVar) {
        this.f11824a = qVar;
    }

    @Override // n2.f
    public final void b(View view) {
    }

    @Override // n2.f
    public final void c(View view, int i4) {
        if (i4 == 5) {
            this.f11824a.cancel();
        }
    }
}
