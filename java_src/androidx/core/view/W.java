package androidx.core.view;

import android.view.WindowInsets;
/* loaded from: classes.dex */
public class W extends V {

    /* renamed from: h  reason: collision with root package name */
    public E.b f3096h;

    public W(c0 c0Var, WindowInsets windowInsets) {
        super(c0Var, windowInsets);
        this.f3096h = null;
    }

    @Override // androidx.core.view.a0
    public c0 b() {
        return c0.g(this.f3091c.consumeStableInsets(), null);
    }

    @Override // androidx.core.view.a0
    public c0 c() {
        return c0.g(this.f3091c.consumeSystemWindowInsets(), null);
    }

    @Override // androidx.core.view.a0
    public final E.b h() {
        if (this.f3096h == null) {
            WindowInsets windowInsets = this.f3091c;
            this.f3096h = E.b.a(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.f3096h;
    }

    @Override // androidx.core.view.a0
    public boolean m() {
        return this.f3091c.isConsumed();
    }
}
