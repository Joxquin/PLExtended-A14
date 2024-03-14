package com.google.android.apps.nexuslauncher;

import android.net.ConnectivityManager;
import android.provider.Settings;
import android.util.Log;
import com.android.launcher3.util.Executors;
/* loaded from: classes.dex */
public final class s implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ u f7551d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f7552e;

    public s(u uVar, int i4) {
        this.f7551d = uVar;
        this.f7552e = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        u uVar = this.f7551d;
        int i4 = this.f7552e;
        uVar.getClass();
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) uVar.f7614d.getSystemService(ConnectivityManager.class);
            if (connectivityManager != null) {
                connectivityManager.unregisterNetworkCallback(uVar.f7621k);
            }
        } catch (Throwable unused) {
        }
        String string = Settings.Secure.getString(uVar.f7614d.getContentResolver(), "selected_search_engine");
        String str = "com.google.android.googlequicksearchbox";
        if (string == null) {
            string = "com.google.android.googlequicksearchbox";
        }
        n nVar = null;
        if (!kotlin.jvm.internal.h.a(string, "com.google.android.googlequicksearchbox")) {
            try {
                n parseLocalCache = uVar.parseLocalCache(string);
                if (parseLocalCache == null) {
                    n fetchTargetInfo = uVar.fetchTargetInfo(string);
                    if (fetchTargetInfo != null) {
                        nVar = fetchTargetInfo;
                        str = string;
                    }
                } else {
                    str = string;
                    nVar = parseLocalCache;
                }
                string = str;
            } catch (Throwable th) {
                Log.e("OSEManager", "Error fetching ose info", th);
                ConnectivityManager connectivityManager2 = (ConnectivityManager) uVar.f7614d.getSystemService(ConnectivityManager.class);
                if (connectivityManager2 != null) {
                    connectivityManager2.registerDefaultNetworkCallback(uVar.f7621k, uVar.f7618h);
                }
                uVar.d(i4 + 1);
            }
        }
        Executors.MAIN_EXECUTOR.execute(new k(new p(string, nVar), uVar, 1));
    }
}
