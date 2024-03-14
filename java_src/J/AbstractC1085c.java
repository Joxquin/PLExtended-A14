package j;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
/* renamed from: j.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1085c {

    /* renamed from: a  reason: collision with root package name */
    public final Context f10510a;

    /* renamed from: b  reason: collision with root package name */
    public q.m f10511b;

    /* renamed from: c  reason: collision with root package name */
    public q.m f10512c;

    public AbstractC1085c(Context context) {
        this.f10510a = context;
    }

    public final MenuItem c(MenuItem menuItem) {
        if (menuItem instanceof G.b) {
            G.b bVar = (G.b) menuItem;
            if (this.f10511b == null) {
                this.f10511b = new q.m();
            }
            MenuItem menuItem2 = (MenuItem) this.f10511b.get(bVar);
            if (menuItem2 == null) {
                x xVar = new x(this.f10510a, bVar);
                this.f10511b.put(bVar, xVar);
                return xVar;
            }
            return menuItem2;
        }
        return menuItem;
    }

    public final SubMenu d(SubMenu subMenu) {
        if (subMenu instanceof G.c) {
            G.c cVar = (G.c) subMenu;
            if (this.f10512c == null) {
                this.f10512c = new q.m();
            }
            SubMenu subMenu2 = (SubMenu) this.f10512c.get(cVar);
            if (subMenu2 == null) {
                SubMenuC1082M subMenuC1082M = new SubMenuC1082M(this.f10510a, cVar);
                this.f10512c.put(cVar, subMenuC1082M);
                return subMenuC1082M;
            }
            return subMenu2;
        }
        return subMenu;
    }
}
