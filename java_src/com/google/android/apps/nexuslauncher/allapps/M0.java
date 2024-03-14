package com.google.android.apps.nexuslauncher.allapps;

import android.os.SystemClock;
import android.util.Log;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherLatencyEvent;
import f2.C0913p;
/* loaded from: classes.dex */
public final class M0 implements R2.i {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6624a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ long f6625b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ T0 f6626c;

    public /* synthetic */ M0(T0 t02, long j4, int i4) {
        this.f6624a = i4;
        this.f6626c = t02;
        this.f6625b = j4;
    }

    @Override // R2.i
    public final void a(Throwable th) {
        int i4 = this.f6624a;
        long j4 = this.f6625b;
        T0 t02 = this.f6626c;
        switch (i4) {
            case 0:
                Log.e("OneSearchSuggestProvider", "Error getting ReportSuggestionResponse from AGA", th);
                t02.f6875h.b(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_REPORT_SUGGESTION_DURATION, SystemClock.elapsedRealtime() - j4, T0.a(t02, th));
                return;
            default:
                Log.e("OneSearchSuggestProvider", "Error getting DeleteSuggestionResponse from AGA", th);
                t02.f6875h.b(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_DELETE_SUGGESTION_DURATION, SystemClock.elapsedRealtime() - j4, T0.a(t02, th));
                return;
        }
    }

    @Override // R2.i
    public final void b(Object obj) {
        int i4 = this.f6624a;
        T0 t02 = this.f6626c;
        switch (i4) {
            case 0:
                f2.B0 b02 = (f2.B0) obj;
                W w4 = t02.f6875h;
                NexusLauncherLatencyEvent nexusLauncherLatencyEvent = NexusLauncherLatencyEvent.LAUNCHER_LATENCY_REPORT_SUGGESTION_DURATION;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j4 = this.f6625b;
                w4.e(nexusLauncherLatencyEvent, elapsedRealtime - j4, j4);
                return;
            default:
                C0913p c0913p = (C0913p) obj;
                W w5 = t02.f6875h;
                NexusLauncherLatencyEvent nexusLauncherLatencyEvent2 = NexusLauncherLatencyEvent.LAUNCHER_LATENCY_DELETE_SUGGESTION_DURATION;
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                long j5 = this.f6625b;
                w5.e(nexusLauncherLatencyEvent2, elapsedRealtime2 - j5, j5);
                ActivityAllAppsContainerView appsView = t02.f6871d.getAppsView();
                if (appsView == null || appsView.getSearchUiManager() == null) {
                    return;
                }
                appsView.getSearchUiManager().refreshResults();
                return;
        }
    }
}
