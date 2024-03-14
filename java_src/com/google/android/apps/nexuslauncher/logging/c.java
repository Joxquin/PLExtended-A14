package com.google.android.apps.nexuslauncher.logging;

import android.content.Context;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.logging.StartupLatencyLogger;
import com.android.launcher3.logging.StatsLogManager;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class c extends StartupLatencyLogger {

    /* renamed from: a  reason: collision with root package name */
    public final e3.c f7476a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(final Context context, StatsLogManager.StatsLatencyLogger.LatencyType latencyType) {
        super(latencyType);
        h.e(context, "context");
        e3.c a4 = kotlin.a.a(new m3.a() { // from class: com.google.android.apps.nexuslauncher.logging.NexusLauncherStartupLatencyLogger$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // m3.a
            public final Object invoke() {
                return StatsLogManager.newInstance(context).latencyLogger();
            }
        });
        this.f7476a = a4;
    }

    @Override // com.android.launcher3.logging.StartupLatencyLogger
    public final StartupLatencyLogger log() {
        StatsLogManager.LauncherLatencyEvent[] values;
        InstanceId newInstanceId = new InstanceIdSequence().newInstanceId();
        for (StatsLogManager.LauncherLatencyEvent launcherLatencyEvent : StatsLogManager.LauncherLatencyEvent.values()) {
            long j4 = getStartTimeByEvent().get(launcherLatencyEvent.getId());
            long j5 = getEndTimeByEvent().get(launcherLatencyEvent.getId());
            long j6 = j5 - j4;
            if (j4 != 0 && j5 != 0 && com.google.android.apps.nexuslauncher.c.f7319h.get()) {
                ((StatsLogManager.StatsLatencyLogger) this.f7476a.getValue()).withType(getLatencyType()).withInstanceId(newInstanceId).withLatency(j6).withPackageId(LatencyLoggingPackageId.LAUNCHER.a()).withCardinality(getCardinality()).log(launcherLatencyEvent);
            }
        }
        return this;
    }
}
