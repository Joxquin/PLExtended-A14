package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.Query;
import android.app.search.SearchAction;
import android.app.search.SearchTarget;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.views.ActivityContext;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherLatencyEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.z  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0722z implements R2.i {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Query f7296a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ long f7297b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AbstractC0683p f7298c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ A f7299d;

    public C0722z(A a4, Query query, long j4, AbstractC0683p abstractC0683p) {
        this.f7299d = a4;
        this.f7296a = query;
        this.f7297b = j4;
        this.f7298c = abstractC0683p;
    }

    @Override // R2.i
    public final void a(Throwable th) {
        Log.e("GmsPlayProvider", "Receive failed GetCompletionsResponse", th);
        this.f7299d.f6493b.d(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_GMS_PLAY_RECEIVE_COMPLETIONS_DURATION, SystemClock.elapsedRealtime() - this.f7297b, StatsLogManager.StatsLatencyLogger.LatencyType.FAIL);
        LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
        final AbstractC0683p abstractC0683p = this.f7298c;
        looperExecutor.execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.y
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC0683p.this.a(Collections.EMPTY_LIST);
            }
        });
    }

    @Override // R2.i
    public final void b(Object obj) {
        Query query;
        String str;
        StatsLogManager.StatsLatencyLogger.LatencyType latencyType;
        String g4;
        g2.p pVar = (g2.p) obj;
        boolean z4 = B.f6508a;
        Query query2 = this.f7296a;
        String str2 = "GmsPlayProvider";
        if (z4) {
            Log.d("GmsPlayProvider", String.format("Receive success GetCompletionsResponse for query:%s", query2.getInput()));
        }
        A a4 = this.f7299d;
        W w4 = a4.f6493b;
        NexusLauncherLatencyEvent nexusLauncherLatencyEvent = NexusLauncherLatencyEvent.LAUNCHER_LATENCY_GMS_PLAY_RECEIVE_COMPLETIONS_DURATION;
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f7297b;
        StatsLogManager.StatsLatencyLogger.LatencyType latencyType2 = StatsLogManager.StatsLatencyLogger.LatencyType.HOT;
        w4.d(nexusLauncherLatencyEvent, elapsedRealtime, latencyType2);
        long elapsedRealtime2 = SystemClock.elapsedRealtime();
        C0719y0 c0719y0 = a4.f6492a;
        int i4 = 0;
        Locale locale = c0719y0.getResources().getConfiguration().getLocales().get(0);
        final ArrayList arrayList = new ArrayList();
        com.google.protobuf.S b4 = pVar.b();
        if (z4) {
            Log.d("GmsPlayUtil", String.format("Receive GetCompletionsResponse size: %d", Integer.valueOf(b4.size())));
        }
        while (i4 < b4.size()) {
            g2.o oVar = (g2.o) b4.get(i4);
            com.google.protobuf.S s4 = b4;
            String str3 = "PLAY:" + Process.myUserHandle().getIdentifier() + ":" + oVar.d() + ":Gms";
            C0719y0 c0719y02 = c0719y0;
            SearchTarget.Builder userHandle = new SearchTarget.Builder(256, "icon_row_medium", str3).setPackageName(oVar.d()).setUserHandle(Process.myUserHandle());
            if (oVar.i()) {
                query = query2;
                str = str2;
                userHandle.setScore((float) oVar.e());
            } else {
                query = query2;
                str = str2;
            }
            Bundle bundle = new Bundle();
            String str4 = str;
            bundle.putString("group_id", "APPLICATION:0:com.android.vending:play_gms_header:com.android.vending.AssetBrowserActivity");
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(oVar.f()));
            intent.setPackage("com.android.vending");
            Query query3 = query;
            intent.putExtra("overlay", true);
            intent.putExtra("callerId", "com.google.android.apps.nexuslauncher");
            if (!oVar.j() || Float.compare(oVar.h(), 0.0f) <= 0) {
                latencyType = latencyType2;
                g4 = oVar.g();
            } else {
                StringBuilder sb = new StringBuilder();
                latencyType = latencyType2;
                sb.append(String.format(locale, "%.1f", Float.valueOf(oVar.h())));
                sb.append(" ★ ");
                sb.append(oVar.g());
                g4 = sb.toString();
            }
            Bundle bundle2 = new Bundle();
            Locale locale2 = locale;
            bundle2.putBoolean("should_start_for_result", true);
            int d4 = oVar.b().c().d();
            String c4 = oVar.c();
            bundle2.putInt("icon_integer", d4);
            if (z4) {
                Log.d("GmsPlayUtil", String.format("Receive token: %d for app: %s", Integer.valueOf(d4), c4));
            }
            arrayList.add(userHandle.setSearchAction(new SearchAction.Builder(str3, c4).setIntent(intent).setSubtitle(g4).setExtras(bundle2).build()).setExtras(bundle).build());
            i4++;
            b4 = s4;
            c0719y0 = c0719y02;
            str2 = str4;
            query2 = query3;
            latencyType2 = latencyType;
            locale = locale2;
        }
        Query query4 = query2;
        String str5 = str2;
        C0719y0 c0719y03 = c0719y0;
        a4.f6493b.d(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_GMS_PLAY_UNPACK_COMPLETIONS_DURATION, SystemClock.elapsedRealtime() - elapsedRealtime2, latencyType2);
        if (B.f6508a) {
            Log.d(str5, "Finished unpacking GetCompletionsResponse.");
        }
        D2.a(query4, arrayList);
        if (!arrayList.isEmpty()) {
            ((ActivityContext) c0719y03.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_GMS_PLAY_RESPONSE_NOT_EMPTY);
        }
        LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
        final AbstractC0683p abstractC0683p = this.f7298c;
        looperExecutor.execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.x
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC0683p.this.a(arrayList);
            }
        });
    }
}
