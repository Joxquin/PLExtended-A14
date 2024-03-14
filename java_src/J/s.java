package j;

import android.view.ActionProvider;
import android.view.View;
import androidx.core.view.AbstractC0166c;
/* loaded from: classes.dex */
public class s extends AbstractC0166c {

    /* renamed from: b  reason: collision with root package name */
    public final ActionProvider f10622b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ x f10623c;

    public s(x xVar, ActionProvider actionProvider) {
        this.f10623c = xVar;
        this.f10622b = actionProvider;
    }

    @Override // androidx.core.view.AbstractC0166c
    public final boolean a() {
        return this.f10622b.hasSubMenu();
    }

    @Override // androidx.core.view.AbstractC0166c
    public final View c() {
        return this.f10622b.onCreateActionView();
    }

    @Override // androidx.core.view.AbstractC0166c
    public final boolean e() {
        return this.f10622b.onPerformDefaultAction();
    }

    @Override // androidx.core.view.AbstractC0166c
    public final void f(SubMenuC1081L subMenuC1081L) {
        this.f10622b.onPrepareSubMenu(this.f10623c.d(subMenuC1081L));
    }
}
