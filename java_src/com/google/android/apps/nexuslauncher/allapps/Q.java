package com.google.android.apps.nexuslauncher.allapps;

import android.util.Log;
import com.android.launcher3.logging.StatsLogManager;
import com.google.android.apps.nexuslauncher.logging.LatencyLoggingPackageId;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherLatencyEvent;
/* loaded from: classes.dex */
public final class Q {

    /* renamed from: a  reason: collision with root package name */
    public final StatsLogManager.StatsLatencyLogger f6690a;

    public Q(StatsLogManager.StatsLatencyLogger statsLatencyLogger) {
        this.f6690a = statsLatencyLogger;
    }

    public final void a(String str, NexusLauncherLatencyEvent nexusLauncherLatencyEvent, long j4, LatencyLoggingPackageId latencyLoggingPackageId, boolean z4, int i4, long j5) {
        StatsLogManager.StatsLatencyLogger.LatencyType latencyType = z4 ? StatsLogManager.StatsLatencyLogger.LatencyType.TIMEOUT : StatsLogManager.StatsLatencyLogger.LatencyType.HOT;
        this.f6690a.withLatency(j4).withPackageId(latencyLoggingPackageId.a()).withType(latencyType).withQueryLength(str.length()).withSubEventType(i4).log(nexusLauncherLatencyEvent);
        Log.d("LatencyLogHelper", nexusLauncherLatencyEvent.name() + " took " + j4 + " ms." + latencyType.name() + " query=" + str + "(" + j5 + ")");
    }
}
