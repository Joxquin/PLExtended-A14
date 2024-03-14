package com.google.android.apps.nexuslauncher;

import android.net.ConnectivityManager;
/* loaded from: classes.dex */
public final class q implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ u f7506d;

    public q(u uVar) {
        this.f7506d = uVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7506d.f7614d.getContentResolver().unregisterContentObserver(this.f7506d.f7620j);
        u uVar = this.f7506d;
        uVar.getClass();
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) uVar.f7614d.getSystemService(ConnectivityManager.class);
            if (connectivityManager != null) {
                connectivityManager.unregisterNetworkCallback(uVar.f7621k);
            }
        } catch (Throwable unused) {
        }
    }
}
