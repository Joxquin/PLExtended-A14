package g0;

import java.util.ArrayList;
import q.C1355f;
/* loaded from: classes.dex */
public final class z extends y {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1355f f9472d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver$OnPreDrawListenerC0930A f9473e;

    public z(ViewTreeObserver$OnPreDrawListenerC0930A viewTreeObserver$OnPreDrawListenerC0930A, C1355f c1355f) {
        this.f9473e = viewTreeObserver$OnPreDrawListenerC0930A;
        this.f9472d = c1355f;
    }

    @Override // g0.InterfaceC0951u
    public final void g(x xVar) {
        ((ArrayList) this.f9472d.get(this.f9473e.f9362e)).remove(xVar);
        xVar.z(this);
    }
}
