package com.android.launcher3.model;

import android.app.prediction.AppTarget;
import android.app.prediction.AppTargetEvent;
import android.app.prediction.AppTargetId;
import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$FolderContainer;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.logger.LauncherAtomExtensions$ExtendedContainers;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.util.Executors;
import com.android.quickstep.logging.StatsLogCompatManager;
import java.util.Locale;
import java.util.function.ObjIntConsumer;
/* loaded from: classes.dex */
public final class AppEventProducer implements StatsLogCompatManager.StatsLogConsumer {
    private final ObjIntConsumer mCallback;
    private final Context mContext;
    private LauncherAtom$ItemInfo mLastDragItem;
    private final Handler mMessageHandler = new Handler(Executors.MODEL_EXECUTOR.getLooper(), new Handler.Callback() { // from class: com.android.launcher3.model.d
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            return AppEventProducer.a(AppEventProducer.this, message);
        }
    });

    public AppEventProducer(Context context, R0 r02) {
        this.mContext = context;
        this.mCallback = r02;
    }

    public static boolean a(AppEventProducer appEventProducer, Message message) {
        appEventProducer.getClass();
        if (message.what != 0) {
            return false;
        }
        int i4 = message.arg1;
        appEventProducer.mCallback.accept((AppTargetEvent) message.obj, i4);
        return true;
    }

    private AppTarget createTempFolderTarget() {
        return new AppTarget.Builder(new AppTargetId("folder:" + SystemClock.uptimeMillis()), this.mContext.getPackageName(), Process.myUserHandle()).build();
    }

    private static String getWorkspaceContainerString(LauncherAtom$WorkspaceContainer launcherAtom$WorkspaceContainer, int i4, int i5) {
        return String.format(Locale.ENGLISH, "workspace/%d/[%d,%d]/[%d,%d]", Integer.valueOf(launcherAtom$WorkspaceContainer.getPageIndex()), Integer.valueOf(launcherAtom$WorkspaceContainer.getGridX()), Integer.valueOf(launcherAtom$WorkspaceContainer.getGridY()), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    private static ComponentName parseNullable(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return ComponentName.unflattenFromString(str);
    }

    private void sendEvent(AppTarget appTarget, LauncherAtom$ItemInfo launcherAtom$ItemInfo, int i4, int i5) {
        String workspaceContainerString;
        LauncherAtom$FolderContainer folder;
        if (appTarget == null || Utilities.isRunningInTestHarness()) {
            return;
        }
        AppTargetEvent.Builder builder = new AppTargetEvent.Builder(appTarget, i4);
        LauncherAtom$ContainerInfo containerInfo = launcherAtom$ItemInfo.getContainerInfo();
        int ordinal = containerInfo.getContainerCase().ordinal();
        if (ordinal == 0) {
            workspaceContainerString = getWorkspaceContainerString(containerInfo.getWorkspace(), launcherAtom$ItemInfo.getWidget().getSpanX(), launcherAtom$ItemInfo.getWidget().getSpanY());
        } else if (ordinal == 1) {
            workspaceContainerString = String.format(Locale.ENGLISH, "hotseat/%1$d/[%1$d,0]/[1,1]", Integer.valueOf(containerInfo.getHotseat().getIndex()));
        } else if (ordinal == 2) {
            int ordinal2 = containerInfo.getFolder().getParentContainerCase().ordinal();
            if (ordinal2 == 0) {
                workspaceContainerString = "folder/" + getWorkspaceContainerString(folder.getWorkspace(), 1, 1);
            } else if (ordinal2 != 1) {
                workspaceContainerString = "folder";
            } else {
                workspaceContainerString = "folder/" + String.format(Locale.ENGLISH, "hotseat/%1$d/[%1$d,0]/[1,1]", Integer.valueOf(folder.getHotseat().getIndex()));
            }
        } else if (ordinal == 3) {
            workspaceContainerString = "all-apps";
        } else if (ordinal != 5) {
            if (ordinal != 6) {
                if (ordinal == 7) {
                    workspaceContainerString = "deep-shortcuts";
                } else if (ordinal == 9) {
                    workspaceContainerString = "predictions/hotseat";
                } else if (ordinal == 10) {
                    workspaceContainerString = "task-switcher";
                } else if (ordinal != 13 || containerInfo.getExtendedContainers().getContainerCase() != LauncherAtomExtensions$ExtendedContainers.ContainerCase.DEVICE_SEARCH_RESULT_CONTAINER) {
                    workspaceContainerString = "";
                }
            }
            workspaceContainerString = "search-results";
        } else {
            workspaceContainerString = "predictions";
        }
        this.mMessageHandler.obtainMessage(0, i5, 0, builder.setLaunchLocation(workspaceContainerString).build()).sendToTarget();
    }

    @Override // com.android.quickstep.logging.StatsLogCompatManager.StatsLogConsumer
    public final void consume(StatsLogManager.EventEnum eventEnum, LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        boolean z4 = true;
        if (eventEnum == StatsLogManager.LauncherEvent.LAUNCHER_APP_LAUNCH_TAP || eventEnum == StatsLogManager.LauncherEvent.LAUNCHER_TASK_LAUNCH_SWIPE_DOWN || eventEnum == StatsLogManager.LauncherEvent.LAUNCHER_TASK_LAUNCH_TAP || eventEnum == StatsLogManager.LauncherEvent.LAUNCHER_QUICKSWITCH_RIGHT || eventEnum == StatsLogManager.LauncherEvent.LAUNCHER_QUICKSWITCH_LEFT) {
            sendEvent(launcherAtom$ItemInfo, 1, -102);
        } else if (eventEnum == StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROPPED_ON_DONT_SUGGEST) {
            sendEvent(launcherAtom$ItemInfo, 2, -102);
        } else if (eventEnum == StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DRAG_STARTED) {
            this.mLastDragItem = launcherAtom$ItemInfo;
        } else {
            StatsLogManager.LauncherEvent launcherEvent = StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROP_COMPLETED;
            LauncherAtom$ContainerInfo.ContainerCase containerCase = LauncherAtom$ContainerInfo.ContainerCase.WORKSPACE;
            LauncherAtom$ItemInfo.ItemCase itemCase = LauncherAtom$ItemInfo.ItemCase.WIDGET;
            if (eventEnum == launcherEvent) {
                LauncherAtom$ItemInfo launcherAtom$ItemInfo2 = this.mLastDragItem;
                if (launcherAtom$ItemInfo2 == null) {
                    return;
                }
                if (PredictionHelper.isTrackedForHotseatPrediction(launcherAtom$ItemInfo2)) {
                    sendEvent(this.mLastDragItem, 4, -103);
                }
                if (PredictionHelper.isTrackedForHotseatPrediction(launcherAtom$ItemInfo)) {
                    sendEvent(launcherAtom$ItemInfo, 3, -103);
                }
                if (launcherAtom$ItemInfo.getItemCase() != itemCase || launcherAtom$ItemInfo.getContainerInfo().getContainerCase() != containerCase) {
                    z4 = false;
                }
                if (z4) {
                    sendEvent(launcherAtom$ItemInfo, 3, -111);
                }
                this.mLastDragItem = null;
            } else if (eventEnum == StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROP_FOLDER_CREATED) {
                if (PredictionHelper.isTrackedForHotseatPrediction(launcherAtom$ItemInfo)) {
                    sendEvent(createTempFolderTarget(), launcherAtom$ItemInfo, 3, -103);
                    sendEvent(launcherAtom$ItemInfo, 4, -103);
                }
            } else if (eventEnum == StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_CONVERTED_TO_ICON) {
                if (PredictionHelper.isTrackedForHotseatPrediction(launcherAtom$ItemInfo)) {
                    sendEvent(createTempFolderTarget(), launcherAtom$ItemInfo, 4, -103);
                    sendEvent(launcherAtom$ItemInfo, 3, -103);
                }
            } else if (eventEnum != StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROPPED_ON_REMOVE) {
                if (eventEnum == StatsLogManager.LauncherEvent.LAUNCHER_HOTSEAT_PREDICTION_PINNED) {
                    if (PredictionHelper.isTrackedForHotseatPrediction(launcherAtom$ItemInfo)) {
                        sendEvent(launcherAtom$ItemInfo, 3, -103);
                    }
                } else if (eventEnum == StatsLogManager.LauncherEvent.LAUNCHER_ONRESUME) {
                    sendEvent(new AppTarget.Builder(new AppTargetId("launcher:launcher"), this.mContext.getPackageName(), Process.myUserHandle()).build(), launcherAtom$ItemInfo, 1, -102);
                } else if (eventEnum == StatsLogManager.LauncherEvent.LAUNCHER_DISMISS_PREDICTION_UNDO) {
                    sendEvent(launcherAtom$ItemInfo, 5, -103);
                }
            } else {
                LauncherAtom$ItemInfo launcherAtom$ItemInfo3 = this.mLastDragItem;
                if (launcherAtom$ItemInfo3 != null && PredictionHelper.isTrackedForHotseatPrediction(launcherAtom$ItemInfo3)) {
                    sendEvent(this.mLastDragItem, 4, -103);
                }
                LauncherAtom$ItemInfo launcherAtom$ItemInfo4 = this.mLastDragItem;
                if (launcherAtom$ItemInfo4 != null) {
                    if (launcherAtom$ItemInfo4.getItemCase() != itemCase || launcherAtom$ItemInfo4.getContainerInfo().getContainerCase() != containerCase) {
                        z4 = false;
                    }
                    if (z4) {
                        sendEvent(this.mLastDragItem, 4, -111);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0124 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0137  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void sendEvent(com.android.launcher3.logger.LauncherAtom$ItemInfo r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.AppEventProducer.sendEvent(com.android.launcher3.logger.LauncherAtom$ItemInfo, int, int):void");
    }
}
