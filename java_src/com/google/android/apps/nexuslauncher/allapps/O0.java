package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.Query;
import android.os.SystemClock;
import android.util.Log;
import com.android.launcher3.util.Executors;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherLatencyEvent;
import f2.C0858A;
import java.util.Collections;
/* loaded from: classes.dex */
public class O0 implements R2.i {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6653a = 0;

    /* renamed from: b  reason: collision with root package name */
    public final long f6654b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ T0 f6655c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f6656d;

    /* renamed from: e  reason: collision with root package name */
    public final Object f6657e;

    public /* synthetic */ O0(T0 t02, String str, long j4, NexusLauncherLatencyEvent nexusLauncherLatencyEvent, int i4) {
        this(t02, str, j4, nexusLauncherLatencyEvent);
    }

    @Override // R2.i
    public final void a(Throwable th) {
        int i4 = this.f6653a;
        Object obj = this.f6657e;
        long j4 = this.f6654b;
        T0 t02 = this.f6655c;
        switch (i4) {
            case 0:
                Log.e("OneSearchSuggestProvider", "Unable to get suggestions from AGA", th);
                t02.f6875h.b(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_SUGGEST_TOTAL_DURATION, SystemClock.elapsedRealtime() - j4, T0.a(t02, th));
                final AbstractC0683p abstractC0683p = (AbstractC0683p) obj;
                Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.L0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC0683p.this.b(Collections.EMPTY_LIST);
                    }
                });
                return;
            default:
                Log.e("OneSearchSuggestProvider", "Error getting " + ((String) this.f6656d) + " from AGA", th);
                t02.f6875h.b((NexusLauncherLatencyEvent) obj, SystemClock.elapsedRealtime() - j4, T0.a(t02, th));
                return;
        }
    }

    @Override // R2.i
    public void b(Object obj) {
        int i4 = this.f6653a;
        Object obj2 = this.f6657e;
        switch (i4) {
            case 0:
                C0858A c0858a = (C0858A) obj;
                boolean z4 = D2.f6521a;
                Object obj3 = this.f6656d;
                if (z4) {
                    Log.d("WebAppSearchLogging", "onSuccess on AGA suggestion, query=" + ((Query) obj3).getInput());
                }
                this.f6655c.b((Query) obj3, c0858a, (AbstractC0683p) obj2, this.f6654b, null, false);
                return;
            default:
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j4 = this.f6654b;
                this.f6655c.f6875h.e((NexusLauncherLatencyEvent) obj2, elapsedRealtime - j4, j4);
                return;
        }
    }

    public O0(T0 t02, Query query, AbstractC0683p abstractC0683p, long j4) {
        this.f6655c = t02;
        this.f6656d = query;
        this.f6657e = abstractC0683p;
        this.f6654b = j4;
    }

    public O0(T0 t02, String str, long j4, NexusLauncherLatencyEvent nexusLauncherLatencyEvent) {
        this.f6655c = t02;
        this.f6656d = str;
        this.f6654b = j4;
        this.f6657e = nexusLauncherLatencyEvent;
    }
}
