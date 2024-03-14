package com.android.launcher3;

import android.content.Context;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.util.SettingsCache;
import com.android.launcher3.util.SimpleBroadcastReceiver;
/* renamed from: com.android.launcher3.i0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0344i0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4652d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ SafeCloseable f4653e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f4654f;

    public /* synthetic */ RunnableC0344i0(SafeCloseable safeCloseable, Object obj, int i4) {
        this.f4652d = i4;
        this.f4653e = safeCloseable;
        this.f4654f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4652d) {
            case 0:
                LauncherAppState.c((LauncherAppState) this.f4653e, (LauncherAppState.IconObserver) this.f4654f);
                return;
            case 1:
                LauncherAppState.d((LauncherAppState) this.f4653e, (SimpleBroadcastReceiver) this.f4654f);
                return;
            case 2:
                LauncherAppState.a((LauncherAppState) this.f4653e, (Context) this.f4654f);
                return;
            default:
                ((SettingsCache) this.f4653e).unregister(SettingsCache.NOTIFICATION_BADGING_URI, (SettingsCache.OnChangeListener) this.f4654f);
                return;
        }
    }
}
