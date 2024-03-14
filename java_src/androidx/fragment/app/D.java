package androidx.fragment.app;

import n.InterfaceC1312a;
/* loaded from: classes.dex */
public final class D implements InterfaceC1312a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ K f3246a;

    public D(K k4) {
        this.f3246a = k4;
    }

    @Override // n.InterfaceC1312a
    public final androidx.activity.result.h a() {
        K k4 = this.f3246a;
        W w4 = k4.mHost;
        return w4 instanceof androidx.activity.result.i ? ((androidx.activity.result.i) w4).getActivityResultRegistry() : k4.requireActivity().getActivityResultRegistry();
    }
}
