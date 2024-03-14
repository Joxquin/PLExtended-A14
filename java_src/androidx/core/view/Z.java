package androidx.core.view;

import android.view.View;
import android.view.WindowInsets;
/* loaded from: classes.dex */
public final class Z extends Y {

    /* renamed from: l  reason: collision with root package name */
    public static final c0 f3100l = c0.g(WindowInsets.CONSUMED, null);

    public Z(c0 c0Var, WindowInsets windowInsets) {
        super(c0Var, windowInsets);
    }

    @Override // androidx.core.view.V, androidx.core.view.a0
    public final void d(View view) {
    }

    @Override // androidx.core.view.V, androidx.core.view.a0
    public E.b f(int i4) {
        return E.b.b(this.f3091c.getInsets(b0.a(i4)));
    }

    @Override // androidx.core.view.V, androidx.core.view.a0
    public boolean o(int i4) {
        return this.f3091c.isVisible(b0.a(i4));
    }
}
