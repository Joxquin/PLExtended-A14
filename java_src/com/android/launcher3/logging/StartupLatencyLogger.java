package com.android.launcher3.logging;

import android.os.SystemClock;
import android.util.Log;
import android.util.SparseLongArray;
import com.android.launcher3.logging.StatsLogManager;
/* loaded from: classes.dex */
public class StartupLatencyLogger {
    private boolean isInTest;
    private final StatsLogManager.StatsLatencyLogger.LatencyType latencyType;
    private final SparseLongArray startTimeByEvent = new SparseLongArray();
    private final SparseLongArray endTimeByEvent = new SparseLongArray();
    private int cardinality = -1;
    private long workspaceLoadStartTime = -1;

    public StartupLatencyLogger(StatsLogManager.StatsLatencyLogger.LatencyType latencyType) {
        this.latencyType = latencyType;
    }

    public static /* synthetic */ void getCardinality$annotations() {
    }

    public static /* synthetic */ void getEndTimeByEvent$annotations() {
    }

    public static /* synthetic */ void getStartTimeByEvent$annotations() {
    }

    public static /* synthetic */ void getWorkspaceLoadStartTime$annotations() {
    }

    public final int getCardinality() {
        return this.cardinality;
    }

    public final SparseLongArray getEndTimeByEvent() {
        return this.endTimeByEvent;
    }

    public final StatsLogManager.StatsLatencyLogger.LatencyType getLatencyType() {
        return this.latencyType;
    }

    public final SparseLongArray getStartTimeByEvent() {
        return this.startTimeByEvent;
    }

    public StartupLatencyLogger log() {
        return this;
    }

    public final void logCardinality(int i4) {
        this.cardinality = i4;
    }

    public final void logEnd(StatsLogManager.LauncherLatencyEvent launcherLatencyEvent) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j4 = this.workspaceLoadStartTime;
        if (j4 != -1 && (launcherLatencyEvent == StatsLogManager.LauncherLatencyEvent.LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC || launcherLatencyEvent == StatsLogManager.LauncherLatencyEvent.LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC)) {
            logStart(launcherLatencyEvent, j4);
            this.workspaceLoadStartTime = -1L;
        }
        boolean z4 = this.isInTest;
        SparseLongArray sparseLongArray = this.endTimeByEvent;
        boolean z5 = true;
        if (z4) {
            if (this.startTimeByEvent.indexOfKey(launcherLatencyEvent.getId()) >= 0) {
                if (sparseLongArray.indexOfKey(launcherLatencyEvent.getId()) >= 0) {
                    Log.e("LauncherStartupLatencyLogger", "Cannot end same " + launcherLatencyEvent.name() + " event again");
                } else {
                    StatsLogManager.LauncherLatencyEvent launcherLatencyEvent2 = StatsLogManager.LauncherLatencyEvent.LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION;
                    if (launcherLatencyEvent != launcherLatencyEvent2) {
                        if (sparseLongArray.indexOfKey(launcherLatencyEvent2.getId()) >= 0) {
                            Log.e("LauncherStartupLatencyLogger", "Cannot end " + launcherLatencyEvent.name() + " event after LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION");
                        }
                    }
                }
            } else {
                Log.e("LauncherStartupLatencyLogger", "Cannot end " + launcherLatencyEvent.name() + " event before starting it");
            }
            z5 = false;
        }
        if (z5) {
            sparseLongArray.put(launcherLatencyEvent.getId(), elapsedRealtime);
        }
    }

    public final void logStart(StatsLogManager.LauncherLatencyEvent launcherLatencyEvent, long j4) {
        boolean z4 = this.isInTest;
        SparseLongArray sparseLongArray = this.startTimeByEvent;
        boolean z5 = true;
        if (z4) {
            if (sparseLongArray.indexOfKey(launcherLatencyEvent.getId()) >= 0) {
                Log.e("LauncherStartupLatencyLogger", "Cannot restart same " + launcherLatencyEvent.name() + " event");
            } else {
                if (!(sparseLongArray.size() == 0) || launcherLatencyEvent == StatsLogManager.LauncherLatencyEvent.LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION) {
                    StatsLogManager.LauncherLatencyEvent launcherLatencyEvent2 = StatsLogManager.LauncherLatencyEvent.LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC;
                    StatsLogManager.LauncherLatencyEvent launcherLatencyEvent3 = StatsLogManager.LauncherLatencyEvent.LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC;
                    if (launcherLatencyEvent == launcherLatencyEvent2 && sparseLongArray.get(launcherLatencyEvent3.getId()) != 0) {
                        Log.e("LauncherStartupLatencyLogger", "Cannot start LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC event after LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC starts");
                    } else if (launcherLatencyEvent == launcherLatencyEvent3 && sparseLongArray.get(launcherLatencyEvent2.getId()) != 0) {
                        Log.e("LauncherStartupLatencyLogger", "Cannot start LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC event after LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC starts");
                    }
                } else {
                    Log.e("LauncherStartupLatencyLogger", "The first log start event must be LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION.");
                }
            }
            z5 = false;
        }
        if (z5) {
            sparseLongArray.put(launcherLatencyEvent.getId(), j4);
        }
    }

    public final StartupLatencyLogger logWorkspaceLoadStartTime(long j4) {
        this.workspaceLoadStartTime = j4;
        return this;
    }

    public final void reset() {
        this.startTimeByEvent.clear();
        this.endTimeByEvent.clear();
        this.cardinality = -1;
        this.workspaceLoadStartTime = -1L;
    }

    public final void setIsInTest() {
        this.isInTest = true;
    }
}
