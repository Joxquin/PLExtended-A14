package androidx.fragment.app;

import android.view.View;
/* renamed from: androidx.fragment.app.v  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0230v extends U {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ U f3519d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ DialogFragment f3520e;

    public C0230v(DialogFragment dialogFragment, U u4) {
        this.f3520e = dialogFragment;
        this.f3519d = u4;
    }

    @Override // androidx.fragment.app.U
    public final View b(int i4) {
        U u4 = this.f3519d;
        return u4.c() ? u4.b(i4) : this.f3520e.onFindViewById(i4);
    }

    @Override // androidx.fragment.app.U
    public final boolean c() {
        return this.f3519d.c() || this.f3520e.onHasView();
    }
}
