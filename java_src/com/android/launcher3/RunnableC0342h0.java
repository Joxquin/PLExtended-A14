package com.android.launcher3;

import android.content.pm.LauncherApps;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.pm.InstallSessionTracker;
import com.android.launcher3.widget.custom.CustomWidgetManager;
/* renamed from: com.android.launcher3.h0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0342h0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4647d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f4648e;

    public /* synthetic */ RunnableC0342h0(int i4, Object obj) {
        this.f4647d = i4;
        this.f4648e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4647d) {
            case 0:
                ((LauncherAppState.IconObserver) this.f4648e).verifyIconChanged();
                return;
            case 1:
                ((LauncherApps) r1.mContext.getSystemService(LauncherApps.class)).unregisterCallback(((LauncherAppState) this.f4648e).mModel);
                return;
            case 2:
                ((CustomWidgetManager) this.f4648e).setWidgetRefreshCallback(null);
                return;
            case 3:
                ((InstallSessionTracker) this.f4648e).unregister();
                return;
            case 4:
                ((IconCache) this.f4648e).close();
                return;
            default:
                ((LauncherModel) this.f4648e).destroy();
                return;
        }
    }
}
