package androidx.fragment.app;

import android.view.View;
/* loaded from: classes.dex */
public final class C extends U {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ K f3243d;

    public C(K k4) {
        this.f3243d = k4;
    }

    @Override // androidx.fragment.app.U
    public final View b(int i4) {
        K k4 = this.f3243d;
        View view = k4.mView;
        if (view != null) {
            return view.findViewById(i4);
        }
        throw new IllegalStateException(B.a("Fragment ", k4, " does not have a view"));
    }

    @Override // androidx.fragment.app.U
    public final boolean c() {
        return this.f3243d.mView != null;
    }
}
