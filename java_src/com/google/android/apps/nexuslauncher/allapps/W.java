package com.google.android.apps.nexuslauncher.allapps;

import android.util.Log;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.util.Executors;
import com.google.android.apps.nexuslauncher.logging.LatencyLoggingPackageId;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherLatencyEvent;
/* loaded from: classes.dex */
public final class W {

    /* renamed from: a  reason: collision with root package name */
    public final StatsLogManager.StatsLatencyLogger f6960a;

    /* renamed from: b  reason: collision with root package name */
    public final C0719y0 f6961b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f6962c = false;

    /* renamed from: d  reason: collision with root package name */
    public int f6963d = 0;

    public W(C0719y0 c0719y0) {
        this.f6960a = StatsLogManager.newInstance(c0719y0.getApplicationContext()).latencyLogger();
        this.f6961b = c0719y0;
    }

    public final StatsLogManager.StatsLatencyLogger.LatencyType a(long j4, long j5) {
        if (this.f6962c) {
            return StatsLogManager.StatsLatencyLogger.LatencyType.HOT;
        }
        boolean z4 = this.f6961b.f7291x;
        if (z4) {
            Log.d("OneSearchLatencyLogger", "User visible cold call for web results, startTime=" + j5 + ", duration=" + j4);
        }
        return z4 ? StatsLogManager.StatsLatencyLogger.LatencyType.COLD_USERWAITING : StatsLogManager.StatsLatencyLogger.LatencyType.COLD;
    }

    public final void b(NexusLauncherLatencyEvent nexusLauncherLatencyEvent, long j4, int i4) {
        this.f6960a.withInstanceId(new InstanceIdSequence().newInstanceId()).withLatency(j4).withPackageId(LatencyLoggingPackageId.AGA.a()).withType(StatsLogManager.StatsLatencyLogger.LatencyType.FAIL).withSubEventType(i4).withQueryLength(this.f6963d).log(nexusLauncherLatencyEvent);
    }

    public final void c(NexusLauncherLatencyEvent nexusLauncherLatencyEvent, long j4, InstanceId instanceId, long j5) {
        this.f6960a.withInstanceId(instanceId).withLatency(j4).withPackageId(LatencyLoggingPackageId.AGA.a()).withType(a(j4, j5)).withQueryLength(this.f6963d).log(nexusLauncherLatencyEvent);
    }

    public final void d(NexusLauncherLatencyEvent nexusLauncherLatencyEvent, long j4, StatsLogManager.StatsLatencyLogger.LatencyType latencyType) {
        this.f6960a.withInstanceId(new InstanceIdSequence().newInstanceId()).withLatency(j4).withPackageId(LatencyLoggingPackageId.GMS.a()).withType(latencyType).withQueryLength(this.f6963d).log(nexusLauncherLatencyEvent);
    }

    public final void e(NexusLauncherLatencyEvent nexusLauncherLatencyEvent, long j4, long j5) {
        InstanceId newInstanceId = new InstanceIdSequence().newInstanceId();
        this.f6960a.withInstanceId(newInstanceId).withLatency(j4).withPackageId(LatencyLoggingPackageId.AGA.a()).withType(a(j4, j5)).withQueryLength(this.f6963d).log(nexusLauncherLatencyEvent);
    }

    public final void f(final long j4, final StatsLogManager.StatsLatencyLogger.LatencyType latencyType) {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable(this) { // from class: com.google.android.apps.nexuslauncher.allapps.V

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ W f6950d;

            /* renamed from: g  reason: collision with root package name */
            public final /* synthetic */ int f6953g;

            /* renamed from: h  reason: collision with root package name */
            public final /* synthetic */ NexusLauncherLatencyEvent f6954h;

            {
                NexusLauncherLatencyEvent nexusLauncherLatencyEvent = NexusLauncherLatencyEvent.LAUNCHER_LATENCY_QS_TILE_DURATION;
                this.f6950d = this;
                this.f6953g = 0;
                this.f6954h = nexusLauncherLatencyEvent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                W w4 = this.f6950d;
                long j5 = j4;
                StatsLogManager.StatsLatencyLogger.LatencyType latencyType2 = latencyType;
                int i4 = this.f6953g;
                NexusLauncherLatencyEvent nexusLauncherLatencyEvent = this.f6954h;
                w4.getClass();
                w4.f6960a.withInstanceId(new InstanceIdSequence().newInstanceId()).withLatency(j5).withPackageId(LatencyLoggingPackageId.SYS_UI.a()).withType(latencyType2).withQueryLength(w4.f6963d).withSubEventType(i4).log(nexusLauncherLatencyEvent);
            }
        });
    }
}
