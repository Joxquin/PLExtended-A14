package com.google.android.apps.nexuslauncher;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Workspace;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.Themes;
import com.android.systemui.shared.R;
import com.google.android.libraries.launcherclient.ILauncherOverlay;
import h2.C0968a;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import q1.InterfaceC1361a;
import q1.InterfaceC1362b;
import q1.InterfaceC1363c;
import q1.InterfaceC1364d;
/* loaded from: classes.dex */
public final class j implements InterfaceC1362b, h2.j, SharedPreferences.OnSharedPreferenceChangeListener, InterfaceC1364d, DeviceProfile.OnDeviceProfileChangeListener {

    /* renamed from: k  reason: collision with root package name */
    public static final i f7356k;

    /* renamed from: l  reason: collision with root package name */
    public static final i f7357l;

    /* renamed from: d  reason: collision with root package name */
    public final Launcher f7358d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC1361a f7359e;

    /* renamed from: f  reason: collision with root package name */
    public final h2.h f7360f;

    /* renamed from: g  reason: collision with root package name */
    public final Bundle f7361g;

    /* renamed from: h  reason: collision with root package name */
    public InterfaceC1363c f7362h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f7363i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f7364j;

    static {
        i iVar = new i();
        f7356k = iVar;
        f7357l = iVar;
    }

    public j(Launcher launcher, InterfaceC1361a interfaceC1361a) {
        Bundle bundle = new Bundle();
        this.f7361g = bundle;
        this.f7363i = false;
        this.f7358d = launcher;
        this.f7359e = interfaceC1361a;
        SharedPreferences sharedPrefs = ((Launcher) interfaceC1361a).getSharedPrefs();
        sharedPrefs.registerOnSharedPreferenceChangeListener(this);
        h2.h hVar = new h2.h(launcher, this, (h2.f) f7357l.apply(sharedPrefs), Executors.UI_HELPER_EXECUTOR.getLooper());
        this.f7360f = hVar;
        bundle.putInt("system_ui_visibility", launcher.getSystemUiController().getBaseSysuiVisibility());
        int attrColor = GraphicsUtils.getAttrColor(R.attr.allAppsScrimColor, launcher);
        bundle.putInt("background_color_hint", attrColor);
        bundle.putInt("background_secondary_color_hint", attrColor);
        bundle.putBoolean("is_background_dark", Themes.getAttrBoolean(R.attr.isMainColorDark, launcher));
        launcher.addOnDeviceProfileChangeListener(this);
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        boolean z4 = deviceProfile.isTaskbarPresent && deviceProfile.isGestureMode;
        this.f7364j = z4;
        bundle.putInt("override_bottom_inset", z4 ? 0 : -1);
        hVar.f(bundle);
    }

    @Override // h2.j
    public final void b(int i4) {
        LauncherPrefs.getDevicePrefs(this.f7358d).edit().putInt("pref_persistent_flags", i4 & 24).apply();
    }

    @Override // q1.InterfaceC1362b
    public final void c(float f4) {
        h2.h hVar = this.f7360f;
        hVar.f9514d.c("updateMove", 1, f4);
        ILauncherOverlay iLauncherOverlay = hVar.f9519i;
        if (iLauncherOverlay != null) {
            try {
                iLauncherOverlay.onScroll(f4);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // q1.InterfaceC1362b
    public final void d(Workspace workspace) {
        this.f7362h = workspace;
    }

    @Override // q1.InterfaceC1364d
    public final void dump(String str, PrintWriter printWriter) {
        h2.h hVar = this.f7360f;
        hVar.getClass();
        printWriter.println(String.valueOf(str).concat("LauncherClient"));
        String concat = String.valueOf(str).concat("  ");
        boolean z4 = hVar.f9519i != null;
        StringBuilder sb = new StringBuilder(String.valueOf(concat).length() + 18);
        sb.append(concat);
        sb.append("isConnected: ");
        sb.append(z4);
        printWriter.println(sb.toString());
        boolean z5 = hVar.f9516f.f9533i;
        StringBuilder sb2 = new StringBuilder(String.valueOf(concat).length() + 18);
        sb2.append(concat);
        sb2.append("act.isBound: ");
        sb2.append(z5);
        printWriter.println(sb2.toString());
        boolean z6 = hVar.f9517g.f9533i;
        StringBuilder sb3 = new StringBuilder(String.valueOf(concat).length() + 18);
        sb3.append(concat);
        sb3.append("app.isBound: ");
        sb3.append(z6);
        printWriter.println(sb3.toString());
        int i4 = h2.h.f9510q;
        StringBuilder sb4 = new StringBuilder(String.valueOf(concat).length() + 27);
        sb4.append(concat);
        sb4.append("serviceVersion: ");
        sb4.append(i4);
        printWriter.println(sb4.toString());
        StringBuilder sb5 = new StringBuilder(String.valueOf(concat).length() + 17);
        sb5.append(concat);
        sb5.append("clientVersion: 20");
        printWriter.println(sb5.toString());
        hVar.f9523m.getClass();
        StringBuilder sb6 = new StringBuilder(String.valueOf(concat).length() + 29);
        sb6.append(concat);
        sb6.append("isGoogleOverlayDefault: false");
        printWriter.println(sb6.toString());
        hVar.f9523m.getClass();
        StringBuilder sb7 = new StringBuilder(String.valueOf(concat).length() + 27 + 0);
        sb7.append(concat);
        sb7.append("partnerOverlayProductName: ");
        printWriter.println(sb7.toString());
        hVar.f9523m.getClass();
        StringBuilder sb8 = new StringBuilder(String.valueOf(concat).length() + 34);
        sb8.append(concat);
        sb8.append("isPartnerOverlayIconPresent: false");
        printWriter.println(sb8.toString());
        int i5 = hVar.f9520j;
        StringBuilder sb9 = new StringBuilder(String.valueOf(concat).length() + 27);
        sb9.append(concat);
        sb9.append("mActivityState: ");
        sb9.append(i5);
        printWriter.println(sb9.toString());
        int i6 = hVar.f9522l;
        StringBuilder sb10 = new StringBuilder(String.valueOf(concat).length() + 27);
        sb10.append(concat);
        sb10.append("mServiceStatus: ");
        sb10.append(i6);
        printWriter.println(sb10.toString());
        int i7 = hVar.f9523m.f9503a;
        StringBuilder sb11 = new StringBuilder(String.valueOf(concat).length() + 45);
        sb11.append(concat);
        sb11.append("mCurrentServiceConnectionOptions: ");
        sb11.append(i7);
        printWriter.println(sb11.toString());
        hVar.f9514d.d(concat, printWriter);
        hVar.f9515e.d(concat, printWriter);
    }

    @Override // q1.InterfaceC1364d
    public final void e() {
        h2.h hVar = this.f7360f;
        h2.c cVar = hVar.f9514d;
        cVar.getClass();
        cVar.c("showOverlay", 3, 0.0f);
        ILauncherOverlay iLauncherOverlay = hVar.f9519i;
        if (iLauncherOverlay != null) {
            try {
                iLauncherOverlay.openOverlay(1);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // q1.InterfaceC1362b
    public final void f() {
        h2.h hVar = this.f7360f;
        hVar.f9514d.a("startMove");
        ILauncherOverlay iLauncherOverlay = hVar.f9519i;
        if (iLauncherOverlay != null) {
            try {
                iLauncherOverlay.startScroll();
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // h2.i
    public final void g(boolean z4) {
        if (z4 != this.f7363i) {
            this.f7363i = z4;
            InterfaceC1361a interfaceC1361a = this.f7359e;
            if (!z4) {
                this = null;
            }
            ((Launcher) interfaceC1361a).setLauncherOverlay(this);
        }
    }

    @Override // q1.InterfaceC1364d
    public final void h() {
        h2.h hVar = this.f7360f;
        hVar.f9514d.a("reattachOverlay");
        if (hVar.f9525o == null || h2.h.f9510q < 7) {
            return;
        }
        hVar.a();
    }

    @Override // q1.InterfaceC1364d
    public final void k(boolean z4) {
        h2.h hVar = this.f7360f;
        h2.c cVar = hVar.f9514d;
        cVar.getClass();
        cVar.c("hideOverlay", z4 ? 3 : 4, 0.0f);
        ILauncherOverlay iLauncherOverlay = hVar.f9519i;
        if (iLauncherOverlay != null) {
            try {
                iLauncherOverlay.closeOverlay(z4 ? 1 : 0);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // q1.InterfaceC1362b
    public final void l() {
        h2.h hVar = this.f7360f;
        hVar.f9514d.a("endMove");
        ILauncherOverlay iLauncherOverlay = hVar.f9519i;
        if (iLauncherOverlay != null) {
            try {
                iLauncherOverlay.endScroll();
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // q1.InterfaceC1364d
    public final void n(int i4) {
        h2.h hVar = this.f7360f;
        hVar.getClass();
        if (i4 <= 0 || i4 > 2047) {
            throw new IllegalArgumentException("Invalid duration");
        }
        int i5 = (i4 << 2) | 1;
        hVar.f9514d.b("hideOverlay", i4);
        ILauncherOverlay iLauncherOverlay = hVar.f9519i;
        if (iLauncherOverlay != null) {
            try {
                iLauncherOverlay.closeOverlay(i5);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // q1.InterfaceC1364d, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // q1.InterfaceC1364d, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f7358d.removeOnDeviceProfileChangeListener(this);
        h2.h hVar = this.f7360f;
        Activity activity2 = hVar.f9511a;
        boolean z4 = !activity2.isChangingConfigurations();
        if (!hVar.f9521k) {
            activity2.unregisterReceiver(hVar.f9518h);
        }
        hVar.f9521k = true;
        hVar.f9516f.b();
        h2.g gVar = hVar.f9526p;
        if (gVar != null) {
            gVar.f9505e = null;
            gVar.f9506f = null;
            gVar.f9508h = null;
            hVar.f9526p = null;
        }
        C0968a c0968a = hVar.f9517g;
        WeakReference weakReference = c0968a.f9490k;
        h2.h hVar2 = weakReference != null ? (h2.h) weakReference.get() : null;
        if (hVar2 != null && hVar2.equals(hVar)) {
            c0968a.f9490k = null;
            if (z4) {
                c0968a.b();
                if (C0968a.f9488m == c0968a) {
                    C0968a.f9488m = null;
                }
            }
        }
        ((Launcher) this.f7359e).getSharedPrefs().unregisterOnSharedPreferenceChangeListener(this);
    }

    @Override // q1.InterfaceC1364d, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        h2.h hVar = this.f7360f;
        if (hVar.f9521k) {
            return;
        }
        int i4 = hVar.f9520j & (-3);
        hVar.f9520j = i4;
        ILauncherOverlay iLauncherOverlay = hVar.f9519i;
        if (iLauncherOverlay != null && hVar.f9525o != null) {
            try {
                if (h2.h.f9510q < 4) {
                    iLauncherOverlay.onPause();
                } else {
                    iLauncherOverlay.setActivityState(i4);
                }
            } catch (RemoteException unused) {
            }
        }
        hVar.f9514d.b("stateChanged ", hVar.f9520j);
    }

    @Override // q1.InterfaceC1364d, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        h2.h hVar = this.f7360f;
        if (hVar.f9521k) {
            return;
        }
        int i4 = hVar.f9520j | 2;
        hVar.f9520j = i4;
        ILauncherOverlay iLauncherOverlay = hVar.f9519i;
        if (iLauncherOverlay != null && hVar.f9525o != null) {
            try {
                if (h2.h.f9510q < 4) {
                    iLauncherOverlay.onResume();
                } else {
                    iLauncherOverlay.setActivityState(i4);
                }
            } catch (RemoteException unused) {
            }
        }
        hVar.f9514d.b("stateChanged ", hVar.f9520j);
    }

    @Override // q1.InterfaceC1364d, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        h2.h hVar = this.f7360f;
        if (hVar.f9521k) {
            return;
        }
        hVar.f9517g.f9491l = false;
        hVar.d();
        int i4 = hVar.f9520j | 1;
        hVar.f9520j = i4;
        ILauncherOverlay iLauncherOverlay = hVar.f9519i;
        if (iLauncherOverlay != null && hVar.f9525o != null) {
            try {
                iLauncherOverlay.setActivityState(i4);
            } catch (RemoteException unused) {
            }
        }
        hVar.f9514d.b("stateChanged ", hVar.f9520j);
    }

    @Override // q1.InterfaceC1364d, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        h2.h hVar = this.f7360f;
        if (hVar.f9521k) {
            return;
        }
        C0968a c0968a = hVar.f9517g;
        c0968a.f9491l = true;
        if (c0968a.f9489j == null) {
            c0968a.b();
        }
        hVar.f9516f.b();
        int i4 = hVar.f9520j & (-2);
        hVar.f9520j = i4;
        ILauncherOverlay iLauncherOverlay = hVar.f9519i;
        if (iLauncherOverlay != null && hVar.f9525o != null) {
            try {
                iLauncherOverlay.setActivityState(i4);
            } catch (RemoteException unused) {
            }
        }
        hVar.f9514d.b("stateChanged ", hVar.f9520j);
    }

    @Override // q1.InterfaceC1364d
    public final void onAttachedToWindow() {
        h2.h hVar = this.f7360f;
        if (hVar.f9521k) {
            return;
        }
        hVar.f9514d.a("attachedToWindow");
        hVar.g(hVar.f9511a.getWindow().getAttributes());
    }

    @Override // q1.InterfaceC1364d
    public final void onDetachedFromWindow() {
        h2.h hVar = this.f7360f;
        if (hVar.f9521k) {
            return;
        }
        hVar.f9514d.a("detachedFromWindow");
        hVar.g(null);
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        boolean z4 = this.f7364j;
        boolean z5 = deviceProfile.isTaskbarPresent;
        boolean z6 = true;
        if (z4 != (z5 && deviceProfile.isGestureMode)) {
            if (!z5 || !deviceProfile.isGestureMode) {
                z6 = false;
            }
            this.f7364j = z6;
            this.f7361g.putInt("override_bottom_inset", z6 ? 0 : -1);
            this.f7360f.f(this.f7361g);
        }
    }

    @Override // h2.i
    public final void onOverlayScrollChanged(float f4) {
        InterfaceC1363c interfaceC1363c = this.f7362h;
        if (interfaceC1363c != null) {
            interfaceC1363c.onOverlayScrollChanged(f4);
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("pref_enable_minus_one".equals(str)) {
            h2.h hVar = this.f7360f;
            h2.f fVar = (h2.f) f7357l.apply(sharedPreferences);
            if (hVar.f9523m.f9503a != fVar.f9503a) {
                hVar.f9523m = fVar;
                if (hVar.f9525o != null) {
                    hVar.a();
                }
                int i4 = hVar.f9523m.f9503a;
                StringBuilder sb = new StringBuilder(28);
                sb.append("setClientOptions ");
                sb.append(i4);
                hVar.f9514d.a(sb.toString());
            }
        }
    }

    @Override // q1.InterfaceC1364d
    public final boolean startSearch(byte[] bArr, Bundle bundle) {
        ILauncherOverlay iLauncherOverlay;
        h2.h hVar = this.f7360f;
        hVar.f9514d.a("startSearch");
        if (h2.h.f9510q >= 6 && (iLauncherOverlay = hVar.f9519i) != null) {
            try {
                return iLauncherOverlay.startSearch(bArr, bundle);
            } catch (RemoteException e4) {
                Log.e("DrawerOverlayClient", "Error starting session for search", e4);
            }
        }
        return false;
    }
}
