package k;

import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
/* loaded from: classes.dex */
public final class U0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Toolbar f10834d;

    public U0(Toolbar toolbar) {
        this.f10834d = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1151n c1151n;
        ActionMenuView actionMenuView = this.f10834d.f2658d;
        if (actionMenuView == null || (c1151n = actionMenuView.f2573w) == null) {
            return;
        }
        c1151n.l();
    }
}
