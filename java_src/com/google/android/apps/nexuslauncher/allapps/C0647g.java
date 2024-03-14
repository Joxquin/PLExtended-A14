package com.google.android.apps.nexuslauncher.allapps;

import android.app.blob.BlobStoreManager;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.logging.StatsLogManager;
import com.google.android.apps.nexuslauncher.logging.LatencyLoggingPackageId;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherLatencyEvent;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0647g {

    /* renamed from: a  reason: collision with root package name */
    public final BlobStoreManager f7045a;

    /* renamed from: b  reason: collision with root package name */
    public final StatsLogManager.StatsLatencyLogger f7046b;

    public C0647g(C0719y0 c0719y0) {
        this.f7045a = (BlobStoreManager) c0719y0.getSystemService(BlobStoreManager.class);
        this.f7046b = StatsLogManager.newInstance(c0719y0).latencyLogger();
    }

    public final void a(long j4, boolean z4) {
        StatsLogManager.StatsLatencyLogger withPackageId = this.f7046b.withInstanceId(new InstanceIdSequence().newInstanceId()).withLatency(j4).withPackageId(LatencyLoggingPackageId.BLOBSTORE.a());
        if (z4) {
            withPackageId.withType(StatsLogManager.StatsLatencyLogger.LatencyType.WARM);
        } else {
            withPackageId.withType(StatsLogManager.StatsLatencyLogger.LatencyType.FAIL).withSubEventType(0);
        }
        withPackageId.log(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_BLOBSTORE_FETCH_DURATION);
    }
}
