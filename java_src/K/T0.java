package k;

import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.InterfaceC0174k;
import j.C1097o;
import j.InterfaceC1095m;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class T0 implements InterfaceC1095m {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Toolbar f10831d;

    public /* synthetic */ T0(Toolbar toolbar) {
        this.f10831d = toolbar;
    }

    @Override // j.InterfaceC1095m
    public final void a(C1097o c1097o) {
        Toolbar toolbar = this.f10831d;
        C1151n c1151n = toolbar.f2658d.f2573w;
        if (c1151n != null && c1151n.k()) {
            return;
        }
        Iterator it = toolbar.f2650J.f3118b.iterator();
        while (it.hasNext()) {
            ((InterfaceC0174k) it.next()).d(c1097o);
        }
    }

    @Override // j.InterfaceC1095m
    public final boolean b(C1097o c1097o, MenuItem menuItem) {
        this.f10831d.getClass();
        return false;
    }
}
