package j;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
/* renamed from: j.F  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class MenuC1075F extends AbstractC1085c implements Menu {

    /* renamed from: d  reason: collision with root package name */
    public final G.a f10467d;

    public MenuC1075F(Context context, G.a aVar) {
        super(context);
        if (aVar == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f10467d = aVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return c(this.f10467d.add(charSequence));
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i4, int i5, int i6, ComponentName componentName, Intent[] intentArr, Intent intent, int i7, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = this.f10467d.addIntentOptions(i4, i5, i6, componentName, intentArr, intent, i7, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i8 = 0; i8 < length; i8++) {
                menuItemArr[i8] = c(menuItemArr2[i8]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return d(this.f10467d.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public final void clear() {
        q.m mVar = this.f10511b;
        if (mVar != null) {
            mVar.clear();
        }
        q.m mVar2 = this.f10512c;
        if (mVar2 != null) {
            mVar2.clear();
        }
        this.f10467d.clear();
    }

    @Override // android.view.Menu
    public final void close() {
        this.f10467d.close();
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i4) {
        return c(this.f10467d.findItem(i4));
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i4) {
        return c(this.f10467d.getItem(i4));
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        return this.f10467d.hasVisibleItems();
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i4, KeyEvent keyEvent) {
        return this.f10467d.isShortcutKey(i4, keyEvent);
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i4, int i5) {
        return this.f10467d.performIdentifierAction(i4, i5);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i4, KeyEvent keyEvent, int i5) {
        return this.f10467d.performShortcut(i4, keyEvent, i5);
    }

    @Override // android.view.Menu
    public final void removeGroup(int i4) {
        if (this.f10511b != null) {
            int i5 = 0;
            while (true) {
                q.m mVar = this.f10511b;
                if (i5 >= mVar.f11967f) {
                    break;
                }
                if (((G.b) mVar.g(i5)).getGroupId() == i4) {
                    this.f10511b.h(i5);
                    i5--;
                }
                i5++;
            }
        }
        this.f10467d.removeGroup(i4);
    }

    @Override // android.view.Menu
    public final void removeItem(int i4) {
        if (this.f10511b != null) {
            int i5 = 0;
            while (true) {
                q.m mVar = this.f10511b;
                if (i5 >= mVar.f11967f) {
                    break;
                } else if (((G.b) mVar.g(i5)).getItemId() == i4) {
                    this.f10511b.h(i5);
                    break;
                } else {
                    i5++;
                }
            }
        }
        this.f10467d.removeItem(i4);
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i4, boolean z4, boolean z5) {
        this.f10467d.setGroupCheckable(i4, z4, z5);
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i4, boolean z4) {
        this.f10467d.setGroupEnabled(i4, z4);
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i4, boolean z4) {
        this.f10467d.setGroupVisible(i4, z4);
    }

    @Override // android.view.Menu
    public final void setQwertyMode(boolean z4) {
        this.f10467d.setQwertyMode(z4);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f10467d.size();
    }

    @Override // android.view.Menu
    public final MenuItem add(int i4) {
        return c(this.f10467d.add(i4));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i4) {
        return d(this.f10467d.addSubMenu(i4));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i4, int i5, int i6, CharSequence charSequence) {
        return c(this.f10467d.add(i4, i5, i6, charSequence));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i4, int i5, int i6, CharSequence charSequence) {
        return d(this.f10467d.addSubMenu(i4, i5, i6, charSequence));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i4, int i5, int i6, int i7) {
        return c(this.f10467d.add(i4, i5, i6, i7));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i4, int i5, int i6, int i7) {
        return d(this.f10467d.addSubMenu(i4, i5, i6, i7));
    }
}
