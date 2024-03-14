package com.google.android.apps.nexuslauncher.allapps;

import android.net.Uri;
import androidx.slice.Slice;
import androidx.slice.widget.SliceView;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logger.LauncherAtom$Slice;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.views.ActivityContext;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.p0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0684p0 implements androidx.lifecycle.z {

    /* renamed from: d  reason: collision with root package name */
    public final Alarm f7140d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Uri f7141e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ androidx.lifecycle.z f7142f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ C0719y0 f7143g;

    public C0684p0(C0719y0 c0719y0, final Uri uri, final Q1 q12, SliceView sliceView) {
        this.f7143g = c0719y0;
        this.f7141e = uri;
        this.f7142f = sliceView;
        Alarm alarm = new Alarm();
        this.f7140d = alarm;
        alarm.setOnAlarmListener(new OnAlarmListener() { // from class: com.google.android.apps.nexuslauncher.allapps.o0
            @Override // com.android.launcher3.OnAlarmListener
            public final void onAlarm(Alarm alarm2) {
                C0684p0 c0684p0 = C0684p0.this;
                c0684p0.getClass();
                boolean z4 = FeatureFlags.ENABLE_DEVICE_SEARCH_PERFORMANCE_LOGGING.get();
                Uri uri2 = uri;
                if (z4) {
                    StatsLogManager.StatsLogger logger = ((ActivityContext) c0684p0.f7143g.f7271d).getStatsLogManager().logger();
                    LauncherAtom$Slice.Builder newBuilder = LauncherAtom$Slice.newBuilder();
                    newBuilder.setUri(uri2.toString());
                    logger.withSlice((LauncherAtom$Slice) newBuilder.build()).log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_SLICE_FETCH_TIMEDOUT);
                }
                alarm2.cancelAlarm();
                q12.accept(uri2);
            }
        });
        alarm.setAlarm(65L);
    }

    @Override // androidx.lifecycle.z
    public final void i(Object obj) {
        Slice slice = (Slice) obj;
        if (slice == null || slice.b().isEmpty()) {
            return;
        }
        Alarm alarm = this.f7140d;
        boolean alarmPending = alarm.alarmPending();
        Uri uri = this.f7141e;
        C0719y0 c0719y0 = this.f7143g;
        if (alarmPending) {
            if (FeatureFlags.ENABLE_DEVICE_SEARCH_PERFORMANCE_LOGGING.get()) {
                StatsLogManager.StatsLogger logger = ((ActivityContext) c0719y0.f7271d).getStatsLogManager().logger();
                LauncherAtom$Slice.Builder newBuilder = LauncherAtom$Slice.newBuilder();
                newBuilder.setUri(uri.toString());
                logger.withSlice((LauncherAtom$Slice) newBuilder.build()).log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_SLICE_FETCH_SUCCEEDED);
            }
            alarm.cancelAlarm();
        }
        if (c0719y0.f7272e.get(uri) != null) {
            ((ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0) c0719y0.f7272e.get(uri)).f7252i = slice;
        }
        this.f7142f.i(slice);
    }
}
