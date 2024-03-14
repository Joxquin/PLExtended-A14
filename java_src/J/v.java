package j;

import android.view.MenuItem;
/* loaded from: classes.dex */
public final class v implements MenuItem.OnActionExpandListener {

    /* renamed from: a  reason: collision with root package name */
    public final MenuItem.OnActionExpandListener f10626a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ x f10627b;

    public v(x xVar, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f10627b = xVar;
        this.f10626a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f10626a.onMenuItemActionCollapse(this.f10627b.c(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f10626a.onMenuItemActionExpand(this.f10627b.c(menuItem));
    }
}
