package w1;

import android.os.RemoteException;
import java.util.ArrayList;
import kotlin.jvm.internal.h;
/* renamed from: w1.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1451c implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f12741d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C1452d f12742e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ InterfaceC1450b f12743f;

    public /* synthetic */ RunnableC1451c(C1452d c1452d, InterfaceC1450b interfaceC1450b, int i4) {
        this.f12741d = i4;
        this.f12742e = c1452d;
        this.f12743f = interfaceC1450b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f12741d) {
            case 0:
                if (((ArrayList) this.f12742e.f12747g).isEmpty()) {
                    C1452d c1452d = this.f12742e;
                    c1452d.getClass();
                    try {
                        c1452d.f12744d.registerDisplayListener(c1452d.f12748h, c1452d.f12746f);
                    } catch (RemoteException e4) {
                        RuntimeException rethrowFromSystemServer = e4.rethrowFromSystemServer();
                        h.d(rethrowFromSystemServer, "e.rethrowFromSystemServer()");
                        throw rethrowFromSystemServer;
                    }
                }
                ((ArrayList) this.f12742e.f12747g).add(this.f12743f);
                return;
            default:
                ((ArrayList) this.f12742e.f12747g).remove(this.f12743f);
                if (((ArrayList) this.f12742e.f12747g).isEmpty()) {
                    C1452d c1452d2 = this.f12742e;
                    c1452d2.getClass();
                    try {
                        c1452d2.f12744d.unregisterDisplayListener(c1452d2.f12748h);
                        this.f12742e.f12749i = null;
                        return;
                    } catch (RemoteException e5) {
                        RuntimeException rethrowFromSystemServer2 = e5.rethrowFromSystemServer();
                        h.d(rethrowFromSystemServer2, "e.rethrowFromSystemServer()");
                        throw rethrowFromSystemServer2;
                    }
                }
                return;
        }
    }
}
