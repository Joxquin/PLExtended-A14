package i;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.core.view.AbstractC0166c;
import j.r;
import j.x;
import java.lang.reflect.Constructor;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: A  reason: collision with root package name */
    public CharSequence f9559A;

    /* renamed from: B  reason: collision with root package name */
    public CharSequence f9560B;

    /* renamed from: E  reason: collision with root package name */
    public final /* synthetic */ j f9563E;

    /* renamed from: a  reason: collision with root package name */
    public final Menu f9564a;

    /* renamed from: h  reason: collision with root package name */
    public boolean f9571h;

    /* renamed from: i  reason: collision with root package name */
    public int f9572i;

    /* renamed from: j  reason: collision with root package name */
    public int f9573j;

    /* renamed from: k  reason: collision with root package name */
    public CharSequence f9574k;

    /* renamed from: l  reason: collision with root package name */
    public CharSequence f9575l;

    /* renamed from: m  reason: collision with root package name */
    public int f9576m;

    /* renamed from: n  reason: collision with root package name */
    public char f9577n;

    /* renamed from: o  reason: collision with root package name */
    public int f9578o;

    /* renamed from: p  reason: collision with root package name */
    public char f9579p;

    /* renamed from: q  reason: collision with root package name */
    public int f9580q;

    /* renamed from: r  reason: collision with root package name */
    public int f9581r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f9582s;

    /* renamed from: t  reason: collision with root package name */
    public boolean f9583t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f9584u;

    /* renamed from: v  reason: collision with root package name */
    public int f9585v;

    /* renamed from: w  reason: collision with root package name */
    public int f9586w;

    /* renamed from: x  reason: collision with root package name */
    public String f9587x;

    /* renamed from: y  reason: collision with root package name */
    public String f9588y;

    /* renamed from: z  reason: collision with root package name */
    public AbstractC0166c f9589z;

    /* renamed from: C  reason: collision with root package name */
    public ColorStateList f9561C = null;

    /* renamed from: D  reason: collision with root package name */
    public PorterDuff.Mode f9562D = null;

    /* renamed from: b  reason: collision with root package name */
    public int f9565b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f9566c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f9567d = 0;

    /* renamed from: e  reason: collision with root package name */
    public int f9568e = 0;

    /* renamed from: f  reason: collision with root package name */
    public boolean f9569f = true;

    /* renamed from: g  reason: collision with root package name */
    public boolean f9570g = true;

    public i(j jVar, Menu menu) {
        this.f9563E = jVar;
        this.f9564a = menu;
    }

    public final Object a(String str, Class[] clsArr, Object[] objArr) {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.f9563E.f9594c.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception e4) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e4);
            return null;
        }
    }

    public final void b(MenuItem menuItem) {
        boolean z4 = false;
        menuItem.setChecked(this.f9582s).setVisible(this.f9583t).setEnabled(this.f9584u).setCheckable(this.f9581r >= 1).setTitleCondensed(this.f9575l).setIcon(this.f9576m);
        int i4 = this.f9585v;
        if (i4 >= 0) {
            menuItem.setShowAsAction(i4);
        }
        String str = this.f9588y;
        j jVar = this.f9563E;
        if (str != null) {
            if (jVar.f9594c.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            if (jVar.f9595d == null) {
                jVar.f9595d = j.a(jVar.f9594c);
            }
            menuItem.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC0976h(jVar.f9595d, this.f9588y));
        }
        if (this.f9581r >= 2) {
            if (menuItem instanceof r) {
                r rVar = (r) menuItem;
                rVar.f10619x = (rVar.f10619x & (-5)) | 4;
            } else if (menuItem instanceof x) {
                x xVar = (x) menuItem;
                try {
                    if (xVar.f10631e == null) {
                        xVar.f10631e = xVar.f10630d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                    }
                    xVar.f10631e.invoke(xVar.f10630d, Boolean.TRUE);
                } catch (Exception e4) {
                    Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e4);
                }
            }
        }
        String str2 = this.f9587x;
        if (str2 != null) {
            menuItem.setActionView((View) a(str2, j.f9590e, jVar.f9592a));
            z4 = true;
        }
        int i5 = this.f9586w;
        if (i5 > 0) {
            if (z4) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            } else {
                menuItem.setActionView(i5);
            }
        }
        AbstractC0166c abstractC0166c = this.f9589z;
        if (abstractC0166c != null) {
            if (menuItem instanceof G.b) {
                ((G.b) menuItem).a(abstractC0166c);
            } else {
                Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
            }
        }
        CharSequence charSequence = this.f9559A;
        boolean z5 = menuItem instanceof G.b;
        if (z5) {
            ((G.b) menuItem).setContentDescription(charSequence);
        } else {
            menuItem.setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f9560B;
        if (z5) {
            ((G.b) menuItem).setTooltipText(charSequence2);
        } else {
            menuItem.setTooltipText(charSequence2);
        }
        char c4 = this.f9577n;
        int i6 = this.f9578o;
        if (z5) {
            ((G.b) menuItem).setAlphabeticShortcut(c4, i6);
        } else {
            menuItem.setAlphabeticShortcut(c4, i6);
        }
        char c5 = this.f9579p;
        int i7 = this.f9580q;
        if (z5) {
            ((G.b) menuItem).setNumericShortcut(c5, i7);
        } else {
            menuItem.setNumericShortcut(c5, i7);
        }
        PorterDuff.Mode mode = this.f9562D;
        if (mode != null) {
            if (z5) {
                ((G.b) menuItem).setIconTintMode(mode);
            } else {
                menuItem.setIconTintMode(mode);
            }
        }
        ColorStateList colorStateList = this.f9561C;
        if (colorStateList != null) {
            if (z5) {
                ((G.b) menuItem).setIconTintList(colorStateList);
            } else {
                menuItem.setIconTintList(colorStateList);
            }
        }
    }
}
