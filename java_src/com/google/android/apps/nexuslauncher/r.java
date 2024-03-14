package com.google.android.apps.nexuslauncher;

import android.net.ConnectivityManager;
import android.net.Network;
/* loaded from: classes.dex */
public final class r extends ConnectivityManager.NetworkCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ u f7550a;

    public r(u uVar) {
        this.f7550a = uVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        kotlin.jvm.internal.h.e(network, "network");
        this.f7550a.d(0);
    }
}
