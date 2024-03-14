package j;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* renamed from: j.M  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class SubMenuC1082M extends MenuC1075F implements SubMenu {

    /* renamed from: e  reason: collision with root package name */
    public final G.c f10492e;

    public SubMenuC1082M(Context context, G.c cVar) {
        super(context, cVar);
        this.f10492e = cVar;
    }

    @Override // android.view.SubMenu
    public final void clearHeader() {
        this.f10492e.clearHeader();
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return c(this.f10492e.getItem());
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i4) {
        this.f10492e.setHeaderIcon(i4);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i4) {
        this.f10492e.setHeaderTitle(i4);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        this.f10492e.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i4) {
        this.f10492e.setIcon(i4);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        this.f10492e.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f10492e.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.f10492e.setIcon(drawable);
        return this;
    }
}
