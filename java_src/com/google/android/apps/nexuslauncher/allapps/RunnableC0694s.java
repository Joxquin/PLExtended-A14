package com.google.android.apps.nexuslauncher.allapps;

import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.s  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0694s implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f7174d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ DeviceSearchInputView f7175e;

    public /* synthetic */ RunnableC0694s(DeviceSearchInputView deviceSearchInputView, int i4) {
        this.f7174d = i4;
        this.f7175e = deviceSearchInputView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7174d) {
            case 0:
                DeviceSearchInputView deviceSearchInputView = this.f7175e;
                deviceSearchInputView.f6527f.getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_SEARCHBOX_TAP);
                C0708v1.a(deviceSearchInputView.f6527f);
                deviceSearchInputView.a();
                return;
            default:
                this.f7175e.f6539r.setState(new int[0]);
                return;
        }
    }
}
