package k;

import android.view.View;
import j.InterfaceC1076G;
/* loaded from: classes.dex */
public final class Q extends AbstractView$OnTouchListenerC1165u0 {

    /* renamed from: m  reason: collision with root package name */
    public final /* synthetic */ X f10819m;

    /* renamed from: n  reason: collision with root package name */
    public final /* synthetic */ C1128b0 f10820n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q(C1128b0 c1128b0, View view, X x4) {
        super(view);
        this.f10820n = c1128b0;
        this.f10819m = x4;
    }

    @Override // k.AbstractView$OnTouchListenerC1165u0
    public final InterfaceC1076G b() {
        return this.f10819m;
    }

    @Override // k.AbstractView$OnTouchListenerC1165u0
    public final boolean c() {
        if (this.f10820n.f10870i.b()) {
            return true;
        }
        C1128b0 c1128b0 = this.f10820n;
        c1128b0.f10870i.l(c1128b0.getTextDirection(), c1128b0.getTextAlignment());
        return true;
    }
}
