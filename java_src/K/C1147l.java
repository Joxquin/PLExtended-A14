package k;

import android.view.View;
import j.InterfaceC1076G;
/* renamed from: k.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1147l extends AbstractView$OnTouchListenerC1165u0 {

    /* renamed from: m  reason: collision with root package name */
    public final /* synthetic */ C1149m f10919m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1147l(C1149m c1149m, View view) {
        super(view);
        this.f10919m = c1149m;
    }

    @Override // k.AbstractView$OnTouchListenerC1165u0
    public final InterfaceC1076G b() {
        C1141i c1141i = this.f10919m.f10923g.f10940t;
        if (c1141i == null) {
            return null;
        }
        return c1141i.a();
    }

    @Override // k.AbstractView$OnTouchListenerC1165u0
    public final boolean c() {
        this.f10919m.f10923g.l();
        return true;
    }

    @Override // k.AbstractView$OnTouchListenerC1165u0
    public final boolean d() {
        C1151n c1151n = this.f10919m.f10923g;
        if (c1151n.f10942v != null) {
            return false;
        }
        c1151n.e();
        return true;
    }
}
