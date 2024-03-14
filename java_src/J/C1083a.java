package j;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.core.view.AbstractC0166c;
/* renamed from: j.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1083a implements G.b {

    /* renamed from: a  reason: collision with root package name */
    public CharSequence f10493a;

    /* renamed from: b  reason: collision with root package name */
    public CharSequence f10494b;

    /* renamed from: c  reason: collision with root package name */
    public Intent f10495c;

    /* renamed from: d  reason: collision with root package name */
    public char f10496d;

    /* renamed from: f  reason: collision with root package name */
    public char f10498f;

    /* renamed from: h  reason: collision with root package name */
    public Drawable f10500h;

    /* renamed from: i  reason: collision with root package name */
    public final Context f10501i;

    /* renamed from: j  reason: collision with root package name */
    public CharSequence f10502j;

    /* renamed from: k  reason: collision with root package name */
    public CharSequence f10503k;

    /* renamed from: e  reason: collision with root package name */
    public int f10497e = 4096;

    /* renamed from: g  reason: collision with root package name */
    public int f10499g = 4096;

    /* renamed from: l  reason: collision with root package name */
    public ColorStateList f10504l = null;

    /* renamed from: m  reason: collision with root package name */
    public PorterDuff.Mode f10505m = null;

    /* renamed from: n  reason: collision with root package name */
    public boolean f10506n = false;

    /* renamed from: o  reason: collision with root package name */
    public boolean f10507o = false;

    /* renamed from: p  reason: collision with root package name */
    public int f10508p = 16;

    public C1083a(Context context, CharSequence charSequence) {
        this.f10501i = context;
        this.f10493a = charSequence;
    }

    @Override // G.b
    public final G.b a(AbstractC0166c abstractC0166c) {
        throw new UnsupportedOperationException();
    }

    @Override // G.b
    public final AbstractC0166c b() {
        return null;
    }

    public final void c() {
        Drawable drawable = this.f10500h;
        if (drawable != null) {
            if (this.f10506n || this.f10507o) {
                this.f10500h = drawable;
                Drawable mutate = drawable.mutate();
                this.f10500h = mutate;
                if (this.f10506n) {
                    mutate.setTintList(this.f10504l);
                }
                if (this.f10507o) {
                    this.f10500h.setTintMode(this.f10505m);
                }
            }
        }
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // G.b, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f10499g;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f10498f;
    }

    @Override // G.b, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f10502j;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f10500h;
    }

    @Override // G.b, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f10504l;
    }

    @Override // G.b, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f10505m;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f10495c;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return 16908332;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // G.b, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f10497e;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f10496d;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f10493a;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f10494b;
        return charSequence != null ? charSequence : this.f10493a;
    }

    @Override // G.b, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f10503k;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f10508p & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f10508p & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f10508p & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.f10508p & 8) == 0;
    }

    public final boolean requiresActionButton() {
        return true;
    }

    public final boolean requiresOverflow() {
        return false;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c4) {
        this.f10498f = Character.toLowerCase(c4);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z4) {
        this.f10508p = (z4 ? 1 : 0) | (this.f10508p & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z4) {
        this.f10508p = (z4 ? 2 : 0) | (this.f10508p & (-3));
        return this;
    }

    @Override // G.b, android.view.MenuItem
    public final G.b setContentDescription(CharSequence charSequence) {
        this.f10502j = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z4) {
        this.f10508p = (z4 ? 16 : 0) | (this.f10508p & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f10500h = drawable;
        c();
        return this;
    }

    @Override // G.b, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f10504l = colorStateList;
        this.f10506n = true;
        c();
        return this;
    }

    @Override // G.b, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f10505m = mode;
        this.f10507o = true;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f10495c = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c4) {
        this.f10496d = c4;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c4, char c5) {
        this.f10496d = c4;
        this.f10498f = Character.toLowerCase(c5);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i4) {
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i4) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f10493a = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f10494b = charSequence;
        return this;
    }

    @Override // G.b, android.view.MenuItem
    public final G.b setTooltipText(CharSequence charSequence) {
        this.f10503k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z4) {
        this.f10508p = (this.f10508p & 8) | (z4 ? 0 : 8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i4) {
        throw new UnsupportedOperationException();
    }

    @Override // G.b, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c4, int i4) {
        this.f10498f = Character.toLowerCase(c4);
        this.f10499g = KeyEvent.normalizeMetaState(i4);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f10502j = charSequence;
        return this;
    }

    @Override // G.b, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c4, int i4) {
        this.f10496d = c4;
        this.f10497e = KeyEvent.normalizeMetaState(i4);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i4) {
        this.f10493a = this.f10501i.getResources().getString(i4);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f10503k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i4) {
        Context context = this.f10501i;
        Object obj = B.c.f105a;
        this.f10500h = context.getDrawable(i4);
        c();
        return this;
    }

    @Override // G.b, android.view.MenuItem
    public final MenuItem setShortcut(char c4, char c5, int i4, int i5) {
        this.f10496d = c4;
        this.f10497e = KeyEvent.normalizeMetaState(i4);
        this.f10498f = Character.toLowerCase(c5);
        this.f10499g = KeyEvent.normalizeMetaState(i5);
        return this;
    }
}
