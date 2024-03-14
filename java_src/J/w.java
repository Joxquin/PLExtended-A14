package j;

import android.view.MenuItem;
/* loaded from: classes.dex */
public final class w implements MenuItem.OnMenuItemClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final MenuItem.OnMenuItemClickListener f10628d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ x f10629e;

    public w(x xVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f10629e = xVar;
        this.f10628d = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return this.f10628d.onMenuItemClick(this.f10629e.c(menuItem));
    }
}
