package g0;

import android.view.ViewGroup;
/* renamed from: g0.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0935d extends y {

    /* renamed from: d  reason: collision with root package name */
    public boolean f9403d = false;

    /* renamed from: e  reason: collision with root package name */
    public final ViewGroup f9404e;

    public C0935d(ViewGroup viewGroup) {
        this.f9404e = viewGroup;
    }

    @Override // g0.y, g0.InterfaceC0951u
    public final void b() {
        this.f9404e.suppressLayout(false);
    }

    @Override // g0.y, g0.InterfaceC0951u
    public final void d() {
        this.f9404e.suppressLayout(true);
    }

    @Override // g0.y, g0.InterfaceC0951u
    public final void f(x xVar) {
        this.f9404e.suppressLayout(false);
        this.f9403d = true;
    }

    @Override // g0.InterfaceC0951u
    public final void g(x xVar) {
        if (!this.f9403d) {
            this.f9404e.suppressLayout(false);
        }
        xVar.z(this);
    }
}
