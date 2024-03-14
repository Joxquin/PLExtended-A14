package h2;

import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.libraries.launcherclient.ILauncherOverlay;
import java.lang.ref.WeakReference;
/* renamed from: h2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0968a extends m {

    /* renamed from: m  reason: collision with root package name */
    public static C0968a f9488m;

    /* renamed from: j  reason: collision with root package name */
    public ILauncherOverlay f9489j;

    /* renamed from: k  reason: collision with root package name */
    public WeakReference f9490k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f9491l;

    public C0968a(Context context, Handler handler) {
        super(context, 33, handler);
    }

    public final void c(ILauncherOverlay iLauncherOverlay) {
        this.f9489j = iLauncherOverlay;
        WeakReference weakReference = this.f9490k;
        h hVar = weakReference != null ? (h) weakReference.get() : null;
        if (hVar != null) {
            ILauncherOverlay iLauncherOverlay2 = this.f9489j;
            boolean z4 = iLauncherOverlay2 != null;
            c cVar = hVar.f9515e;
            cVar.getClass();
            cVar.c("Connected", z4 ? 3 : 4, 0.0f);
            hVar.f9519i = iLauncherOverlay2;
            if (iLauncherOverlay2 == null) {
                hVar.f9512b.g(false);
                hVar.f9522l = 0;
            } else if (hVar.f9525o != null) {
                hVar.a();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onNullBinding(ComponentName componentName) {
        c(null);
        b();
    }

    @Override // h2.m, android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ILauncherOverlay proxy;
        int i4 = ILauncherOverlay.Stub.f7682d;
        if (iBinder == null) {
            proxy = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
            proxy = queryLocalInterface instanceof ILauncherOverlay ? (ILauncherOverlay) queryLocalInterface : new ILauncherOverlay.Stub.Proxy(iBinder);
        }
        c(proxy);
    }

    @Override // h2.m, android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        c(null);
        if (this.f9491l && this.f9489j == null) {
            b();
        }
    }
}
