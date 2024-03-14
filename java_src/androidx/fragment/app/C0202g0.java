package androidx.fragment.app;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.core.view.InterfaceC0174k;
/* renamed from: androidx.fragment.app.g0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0202g0 implements InterfaceC0174k {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AbstractC0220p0 f3414a;

    public C0202g0(AbstractC0220p0 abstractC0220p0) {
        this.f3414a = abstractC0220p0;
    }

    @Override // androidx.core.view.InterfaceC0174k
    public final boolean a(MenuItem menuItem) {
        return this.f3414a.o(menuItem);
    }

    @Override // androidx.core.view.InterfaceC0174k
    public final void b(Menu menu) {
        this.f3414a.p(menu);
    }

    @Override // androidx.core.view.InterfaceC0174k
    public final void c(Menu menu, MenuInflater menuInflater) {
        this.f3414a.j(menu, menuInflater);
    }

    @Override // androidx.core.view.InterfaceC0174k
    public final void d(Menu menu) {
        this.f3414a.s(menu);
    }
}
