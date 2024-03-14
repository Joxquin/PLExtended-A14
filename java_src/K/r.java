package k;

import android.view.MenuItem;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.InterfaceC0174k;
import j.C1097o;
import j.InterfaceC1095m;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class r implements InterfaceC1095m {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ActionMenuView f10957d;

    public r(ActionMenuView actionMenuView) {
        this.f10957d = actionMenuView;
    }

    @Override // j.InterfaceC1095m
    public final void a(C1097o c1097o) {
        InterfaceC1095m interfaceC1095m = this.f10957d.f2575y;
        if (interfaceC1095m != null) {
            interfaceC1095m.a(c1097o);
        }
    }

    @Override // j.InterfaceC1095m
    public final boolean b(C1097o c1097o, MenuItem menuItem) {
        boolean z4;
        T0 t02 = this.f10957d.f2568D;
        if (t02 != null) {
            Iterator it = t02.f10831d.f2650J.f3118b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z4 = false;
                    break;
                } else if (((InterfaceC0174k) it.next()).a(menuItem)) {
                    z4 = true;
                    break;
                }
            }
            return z4;
        }
        return false;
    }
}
