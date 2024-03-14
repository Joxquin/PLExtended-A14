package j;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* renamed from: j.L  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class SubMenuC1081L extends C1097o implements SubMenu {

    /* renamed from: A  reason: collision with root package name */
    public final C1097o f10490A;

    /* renamed from: B  reason: collision with root package name */
    public final r f10491B;

    public SubMenuC1081L(Context context, C1097o c1097o, r rVar) {
        super(context);
        this.f10490A = c1097o;
        this.f10491B = rVar;
    }

    @Override // j.C1097o
    public final boolean d(r rVar) {
        return this.f10490A.d(rVar);
    }

    @Override // j.C1097o
    public final boolean e(C1097o c1097o, MenuItem menuItem) {
        return super.e(c1097o, menuItem) || this.f10490A.e(c1097o, menuItem);
    }

    @Override // j.C1097o
    public final boolean f(r rVar) {
        return this.f10490A.f(rVar);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.f10491B;
    }

    @Override // j.C1097o
    public final String j() {
        r rVar = this.f10491B;
        int i4 = rVar != null ? rVar.f10596a : 0;
        if (i4 == 0) {
            return null;
        }
        return C1080K.a("android:menu:actionviewstates:", i4);
    }

    @Override // j.C1097o
    public final C1097o k() {
        return this.f10490A.k();
    }

    @Override // j.C1097o
    public final boolean m() {
        return this.f10490A.m();
    }

    @Override // j.C1097o
    public final boolean n() {
        return this.f10490A.n();
    }

    @Override // j.C1097o
    public final boolean o() {
        return this.f10490A.o();
    }

    @Override // j.C1097o, android.view.Menu
    public final void setGroupDividerEnabled(boolean z4) {
        this.f10490A.setGroupDividerEnabled(z4);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        u(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        u(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        u(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.f10491B.setIcon(drawable);
        return this;
    }

    @Override // j.C1097o, android.view.Menu
    public final void setQwertyMode(boolean z4) {
        this.f10490A.setQwertyMode(z4);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i4) {
        u(0, null, i4, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i4) {
        u(i4, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i4) {
        this.f10491B.setIcon(i4);
        return this;
    }
}
