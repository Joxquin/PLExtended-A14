package j;

import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;
/* loaded from: classes.dex */
public final class t extends s implements ActionProvider.VisibilityListener {

    /* renamed from: d  reason: collision with root package name */
    public q f10624d;

    @Override // androidx.core.view.AbstractC0166c
    public final boolean b() {
        return this.f10622b.isVisible();
    }

    @Override // androidx.core.view.AbstractC0166c
    public final View d(MenuItem menuItem) {
        return this.f10622b.onCreateActionView(menuItem);
    }

    @Override // androidx.core.view.AbstractC0166c
    public final boolean g() {
        return this.f10622b.overridesItemVisibility();
    }

    @Override // androidx.core.view.AbstractC0166c
    public final void h(q qVar) {
        this.f10624d = qVar;
        this.f10622b.setVisibilityListener(this);
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z4) {
        q qVar = this.f10624d;
        if (qVar != null) {
            C1097o c1097o = qVar.f10592a.f10609n;
            c1097o.f10571h = true;
            c1097o.p(true);
        }
    }
}
