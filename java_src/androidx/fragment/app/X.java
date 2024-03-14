package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public final class X implements View.OnAttachStateChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ z0 f3359d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Y f3360e;

    public X(Y y4, z0 z0Var) {
        this.f3360e = y4;
        this.f3359d = z0Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        z0 z0Var = this.f3359d;
        K k4 = z0Var.f3543c;
        z0Var.k();
        U0.j((ViewGroup) k4.mView.getParent(), this.f3360e.f3361d).i();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
