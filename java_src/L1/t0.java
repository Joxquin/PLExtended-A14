package L1;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
/* loaded from: classes.dex */
public final class t0 extends ActionMode.Callback2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ u0 f1245a;

    public t0(u0 u0Var) {
        this.f1245a = u0Var;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        boolean f4;
        synchronized (this.f1245a) {
            f4 = this.f1245a.f1250c.f1208b.f(menuItem);
        }
        return f4;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        synchronized (this.f1245a) {
            u0 u0Var = this.f1245a;
            if (u0Var.f1250c.i(u0Var.f1260m)) {
                C0060o c0060o = this.f1245a.f1250c;
                c0060o.f1208b.a(actionMode, menu, c0060o);
                this.f1245a.f1250c.f1208b.g();
                return true;
            }
            return false;
        }
    }

    @Override // android.view.ActionMode.Callback
    public final void onDestroyActionMode(ActionMode actionMode) {
        synchronized (this.f1245a) {
            this.f1245a.f1250c.f1208b.e();
        }
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        synchronized (this.f1245a) {
            u0 u0Var = this.f1245a;
            if (u0Var.f1250c.i(u0Var.f1260m)) {
                C0060o c0060o = this.f1245a.f1250c;
                c0060o.f1208b.a(actionMode, menu, c0060o);
                u0 u0Var2 = this.f1245a;
                int i4 = u0Var2.f1256i;
                int i5 = u0Var2.f1260m;
                if (i4 != i5) {
                    u0Var2.f1256i = i5;
                    u0Var2.f1250c.f1208b.h();
                }
                return true;
            }
            return false;
        }
    }
}
