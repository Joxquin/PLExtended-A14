package k;

import android.view.View;
import j.C1097o;
import j.InterfaceC1095m;
/* renamed from: k.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1145k implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final C1141i f10904d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C1151n f10905e;

    public RunnableC1145k(C1151n c1151n, C1141i c1141i) {
        this.f10905e = c1151n;
        this.f10904d = c1141i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC1095m interfaceC1095m;
        C1097o c1097o = this.f10905e.f10926f;
        if (c1097o != null && (interfaceC1095m = c1097o.f10568e) != null) {
            interfaceC1095m.a(c1097o);
        }
        View view = (View) this.f10905e.f10931k;
        if (view != null && view.getWindowToken() != null) {
            C1141i c1141i = this.f10904d;
            boolean z4 = true;
            if (!c1141i.b()) {
                if (c1141i.f10460f == null) {
                    z4 = false;
                } else {
                    c1141i.d(0, 0, false, false);
                }
            }
            if (z4) {
                this.f10905e.f10940t = this.f10904d;
            }
        }
        this.f10905e.f10942v = null;
    }
}
