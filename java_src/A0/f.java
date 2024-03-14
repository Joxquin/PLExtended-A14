package A0;

import android.content.pm.LauncherApps;
import android.provider.Settings;
/* loaded from: classes.dex */
public final class f implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ g f11d;

    public f(g gVar) {
        this.f11d = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z4 = Settings.Global.getInt(this.f11d.f13h.getContentResolver(), "view_capture_enabled", 0) != 0;
        x.f72g.execute(new e(this.f11d, z4));
        LauncherApps launcherApps = (LauncherApps) this.f11d.f13h.getSystemService(LauncherApps.class);
        if (z4) {
            if (launcherApps != null) {
                launcherApps.registerDumpCallback(this.f11d.f14i);
            }
        } else if (launcherApps != null) {
            launcherApps.unRegisterDumpCallback(this.f11d.f14i);
        }
    }
}
