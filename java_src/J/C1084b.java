package j;

import androidx.appcompat.view.menu.ActionMenuItemView;
import k.AbstractView$OnTouchListenerC1165u0;
import k.C1141i;
import k.C1143j;
/* renamed from: j.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1084b extends AbstractView$OnTouchListenerC1165u0 {

    /* renamed from: m  reason: collision with root package name */
    public final /* synthetic */ ActionMenuItemView f10509m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1084b(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.f10509m = actionMenuItemView;
    }

    @Override // k.AbstractView$OnTouchListenerC1165u0
    public final InterfaceC1076G b() {
        C1141i c1141i;
        C1143j c1143j = this.f10509m.f2492n;
        if (c1143j == null || (c1141i = c1143j.f10903d.f10941u) == null) {
            return null;
        }
        return c1141i.a();
    }

    @Override // k.AbstractView$OnTouchListenerC1165u0
    public final boolean c() {
        InterfaceC1076G b4;
        ActionMenuItemView actionMenuItemView = this.f10509m;
        InterfaceC1096n interfaceC1096n = actionMenuItemView.f2490l;
        return interfaceC1096n != null && interfaceC1096n.d(actionMenuItemView.f2487i) && (b4 = b()) != null && b4.b();
    }
}
