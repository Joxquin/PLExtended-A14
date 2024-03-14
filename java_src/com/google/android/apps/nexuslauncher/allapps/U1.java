package com.google.android.apps.nexuslauncher.allapps;

import android.app.StatusBarManager;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import com.android.launcher3.views.ActivityContext;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.systemui.qs.launcher.ILauncherTileService;
/* loaded from: classes.dex */
public final /* synthetic */ class U1 implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6897d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ SearchResultQSTile f6898e;

    public /* synthetic */ U1(SearchResultQSTile searchResultQSTile, int i4) {
        this.f6897d = i4;
        this.f6898e = searchResultQSTile;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f6897d) {
            case 0:
                SearchResultQSTile searchResultQSTile = this.f6898e;
                A2.m(searchResultQSTile.f6782q, searchResultQSTile.f6768D ? 6 : 5, view, searchResultQSTile.f6787v);
                searchResultQSTile.f6768D = false;
                String str = searchResultQSTile.mTileSpec;
                ILauncherTileService iLauncherTileService = ((TileLifeCycle) searchResultQSTile.f6782q.f7273f.get(str)).mService;
                if (iLauncherTileService != null) {
                    try {
                        iLauncherTileService.handleClick(str);
                        return;
                    } catch (RemoteException unused) {
                        Log.e("SearchResultQSTile", "Failed to call action.perform");
                        return;
                    }
                }
                return;
            default:
                SearchResultQSTile searchResultQSTile2 = this.f6898e;
                StatusBarManager statusBarManager = searchResultQSTile2.f6783r;
                if (statusBarManager != null) {
                    statusBarManager.expandSettingsPanel();
                    ((ActivityContext) searchResultQSTile2.f6782q.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_QS_TILE_FALLBACK_CLICK);
                    return;
                }
                return;
        }
    }
}
