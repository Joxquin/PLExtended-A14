package x1;

import android.content.Context;
import kotlin.jvm.internal.h;
import t1.InterfaceC1405d;
import t1.InterfaceC1406e;
import w1.C1452d;
import w1.RunnableC1451c;
/* renamed from: x1.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1461e implements InterfaceC1406e {

    /* renamed from: d  reason: collision with root package name */
    public final Context f12837d;

    /* renamed from: e  reason: collision with root package name */
    public final C1452d f12838e;

    /* renamed from: f  reason: collision with root package name */
    public final C1462f f12839f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f12840g;

    /* renamed from: h  reason: collision with root package name */
    public final C1460d f12841h;

    public C1461e(Context context, C1452d rotationChangeProvider, C1462f unfoldTransitionProgressProvider) {
        h.e(context, "context");
        h.e(rotationChangeProvider, "rotationChangeProvider");
        h.e(unfoldTransitionProgressProvider, "unfoldTransitionProgressProvider");
        this.f12837d = context;
        this.f12838e = rotationChangeProvider;
        this.f12839f = new C1462f(unfoldTransitionProgressProvider);
        this.f12841h = new C1460d(this);
    }

    @Override // x1.InterfaceC1459c
    public final void addCallback(Object obj) {
        InterfaceC1405d listener = (InterfaceC1405d) obj;
        h.e(listener, "listener");
        this.f12839f.addCallback(listener);
    }

    @Override // t1.InterfaceC1406e
    public final void destroy() {
        C1452d c1452d = this.f12838e;
        c1452d.getClass();
        C1460d listener = this.f12841h;
        h.e(listener, "listener");
        c1452d.f12746f.post(new RunnableC1451c(c1452d, listener, 1));
        this.f12839f.destroy();
    }

    @Override // x1.InterfaceC1459c
    public final void removeCallback(Object obj) {
        InterfaceC1405d listener = (InterfaceC1405d) obj;
        h.e(listener, "listener");
        this.f12839f.removeCallback(listener);
    }
}
