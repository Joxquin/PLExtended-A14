package j;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.view.AbstractC0166c;
import f.C0832a;
/* loaded from: classes.dex */
public final class r implements G.b {

    /* renamed from: A  reason: collision with root package name */
    public AbstractC0166c f10593A;

    /* renamed from: B  reason: collision with root package name */
    public MenuItem.OnActionExpandListener f10594B;

    /* renamed from: a  reason: collision with root package name */
    public final int f10596a;

    /* renamed from: b  reason: collision with root package name */
    public final int f10597b;

    /* renamed from: c  reason: collision with root package name */
    public final int f10598c;

    /* renamed from: d  reason: collision with root package name */
    public final int f10599d;

    /* renamed from: e  reason: collision with root package name */
    public CharSequence f10600e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f10601f;

    /* renamed from: g  reason: collision with root package name */
    public Intent f10602g;

    /* renamed from: h  reason: collision with root package name */
    public char f10603h;

    /* renamed from: j  reason: collision with root package name */
    public char f10605j;

    /* renamed from: l  reason: collision with root package name */
    public Drawable f10607l;

    /* renamed from: n  reason: collision with root package name */
    public final C1097o f10609n;

    /* renamed from: o  reason: collision with root package name */
    public SubMenuC1081L f10610o;

    /* renamed from: p  reason: collision with root package name */
    public MenuItem.OnMenuItemClickListener f10611p;

    /* renamed from: q  reason: collision with root package name */
    public CharSequence f10612q;

    /* renamed from: r  reason: collision with root package name */
    public CharSequence f10613r;

    /* renamed from: y  reason: collision with root package name */
    public int f10620y;

    /* renamed from: z  reason: collision with root package name */
    public View f10621z;

    /* renamed from: i  reason: collision with root package name */
    public int f10604i = 4096;

    /* renamed from: k  reason: collision with root package name */
    public int f10606k = 4096;

    /* renamed from: m  reason: collision with root package name */
    public int f10608m = 0;

    /* renamed from: s  reason: collision with root package name */
    public ColorStateList f10614s = null;

    /* renamed from: t  reason: collision with root package name */
    public PorterDuff.Mode f10615t = null;

    /* renamed from: u  reason: collision with root package name */
    public boolean f10616u = false;

    /* renamed from: v  reason: collision with root package name */
    public boolean f10617v = false;

    /* renamed from: w  reason: collision with root package name */
    public boolean f10618w = false;

    /* renamed from: x  reason: collision with root package name */
    public int f10619x = 16;

    /* renamed from: C  reason: collision with root package name */
    public boolean f10595C = false;

    public r(C1097o c1097o, int i4, int i5, int i6, int i7, CharSequence charSequence, int i8) {
        this.f10609n = c1097o;
        this.f10596a = i5;
        this.f10597b = i4;
        this.f10598c = i6;
        this.f10599d = i7;
        this.f10600e = charSequence;
        this.f10620y = i8;
    }

    public static void c(int i4, int i5, String str, StringBuilder sb) {
        if ((i4 & i5) == i5) {
            sb.append(str);
        }
    }

    @Override // G.b
    public final G.b a(AbstractC0166c abstractC0166c) {
        AbstractC0166c abstractC0166c2 = this.f10593A;
        if (abstractC0166c2 != null) {
            abstractC0166c2.f3104a = null;
        }
        this.f10621z = null;
        this.f10593A = abstractC0166c;
        this.f10609n.p(true);
        AbstractC0166c abstractC0166c3 = this.f10593A;
        if (abstractC0166c3 != null) {
            abstractC0166c3.h(new q(this));
        }
        return this;
    }

    @Override // G.b
    public final AbstractC0166c b() {
        return this.f10593A;
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f10620y & 8) == 0) {
            return false;
        }
        if (this.f10621z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f10594B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f10609n.d(this);
        }
        return false;
    }

    public final Drawable d(Drawable drawable) {
        if (drawable != null && this.f10618w && (this.f10616u || this.f10617v)) {
            drawable = drawable.mutate();
            if (this.f10616u) {
                drawable.setTintList(this.f10614s);
            }
            if (this.f10617v) {
                drawable.setTintMode(this.f10615t);
            }
            this.f10618w = false;
        }
        return drawable;
    }

    public final boolean e() {
        AbstractC0166c abstractC0166c;
        if ((this.f10620y & 8) != 0) {
            if (this.f10621z == null && (abstractC0166c = this.f10593A) != null) {
                this.f10621z = abstractC0166c.d(this);
            }
            return this.f10621z != null;
        }
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        if (e()) {
            MenuItem.OnActionExpandListener onActionExpandListener = this.f10594B;
            if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
                return this.f10609n.f(this);
            }
            return false;
        }
        return false;
    }

    public final boolean f() {
        return (this.f10619x & 32) == 32;
    }

    public final void g(boolean z4) {
        if (z4) {
            this.f10619x |= 32;
        } else {
            this.f10619x &= -33;
        }
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View view = this.f10621z;
        if (view != null) {
            return view;
        }
        AbstractC0166c abstractC0166c = this.f10593A;
        if (abstractC0166c != null) {
            View d4 = abstractC0166c.d(this);
            this.f10621z = d4;
            return d4;
        }
        return null;
    }

    @Override // G.b, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f10606k;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f10605j;
    }

    @Override // G.b, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f10612q;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f10597b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.f10607l;
        if (drawable != null) {
            return d(drawable);
        }
        int i4 = this.f10608m;
        if (i4 != 0) {
            Drawable a4 = C0832a.a(i4, this.f10609n.f10564a);
            this.f10608m = 0;
            this.f10607l = a4;
            return d(a4);
        }
        return null;
    }

    @Override // G.b, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f10614s;
    }

    @Override // G.b, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f10615t;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f10602g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public final int getItemId() {
        return this.f10596a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // G.b, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f10604i;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f10603h;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f10598c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f10610o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public final CharSequence getTitle() {
        return this.f10600e;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f10601f;
        return charSequence != null ? charSequence : this.f10600e;
    }

    @Override // G.b, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f10613r;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f10610o != null;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f10595C;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f10619x & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f10619x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f10619x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        AbstractC0166c abstractC0166c = this.f10593A;
        return (abstractC0166c == null || !abstractC0166c.g()) ? (this.f10619x & 8) == 0 : (this.f10619x & 8) == 0 && this.f10593A.b();
    }

    public final boolean requiresActionButton() {
        return (this.f10620y & 2) == 2;
    }

    public final boolean requiresOverflow() {
        if (requiresActionButton()) {
            return false;
        }
        return !((this.f10620y & 1) == 1);
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i4;
        this.f10621z = view;
        this.f10593A = null;
        if (view != null && view.getId() == -1 && (i4 = this.f10596a) > 0) {
            view.setId(i4);
        }
        C1097o c1097o = this.f10609n;
        c1097o.f10574k = true;
        c1097o.p(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c4) {
        if (this.f10605j == c4) {
            return this;
        }
        this.f10605j = Character.toLowerCase(c4);
        this.f10609n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z4) {
        int i4 = this.f10619x;
        int i5 = (z4 ? 1 : 0) | (i4 & (-2));
        this.f10619x = i5;
        if (i4 != i5) {
            this.f10609n.p(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z4) {
        int i4 = this.f10619x;
        if ((i4 & 4) != 0) {
            C1097o c1097o = this.f10609n;
            c1097o.getClass();
            int i5 = this.f10597b;
            int size = c1097o.f10569f.size();
            c1097o.w();
            for (int i6 = 0; i6 < size; i6++) {
                r rVar = (r) c1097o.f10569f.get(i6);
                if (rVar.f10597b == i5) {
                    if (((rVar.f10619x & 4) != 0) && rVar.isCheckable()) {
                        boolean z5 = rVar == this;
                        int i7 = rVar.f10619x;
                        int i8 = (z5 ? 2 : 0) | (i7 & (-3));
                        rVar.f10619x = i8;
                        if (i7 != i8) {
                            rVar.f10609n.p(false);
                        }
                    }
                }
            }
            c1097o.v();
        } else {
            int i9 = (z4 ? 2 : 0) | (i4 & (-3));
            this.f10619x = i9;
            if (i4 != i9) {
                this.f10609n.p(false);
            }
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z4) {
        if (z4) {
            this.f10619x |= 16;
        } else {
            this.f10619x &= -17;
        }
        this.f10609n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f10608m = 0;
        this.f10607l = drawable;
        this.f10618w = true;
        this.f10609n.p(false);
        return this;
    }

    @Override // G.b, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f10614s = colorStateList;
        this.f10616u = true;
        this.f10618w = true;
        this.f10609n.p(false);
        return this;
    }

    @Override // G.b, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f10615t = mode;
        this.f10617v = true;
        this.f10618w = true;
        this.f10609n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f10602g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c4) {
        if (this.f10603h == c4) {
            return this;
        }
        this.f10603h = c4;
        this.f10609n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f10594B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f10611p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c4, char c5) {
        this.f10603h = c4;
        this.f10605j = Character.toLowerCase(c5);
        this.f10609n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i4) {
        int i5 = i4 & 3;
        if (i5 != 0 && i5 != 1 && i5 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f10620y = i4;
        C1097o c1097o = this.f10609n;
        c1097o.f10574k = true;
        c1097o.p(true);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i4) {
        setShowAsAction(i4);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f10600e = charSequence;
        this.f10609n.p(false);
        SubMenuC1081L subMenuC1081L = this.f10610o;
        if (subMenuC1081L != null) {
            subMenuC1081L.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f10601f = charSequence;
        this.f10609n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z4) {
        int i4 = this.f10619x;
        int i5 = (z4 ? 0 : 8) | (i4 & (-9));
        this.f10619x = i5;
        if (i4 != i5) {
            C1097o c1097o = this.f10609n;
            c1097o.f10571h = true;
            c1097o.p(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f10600e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // G.b, android.view.MenuItem
    public final G.b setContentDescription(CharSequence charSequence) {
        this.f10612q = charSequence;
        this.f10609n.p(false);
        return this;
    }

    @Override // G.b, android.view.MenuItem
    public final G.b setTooltipText(CharSequence charSequence) {
        this.f10613r = charSequence;
        this.f10609n.p(false);
        return this;
    }

    @Override // G.b, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c4, int i4) {
        if (this.f10605j == c4 && this.f10606k == i4) {
            return this;
        }
        this.f10605j = Character.toLowerCase(c4);
        this.f10606k = KeyEvent.normalizeMetaState(i4);
        this.f10609n.p(false);
        return this;
    }

    @Override // G.b, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c4, int i4) {
        if (this.f10603h == c4 && this.f10604i == i4) {
            return this;
        }
        this.f10603h = c4;
        this.f10604i = KeyEvent.normalizeMetaState(i4);
        this.f10609n.p(false);
        return this;
    }

    @Override // G.b, android.view.MenuItem
    public final MenuItem setShortcut(char c4, char c5, int i4, int i5) {
        this.f10603h = c4;
        this.f10604i = KeyEvent.normalizeMetaState(i4);
        this.f10605j = Character.toLowerCase(c5);
        this.f10606k = KeyEvent.normalizeMetaState(i5);
        this.f10609n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i4) {
        this.f10607l = null;
        this.f10608m = i4;
        this.f10618w = true;
        this.f10609n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i4) {
        setTitle(this.f10609n.f10564a.getString(i4));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i4) {
        int i5;
        Context context = this.f10609n.f10564a;
        View inflate = LayoutInflater.from(context).inflate(i4, (ViewGroup) new LinearLayout(context), false);
        this.f10621z = inflate;
        this.f10593A = null;
        if (inflate != null && inflate.getId() == -1 && (i5 = this.f10596a) > 0) {
            inflate.setId(i5);
        }
        C1097o c1097o = this.f10609n;
        c1097o.f10574k = true;
        c1097o.p(true);
        return this;
    }
}
