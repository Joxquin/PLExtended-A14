package com.google.android.apps.nexuslauncher.allapps;

import android.app.PendingIntent;
import android.app.search.Query;
import android.app.search.SearchAction;
import android.app.search.SearchTarget;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.Log;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.search.SearchCallback;
import com.android.launcher3.search.StringMatcherUtility;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.ActivityContext;
import com.google.android.apps.nexuslauncher.logging.LatencyLoggingPackageId;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherLatencyEvent;
import j.C1080K;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import z0.C1499g;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.a1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0625a1 extends AbstractC0683p {

    /* renamed from: a  reason: collision with root package name */
    public final SearchCallback f6990a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f6991b;

    /* renamed from: c  reason: collision with root package name */
    public final C0719y0 f6992c;

    /* renamed from: d  reason: collision with root package name */
    public final C0696s1 f6993d;

    /* renamed from: e  reason: collision with root package name */
    public final Q f6994e;

    /* renamed from: g  reason: collision with root package name */
    public final AllAppsStore f6996g;

    /* renamed from: h  reason: collision with root package name */
    public final int f6997h;

    /* renamed from: j  reason: collision with root package name */
    public final ArrayList f6999j;

    /* renamed from: k  reason: collision with root package name */
    public final ArrayList f7000k;

    /* renamed from: m  reason: collision with root package name */
    public final String f7002m;
    boolean mDeviceResultReceived;
    boolean mIsDeviceResultTimeout;
    boolean mWebResultReceived;

    /* renamed from: n  reason: collision with root package name */
    public final long f7003n;

    /* renamed from: l  reason: collision with root package name */
    public boolean f7001l = false;
    boolean mForTest = false;

    /* renamed from: f  reason: collision with root package name */
    public final Handler f6995f = new Handler(Executors.MAIN_EXECUTOR.getLooper());

    /* renamed from: i  reason: collision with root package name */
    public final ArrayList f6998i = new ArrayList();

    public C0625a1(String str, List list, List list2, SearchCallback searchCallback, C0719y0 c0719y0, C0719y0 c0719y02, long j4) {
        this.f6990a = searchCallback;
        this.f6991b = c0719y0;
        this.f6992c = c0719y02;
        this.f6993d = c0719y02.f7283p;
        this.f6996g = ((ActivityContext) c0719y02.f7271d).getAppsView().getAppsStore();
        this.f6999j = new ArrayList(list);
        this.f7000k = new ArrayList(list2);
        this.f6997h = c0719y02.f7288u;
        this.f6994e = c0719y02.f7268H;
        this.f7002m = str;
        this.f7003n = j4;
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.AbstractC0683p
    public final void a(List list) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = this.f7000k;
        arrayList.clear();
        arrayList.addAll(list);
        g();
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.AbstractC0683p
    public final void b(List list) {
        String str = this.f7002m;
        if (list == null) {
            Log.d("ResultToken", "Ignoring null or empty web result " + str);
            return;
        }
        D2.j(str, list);
        if (this.mWebResultReceived) {
            Log.d("ResultToken", "Ignoring multiple web result calls " + str);
            return;
        }
        this.mWebResultReceived = true;
        ArrayList arrayList = this.f6999j;
        arrayList.clear();
        arrayList.addAll(list);
        g();
    }

    public final List c(Query query, boolean z4) {
        ArrayList arrayList;
        SearchTarget build;
        Context context = this.f6991b;
        C0639e c0639e = new C0639e(context);
        String str = this.f7002m;
        c0639e.f7031a = str;
        if (this.mForTest) {
            UserHandle userHandle = C2.f6516a;
            arrayList = new ArrayList();
            for (int i4 = 0; i4 < 4; i4++) {
                String a4 = C1080K.a("test_app_", i4);
                Bundle bundle = new Bundle();
                bundle.putString("data_donated_source", "aiai_search_root");
                arrayList.add(new SearchTarget.Builder(1, "icon", androidx.constraintlayout.widget.j.a("app_", a4)).setPackageName("com.google.android.googlequicksearchbox").setExtras(bundle).setUserHandle(C2.f6516a).build());
            }
        } else {
            List<AppInfo> asList = Arrays.asList(this.f6996g.getApps());
            UserHandle userHandle2 = C0710w.f7236a;
            String lowerCase = str.toLowerCase();
            ArrayList arrayList2 = new ArrayList();
            StringMatcherUtility.StringMatcher stringMatcher = new StringMatcherUtility.StringMatcher();
            ArrayList arrayList3 = new ArrayList();
            for (AppInfo appInfo : asList) {
                if (StringMatcherUtility.matches(lowerCase, appInfo.title.toString(), stringMatcher)) {
                    arrayList3.add(appInfo);
                }
            }
            Collections.sort(arrayList3, c0639e);
            for (int i5 = 0; i5 < arrayList3.size() && arrayList2.size() < this.f6997h; i5++) {
                arrayList2.add(D2.d((ItemInfo) arrayList3.get(i5)));
            }
            arrayList = arrayList2;
        }
        if (z4) {
            if (this.mForTest) {
                UserHandle userHandle3 = C2.f6516a;
                SearchTarget.Builder extras = new SearchTarget.Builder(8, "icon_row", "test_setting").setPackageName("com.android.settings").setUserHandle(C2.f6516a).setExtras(new Bundle());
                Intent intent = new Intent("android.settings.APP_SEARCH_SETTINGS");
                intent.putExtra("full_screen", false);
                extras.setSearchAction(new SearchAction.Builder("test_setting", "Setting").setIntent(intent).setIcon(Icon.createWithAdaptiveBitmap(Bitmap.createBitmap(200, 200, Bitmap.Config.ARGB_8888))).build());
                build = extras.build();
            } else {
                UserHandle userHandle4 = C0710w.f7236a;
                SearchTarget.Builder builder = new SearchTarget.Builder(512, "icon_row", "Search on Googlecom.google.android.googlequicksearchbox");
                Intent intent2 = new Intent("com.google.android.googlequicksearchbox.GOOGLE_SEARCH");
                intent2.putExtra("query", str);
                intent2.putExtra("full_screen", false);
                PendingIntent activity = PendingIntent.getActivity(context, 1, intent2, 201326592);
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("should_start_for_result", true);
                SearchAction build2 = new SearchAction.Builder("Search on Googlecom.google.android.googlequicksearchbox", "Search on Google").setPendingIntent(activity).setExtras(bundle2).build();
                Bundle bundle3 = new Bundle();
                bundle3.putString("group_id", "Search on Googlecom.google.android.googlequicksearchbox");
                builder.setPackageName("com.google.android.googlequicksearchbox").setUserHandle(C0710w.f7236a).setExtras(bundle3).setSearchAction(build2);
                build = builder.build();
            }
            if (!arrayList.isEmpty()) {
                arrayList.add(C1499g.f12995a);
            }
            arrayList.add(build);
        }
        if (arrayList.size() > 0) {
            ((SearchTarget) arrayList.get(0)).getExtras().putBoolean("quick_launch", true);
        }
        D2.a(query, arrayList);
        return arrayList;
    }

    public final void d(List list, long j4, boolean z4) {
        if (list.size() <= 0 || ((SearchTarget) list.get(0)).getExtras() == null) {
            return;
        }
        long j5 = ((SearchTarget) list.get(0)).getExtras().getLong("key_ipc_start");
        if (j5 > 0) {
            long j6 = this.f7003n;
            this.f6994e.a(this.f7002m, NexusLauncherLatencyEvent.LAUNCHER_LATENCY_IPC_DURATION, j4 - j5, LatencyLoggingPackageId.AIAI, z4, 0, j6);
        }
    }

    public final void e(Query query) {
        if (this.f7001l) {
            return;
        }
        this.mIsDeviceResultTimeout = true;
        if (this.mDeviceResultReceived) {
            return;
        }
        String str = this.f7002m;
        long j4 = this.f7003n;
        Q q4 = this.f6994e;
        q4.getClass();
        q4.a(str, NexusLauncherLatencyEvent.LAUNCHER_LATENCY_ONDEVICE_SEARCH_DURATION, SystemClock.elapsedRealtime() - j4, LatencyLoggingPackageId.AIAI, true, 0, j4);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        ArrayList arrayList = this.f6998i;
        arrayList.clear();
        arrayList.addAll(c(query, true));
        this.f6994e.a(this.f7002m, NexusLauncherLatencyEvent.LAUNCHER_LATENCY_FALLBACK_SEARCH_DURATION_AFTER_ONDEVICE_TIMEOUT, SystemClock.elapsedRealtime() - elapsedRealtime, LatencyLoggingPackageId.LAUNCHER, false, 0, elapsedRealtime);
        g();
    }

    public final void f(final List list) {
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean z4 = this.mIsDeviceResultTimeout;
        String str = this.f7002m;
        if (z4 && !this.mDeviceResultReceived) {
            Log.d("ResultToken", "Ignoring device results as it arrived after timeout " + str);
            Q q4 = this.f6994e;
            String str2 = this.f7002m;
            NexusLauncherLatencyEvent nexusLauncherLatencyEvent = NexusLauncherLatencyEvent.LAUNCHER_LATENCY_ONDEVICE_SEARCH_LATE_DURATION;
            long j4 = this.f7003n;
            q4.a(str2, nexusLauncherLatencyEvent, elapsedRealtime - j4, LatencyLoggingPackageId.AIAI, true, 0, j4);
            d(list, elapsedRealtime, true);
        } else if (this.f7001l) {
            Log.d("ResultToken", "Ignoring device results as it arrived after cancelled" + str);
        } else {
            D2.j(str, list);
            this.mDeviceResultReceived = true;
            if (list != null) {
                C0696s1 c0696s1 = this.f6993d;
                c0696s1.getClass();
                if ((Utilities.isRunningInTestHarness() ? true : c0696s1.f7180c) || this.mForTest) {
                    this.f6998i.addAll(list);
                    g();
                } else {
                    Executors.UI_HELPER_EXECUTOR.post(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.Y0
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z5;
                            final C0625a1 c0625a1 = C0625a1.this;
                            final List list2 = list;
                            long j5 = elapsedRealtime;
                            c0625a1.getClass();
                            Iterator it = list2.iterator();
                            while (true) {
                                boolean hasNext = it.hasNext();
                                LatencyLoggingPackageId latencyLoggingPackageId = LatencyLoggingPackageId.AIAI;
                                NexusLauncherLatencyEvent nexusLauncherLatencyEvent2 = NexusLauncherLatencyEvent.LAUNCHER_LATENCY_ONDEVICE_SEARCH_DURATION;
                                if (!hasNext) {
                                    List asList = Arrays.asList(c0625a1.f6996g.getApps());
                                    String q5 = c0625a1.f6992c.q();
                                    UserHandle userHandle = C0710w.f7236a;
                                    String lowerCase = q5.toLowerCase(Locale.getDefault());
                                    StringMatcherUtility.StringMatcherSpace stringMatcherSpace = new StringMatcherUtility.StringMatcherSpace();
                                    Iterator it2 = asList.iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            z5 = false;
                                            break;
                                        } else if (StringMatcherUtility.matches(lowerCase, ((AppInfo) it2.next()).title.toString(), stringMatcherSpace)) {
                                            z5 = true;
                                            break;
                                        }
                                    }
                                    if (!z5) {
                                        Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.Z0
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                C0625a1 c0625a12 = C0625a1.this;
                                                c0625a12.f6998i.addAll(list2);
                                                c0625a12.g();
                                            }
                                        });
                                        Q q6 = c0625a1.f6994e;
                                        String str3 = c0625a1.f7002m;
                                        long j6 = c0625a1.f7003n;
                                        q6.a(str3, nexusLauncherLatencyEvent2, j5 - j6, latencyLoggingPackageId, false, 3, j6);
                                        return;
                                    }
                                    if (!FeatureFlags.INJECT_FALLBACK_APP_CORPUS_RESULTS.get()) {
                                        Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.Z0
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                C0625a1 c0625a12 = C0625a1.this;
                                                c0625a12.f6998i.addAll(list2);
                                                c0625a12.g();
                                            }
                                        });
                                    } else if (list2.size() > 0) {
                                        final List c4 = c0625a1.c(D2.g((SearchTarget) list2.get(0)), true);
                                        Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.Z0
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                C0625a1 c0625a12 = C0625a1.this;
                                                c0625a12.f6998i.addAll(c4);
                                                c0625a12.g();
                                            }
                                        });
                                    }
                                    Q q7 = c0625a1.f6994e;
                                    String str4 = c0625a1.f7002m;
                                    long j7 = c0625a1.f7003n;
                                    q7.a(str4, nexusLauncherLatencyEvent2, j5 - j7, latencyLoggingPackageId, false, 2, j7);
                                    return;
                                }
                                SearchTarget searchTarget = (SearchTarget) it.next();
                                if (searchTarget.getResultType() == 1 && searchTarget.getLayoutType().equals("icon")) {
                                    Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.Z0
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            C0625a1 c0625a12 = C0625a1.this;
                                            c0625a12.f6998i.addAll(list2);
                                            c0625a12.g();
                                        }
                                    });
                                    Q q8 = c0625a1.f6994e;
                                    String str5 = c0625a1.f7002m;
                                    long j8 = c0625a1.f7003n;
                                    q8.a(str5, nexusLauncherLatencyEvent2, j5 - j8, latencyLoggingPackageId, false, 1, j8);
                                    return;
                                }
                            }
                        }
                    });
                }
                d(list, elapsedRealtime, false);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x049f  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0521  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0523  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0559  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x05e6  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x05f6  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0607  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0621  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x04ec A[EDGE_INSN: B:374:0x04ec->B:256:0x04ec ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:379:0x054a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:381:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g() {
        /*
            Method dump skipped, instructions count: 1875
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.allapps.C0625a1.g():void");
    }
}
