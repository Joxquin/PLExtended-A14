package com.google.android.apps.nexuslauncher.allapps;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import android.view.ViewTreeObserver;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.ActivityContext;
import com.google.android.systemui.qs.launcher.ILauncherTileListener;
import com.google.android.systemui.qs.launcher.ILauncherTileService;
import java.util.ArrayList;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class TileLifeCycle extends ILauncherTileListener.Stub implements ServiceConnection, ViewTreeObserver.OnWindowVisibilityChangeListener {
    private boolean mIsUpdateLogged;
    public J2.c mLastValue;
    private final W mLatencyLogger;
    private final ActivityContext mLauncher;
    public ILauncherTileService mService;
    private final C0719y0 mSessionManager;
    private long mStartTime;
    private final Intent mTileServiceIntent;
    private final String mTileSpec;
    private final Alarm mTimeoutAlarm = new Alarm();
    final ArrayList mListeners = new ArrayList();
    private boolean mTileDestroyed = false;
    private boolean mWasListening = false;

    public TileLifeCycle(C0719y0 c0719y0, boolean z4, String str) {
        this.mSessionManager = c0719y0;
        ActivityContext activityContext = (ActivityContext) c0719y0.f7271d;
        this.mLauncher = activityContext;
        this.mTileSpec = str;
        Intent intent = new Intent("com.google.android.systemui.qs.launcher.LauncherTileService");
        this.mTileServiceIntent = intent;
        intent.setPackage("com.android.systemui");
        this.mLatencyLogger = new W(c0719y0);
        activityContext.getAppsView().getViewTreeObserver().addOnWindowVisibilityChangeListener(this);
        if (z4) {
            destroy();
        } else {
            updateListening();
        }
    }

    public static void a(TileLifeCycle tileLifeCycle, boolean z4) {
        if (tileLifeCycle.mWasListening != z4) {
            tileLifeCycle.mWasListening = z4;
            if (z4) {
                tileLifeCycle.mSessionManager.bindService(tileLifeCycle.mTileServiceIntent, tileLifeCycle, 65);
                tileLifeCycle.mStartTime = SystemClock.elapsedRealtime();
                tileLifeCycle.mIsUpdateLogged = false;
                tileLifeCycle.mTimeoutAlarm.setOnAlarmListener(new OnAlarmListener() { // from class: com.google.android.apps.nexuslauncher.allapps.T2
                    @Override // com.android.launcher3.OnAlarmListener
                    public final void onAlarm(Alarm alarm) {
                        TileLifeCycle.b(TileLifeCycle.this, alarm);
                    }
                });
                tileLifeCycle.mTimeoutAlarm.setAlarm(500L);
                return;
            }
            ILauncherTileService iLauncherTileService = tileLifeCycle.mService;
            if (iLauncherTileService != null) {
                try {
                    iLauncherTileService.clearTileListeners(tileLifeCycle.mTileSpec);
                } catch (RemoteException e4) {
                    Log.e("TileLifeCycle", "Failed to call clearTileListeners", e4);
                }
                tileLifeCycle.mService = null;
            }
            tileLifeCycle.mSessionManager.unbindService(tileLifeCycle);
        }
    }

    public static /* synthetic */ void b(TileLifeCycle tileLifeCycle, Alarm alarm) {
        tileLifeCycle.mLatencyLogger.f(SystemClock.elapsedRealtime() - tileLifeCycle.mStartTime, StatsLogManager.StatsLatencyLogger.LatencyType.TIMEOUT);
        alarm.cancelAlarm();
    }

    public static /* synthetic */ void c(TileLifeCycle tileLifeCycle, final J2.c cVar) {
        tileLifeCycle.mLastValue = cVar;
        tileLifeCycle.mListeners.forEach(new Consumer() { // from class: com.google.android.apps.nexuslauncher.allapps.S2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((androidx.lifecycle.z) obj).i(J2.c.this);
            }
        });
        if (tileLifeCycle.mIsUpdateLogged) {
            return;
        }
        if (tileLifeCycle.mTimeoutAlarm.alarmPending()) {
            tileLifeCycle.mTimeoutAlarm.cancelAlarm();
        }
        tileLifeCycle.mIsUpdateLogged = true;
        tileLifeCycle.mLatencyLogger.f(SystemClock.elapsedRealtime() - tileLifeCycle.mStartTime, StatsLogManager.StatsLatencyLogger.LatencyType.HOT);
    }

    public static void d(TileLifeCycle tileLifeCycle, IBinder iBinder) {
        ILauncherTileService aVar;
        if (tileLifeCycle.mWasListening) {
            if (iBinder == null) {
                aVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.systemui.qs.launcher.ILauncherTileService");
                aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof ILauncherTileService)) ? new J2.a(iBinder) : (ILauncherTileService) queryLocalInterface;
            }
            tileLifeCycle.mService = aVar;
            try {
                aVar.addTileListener(tileLifeCycle.mTileSpec, tileLifeCycle);
            } catch (RemoteException e4) {
                Log.e("TileLifeCycle", "Failed to call addTileListener", e4);
                tileLifeCycle.mLatencyLogger.f(SystemClock.elapsedRealtime() - tileLifeCycle.mStartTime, StatsLogManager.StatsLatencyLogger.LatencyType.FAIL);
            }
        }
    }

    private void updateListening() {
        final boolean z4 = (this.mTileDestroyed || this.mLauncher.getAppsView().getWindowVisibility() != 0 || this.mListeners.isEmpty()) ? false : true;
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.Q2
            @Override // java.lang.Runnable
            public final void run() {
                TileLifeCycle.a(TileLifeCycle.this, z4);
            }
        });
    }

    public final void addListener(androidx.lifecycle.z zVar) {
        this.mListeners.add(zVar);
        updateListening();
    }

    public final void destroy() {
        if (this.mTileDestroyed) {
            return;
        }
        this.mTileDestroyed = true;
        this.mListeners.clear();
        this.mLauncher.getAppsView().getViewTreeObserver().removeOnWindowVisibilityChangeListener(this);
        this.mTimeoutAlarm.cancelAlarm();
        updateListening();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Executors.UI_HELPER_EXECUTOR.execute(new R2(this, iBinder, 1));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }

    public final void onWindowVisibilityChanged(int i4) {
        updateListening();
    }

    public final void removeListener(androidx.lifecycle.z zVar) {
        this.mListeners.remove(zVar);
        updateListening();
    }
}
