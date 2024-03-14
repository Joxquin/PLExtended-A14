package androidx.core.view;

import android.view.WindowInsets;
/* loaded from: classes.dex */
public class S extends U {

    /* renamed from: b  reason: collision with root package name */
    public final WindowInsets.Builder f3089b;

    public S() {
        this.f3089b = new WindowInsets.Builder();
    }

    @Override // androidx.core.view.U
    public c0 b() {
        a();
        c0 g4 = c0.g(this.f3089b.build(), null);
        g4.f3106a.p(null);
        return g4;
    }

    @Override // androidx.core.view.U
    public void c(E.b bVar) {
        this.f3089b.setStableInsets(bVar.c());
    }

    @Override // androidx.core.view.U
    public void d(E.b bVar) {
        this.f3089b.setSystemWindowInsets(bVar.c());
    }

    public S(c0 c0Var) {
        super(c0Var);
        WindowInsets.Builder builder;
        WindowInsets f4 = c0Var.f();
        if (f4 != null) {
            builder = new WindowInsets.Builder(f4);
        } else {
            builder = new WindowInsets.Builder();
        }
        this.f3089b = builder;
    }
}
