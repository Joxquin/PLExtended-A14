package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.Query;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.search.SearchAlgorithm;
import com.android.launcher3.search.SearchCallback;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.google.android.apps.nexuslauncher.logging.LatencyLoggingPackageId;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherLatencyEvent;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0687q implements SearchAlgorithm {

    /* renamed from: a  reason: collision with root package name */
    public final C0719y0 f7148a;

    /* renamed from: b  reason: collision with root package name */
    public final Handler f7149b = new Handler(Executors.MAIN_EXECUTOR.getLooper());

    /* renamed from: c  reason: collision with root package name */
    public final C0696s1 f7150c;

    /* renamed from: d  reason: collision with root package name */
    public C0625a1 f7151d;

    public C0687q(C0719y0 c0719y0) {
        this.f7148a = c0719y0;
        this.f7150c = c0719y0.f7283p;
        Log.d("DeviceSearchAlg", "search timeout = %d" + C0719y0.r());
    }

    @Override // com.android.launcher3.search.SearchAlgorithm
    public final void cancel(boolean z4) {
        C0625a1 c0625a1 = this.f7151d;
        if (c0625a1 != null) {
            c0625a1.f7001l = true;
            c0625a1.f6995f.removeCallbacksAndMessages(c0625a1);
            if (z4) {
                this.f7151d = null;
            }
        }
    }

    @Override // com.android.launcher3.search.SearchAlgorithm
    public final void doSearch(String str, SearchCallback searchCallback) {
        doSearch(str, null, searchCallback);
    }

    @Override // com.android.launcher3.search.SearchAlgorithm
    public final void doSearch(final String str, String[] strArr, SearchCallback searchCallback) {
        boolean z4;
        Q q4;
        List list;
        List list2;
        boolean z5;
        boolean z6;
        List emptyList = Collections.emptyList();
        List emptyList2 = Collections.emptyList();
        final C0719y0 c0719y0 = this.f7148a;
        boolean M3 = c0719y0.M();
        int length = str.length();
        C0696s1 c0696s1 = this.f7150c;
        boolean z7 = c0696s1.a() && length >= c0696s1.f7196s && length <= c0696s1.f7197t;
        Q q5 = c0719y0.f7268H;
        C0625a1 c0625a1 = this.f7151d;
        if (c0625a1 != null) {
            if (M3) {
                emptyList = c0625a1.f6999j;
            }
            List list3 = emptyList;
            if (z7) {
                emptyList2 = c0625a1.f7000k;
            }
            List list4 = emptyList2;
            if (c0625a1.mDeviceResultReceived) {
                z4 = true;
                q4 = q5;
            } else {
                long j4 = c0625a1.f7003n;
                q5.getClass();
                z4 = true;
                q4 = q5;
                q5.a(str, NexusLauncherLatencyEvent.LAUNCHER_LATENCY_ONDEVICE_CANCELLATION_DURATION, SystemClock.elapsedRealtime() - j4, LatencyLoggingPackageId.AIAI, false, 0, j4);
            }
            C0625a1 c0625a12 = this.f7151d;
            c0625a12.f7001l = z4;
            c0625a12.f6995f.removeCallbacksAndMessages(c0625a12);
            list = list3;
            list2 = list4;
        } else {
            z4 = true;
            q4 = q5;
            if (M3) {
                emptyList = c0719y0.f7284q.f7066d;
            }
            list = emptyList;
            list2 = emptyList2;
        }
        Bundle bundle = new Bundle();
        if (strArr != null) {
            bundle.putStringArray("suggestedQueries", strArr);
        }
        if (com.google.android.apps.nexuslauncher.c.f7334w.get()) {
            z5 = ((com.google.android.apps.nexuslauncher.u) com.google.android.apps.nexuslauncher.u.f7612m.get(c0719y0)).f7619i.f7505c;
        } else {
            z5 = z4 ? 1 : 0;
        }
        if (c0696s1.f7179b && z5) {
            bundle.putInt("entry", c0719y0.f7287t.id);
            bundle.putInt("timeout", C0719y0.r());
            int ordinal = c0719y0.f7287t.ordinal();
            if (ordinal != 0) {
                if (ordinal == z4 && c0719y0.f7293z) {
                    bundle.putBoolean("educard_dismissed", z4);
                }
            } else if (c0719y0.f7292y) {
                bundle.putBoolean("educard_dismissed", z4);
            }
        }
        final Query query = new Query(str, SystemClock.elapsedRealtime(), bundle);
        C0719y0 c0719y02 = this.f7148a;
        this.f7151d = new C0625a1(str, list, list2, searchCallback, c0719y02, c0719y02, query.getTimestampMillis());
        if (FeatureFlags.COLLECT_SEARCH_HISTORY.get()) {
            FileLog.d("DeviceSearchAlg", "starting search for query " + str + " at time " + query.getTimestampMillis());
        } else {
            Log.d("DeviceSearchAlg", "starting search for query " + str + " at time " + query.getTimestampMillis());
        }
        final C0625a1 c0625a13 = this.f7151d;
        if (Utilities.isRunningInTestHarness()) {
            z6 = z4 ? 1 : 0;
        } else {
            z6 = c0696s1.f7180c;
        }
        if (z6) {
            final Q q6 = q4;
            Executors.getPackageExecutor("com.google.android.googlequicksearchbox").execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.l
                @Override // java.lang.Runnable
                public final void run() {
                    C0625a1 c0625a14 = C0625a1.this;
                    Query query2 = query;
                    Q q7 = q6;
                    String str2 = str;
                    Executors.MAIN_EXECUTOR.execute(new RunnableC0671m(c0625a14, c0625a14.c(query2, false), 2));
                    long j5 = c0625a14.f7003n;
                    q7.getClass();
                    q7.a(str2, NexusLauncherLatencyEvent.LAUNCHER_LATENCY_FALLBACK_SEARCH_DURATION, SystemClock.elapsedRealtime() - j5, LatencyLoggingPackageId.LAUNCHER, false, 0, j5);
                }
            });
        } else {
            c0719y0.f7262B = query.getTimestampMillis();
            this.f7149b.postDelayed(new RunnableC0671m(c0625a13, query, 0), c0625a13, C0719y0.r());
            SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2 = c0719y0.f7277j;
            LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
            Objects.requireNonNull(c0625a13);
            sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.d(query, new RunnableC0671m(c0625a13, query, z4 ? 1 : 0), looperExecutor, new Consumer() { // from class: com.google.android.apps.nexuslauncher.allapps.n
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    C0625a1.this.f((List) obj);
                }
            });
        }
        if (c0719y0.M()) {
            final C0625a1 c0625a14 = this.f7151d;
            if (C0700t1.b()) {
                c0719y0.n(query, c0625a14);
            } else {
                C0719y0.g().execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.a0

                    /* renamed from: g  reason: collision with root package name */
                    public final /* synthetic */ boolean f6989g = false;

                    @Override // java.lang.Runnable
                    public final void run() {
                        C0719y0 c0719y03 = C0719y0.this;
                        c0719y03.f7285r.c(query, c0625a14, this.f6989g);
                    }
                });
            }
        }
        if (z7) {
            C0719y0.j().execute(new RunnableC0672m0(c0719y0, query, this.f7151d, 0));
            return;
        }
        int length2 = str.length();
        if (!c0696s1.a() || length2 <= c0696s1.f7197t) {
            z4 = false;
        }
        if (z4) {
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.o
                @Override // java.lang.Runnable
                public final void run() {
                    C0687q.this.f7151d.a(Collections.EMPTY_LIST);
                }
            });
        }
    }
}
