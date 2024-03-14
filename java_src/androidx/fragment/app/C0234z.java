package androidx.fragment.app;

import android.os.Bundle;
/* renamed from: androidx.fragment.app.z  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0234z extends H {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ K f3540a;

    public C0234z(K k4) {
        this.f3540a = k4;
    }

    @Override // androidx.fragment.app.H
    public final void a() {
        K k4 = this.f3540a;
        k4.mSavedStateRegistryController.a();
        androidx.lifecycle.I.b(k4);
        Bundle bundle = k4.mSavedFragmentState;
        k4.mSavedStateRegistryController.b(bundle != null ? bundle.getBundle("registryState") : null);
    }
}
