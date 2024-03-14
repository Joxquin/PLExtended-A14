package com.google.android.apps.nexuslauncher.logging;

import android.content.Context;
import android.os.SystemClock;
import android.util.Log;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f7469d;

    /* renamed from: a  reason: collision with root package name */
    public final StatsLogManager.StatsLatencyLogger f7470a;

    /* renamed from: b  reason: collision with root package name */
    public long f7471b;

    /* renamed from: c  reason: collision with root package name */
    public InstanceId f7472c;

    static {
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        f7469d = Log.isLoggable("ImeLatencyLogging", 2);
    }

    public a(Context context) {
        this.f7470a = StatsLogManager.newInstance(context).latencyLogger();
    }

    public final void a(NexusLauncherLatencyEvent nexusLauncherLatencyEvent, long j4, StatsLogManager.StatsLatencyLogger.LatencyType latencyType) {
        if (this.f7472c == null) {
            Log.e("ImeLatencyLogger", "ImeLatencyLogger cannot log " + nexusLauncherLatencyEvent.name() + " when instanceId is null");
            return;
        }
        this.f7470a.withLatency(j4).withInstanceId(this.f7472c).withPackageId(LatencyLoggingPackageId.IME.a()).withType(latencyType).log(nexusLauncherLatencyEvent);
        if (f7469d) {
            Log.d("ImeLatencyLogging", nexusLauncherLatencyEvent.name() + " took " + j4 + " ms.");
        }
    }

    public final void b(NexusLauncherLatencyEvent nexusLauncherLatencyEvent, StatsLogManager.StatsLatencyLogger.LatencyType latencyType) {
        a(nexusLauncherLatencyEvent, SystemClock.elapsedRealtime() - this.f7471b, latencyType);
    }
}
