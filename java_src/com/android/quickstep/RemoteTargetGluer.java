package com.android.quickstep;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Rect;
import android.view.RemoteAnimationTarget;
import com.android.launcher3.util.SplitConfigurationOptions$SplitBounds;
import com.android.quickstep.util.AnimatorControllerWithResistance;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.util.TransformParams;
import com.android.quickstep.views.DesktopTaskView;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class RemoteTargetGluer {
    private static final int DEFAULT_NUM_HANDLES = 2;
    private static final String TAG = "RemoteTargetGluer";
    private RemoteTargetHandle[] mRemoteTargetHandles;
    private SplitConfigurationOptions$SplitBounds mSplitBounds;

    /* loaded from: classes.dex */
    public class RemoteTargetHandle {
        private AnimatorControllerWithResistance mPlaybackController;
        private final TaskViewSimulator mTaskViewSimulator;
        private final TransformParams mTransformParams;

        public RemoteTargetHandle(TaskViewSimulator taskViewSimulator, TransformParams transformParams) {
            this.mTransformParams = transformParams;
            this.mTaskViewSimulator = taskViewSimulator;
        }

        public AnimatorControllerWithResistance getPlaybackController() {
            return this.mPlaybackController;
        }

        public TaskViewSimulator getTaskViewSimulator() {
            return this.mTaskViewSimulator;
        }

        public TransformParams getTransformParams() {
            return this.mTransformParams;
        }

        public void setPlaybackController(AnimatorControllerWithResistance animatorControllerWithResistance) {
            this.mPlaybackController = animatorControllerWithResistance;
        }
    }

    public RemoteTargetGluer(Context context, BaseActivityInterface baseActivityInterface, RemoteAnimationTargets remoteAnimationTargets, boolean z4) {
        init(context, baseActivityInterface, remoteAnimationTargets.apps.length, z4);
    }

    private RemoteTargetHandle[] createHandles(Context context, BaseActivityInterface baseActivityInterface, int i4, boolean z4) {
        RemoteTargetHandle[] remoteTargetHandleArr = new RemoteTargetHandle[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            TaskViewSimulator taskViewSimulator = new TaskViewSimulator(context, baseActivityInterface);
            taskViewSimulator.setIsDesktopTask(z4);
            remoteTargetHandleArr[i5] = new RemoteTargetHandle(taskViewSimulator, new TransformParams());
        }
        return remoteTargetHandleArr;
    }

    private RemoteAnimationTargets createRemoteAnimationTargetsForTarget(RemoteAnimationTargets remoteAnimationTargets, RemoteAnimationTarget remoteAnimationTarget) {
        RemoteAnimationTarget[] remoteAnimationTargetArr;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ActivityManager.RunningTaskInfo runningTaskInfo2;
        ArrayList arrayList = new ArrayList();
        for (RemoteAnimationTarget remoteAnimationTarget2 : remoteAnimationTargets.unfilteredApps) {
            if (remoteAnimationTarget2 != remoteAnimationTarget && (remoteAnimationTarget == null || (runningTaskInfo = remoteAnimationTarget.taskInfo) == null || (runningTaskInfo2 = remoteAnimationTarget2.taskInfo) == null || runningTaskInfo.parentTaskId != runningTaskInfo2.taskId)) {
                arrayList.add(remoteAnimationTarget2);
            }
        }
        return new RemoteAnimationTargets((RemoteAnimationTarget[]) arrayList.toArray(new RemoteAnimationTarget[arrayList.size()]), remoteAnimationTargets.wallpapers, remoteAnimationTargets.nonApps, remoteAnimationTargets.targetMode);
    }

    private RemoteAnimationTargets createRemoteAnimationTargetsForTaskId(RemoteAnimationTargets remoteAnimationTargets, int i4) {
        RemoteAnimationTarget[] remoteAnimationTargetArr;
        RemoteAnimationTarget[] remoteAnimationTargetArr2 = remoteAnimationTargets.unfilteredApps;
        int length = remoteAnimationTargetArr2.length;
        int i5 = 0;
        while (true) {
            if (i5 >= length) {
                remoteAnimationTargetArr = null;
                break;
            }
            RemoteAnimationTarget remoteAnimationTarget = remoteAnimationTargetArr2[i5];
            if (remoteAnimationTarget.taskId == i4) {
                remoteAnimationTargetArr = new RemoteAnimationTarget[]{remoteAnimationTarget};
                break;
            }
            i5++;
        }
        if (remoteAnimationTargetArr == null) {
            remoteAnimationTargetArr = new RemoteAnimationTarget[0];
        }
        return new RemoteAnimationTargets(remoteAnimationTargetArr, remoteAnimationTargets.wallpapers, remoteAnimationTargets.nonApps, remoteAnimationTargets.targetMode);
    }

    private Rect getStartBounds(RemoteAnimationTarget remoteAnimationTarget) {
        Rect rect = remoteAnimationTarget.startBounds;
        return rect == null ? remoteAnimationTarget.screenSpaceBounds : rect;
    }

    private void init(Context context, BaseActivityInterface baseActivityInterface, int i4, boolean z4) {
        this.mRemoteTargetHandles = createHandles(context, baseActivityInterface, i4, z4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$assignTargetsForSplitScreen$0(RemoteAnimationTargets remoteAnimationTargets, RemoteAnimationTarget remoteAnimationTarget) {
        return remoteAnimationTarget.mode == remoteAnimationTargets.targetMode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$assignTargetsForSplitScreen$1(RemoteAnimationTarget remoteAnimationTarget) {
        return remoteAnimationTarget.windowConfiguration.getWindowingMode() == 6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$assignTargetsForSplitScreen$2(RemoteAnimationTarget remoteAnimationTarget) {
        return remoteAnimationTarget.windowConfiguration.getWindowingMode() == 6;
    }

    public RemoteTargetHandle[] assignTargets(RemoteAnimationTargets remoteAnimationTargets) {
        int i4 = 0;
        while (true) {
            RemoteTargetHandle[] remoteTargetHandleArr = this.mRemoteTargetHandles;
            if (i4 >= remoteTargetHandleArr.length) {
                return remoteTargetHandleArr;
            }
            RemoteAnimationTarget remoteAnimationTarget = remoteAnimationTargets.apps[i4];
            remoteTargetHandleArr[i4].mTransformParams.setTargetSet(createRemoteAnimationTargetsForTarget(remoteAnimationTargets, null));
            this.mRemoteTargetHandles[i4].mTaskViewSimulator.setPreview(remoteAnimationTarget, null);
            i4++;
        }
    }

    public RemoteTargetHandle[] assignTargetsForDesktop(RemoteAnimationTargets remoteAnimationTargets) {
        int i4 = 0;
        while (true) {
            RemoteTargetHandle[] remoteTargetHandleArr = this.mRemoteTargetHandles;
            if (i4 >= remoteTargetHandleArr.length) {
                return remoteTargetHandleArr;
            }
            RemoteAnimationTarget remoteAnimationTarget = remoteAnimationTargets.apps[i4];
            remoteTargetHandleArr[i4].mTransformParams.setTargetSet(createRemoteAnimationTargetsForTaskId(remoteAnimationTargets, remoteAnimationTarget.taskId));
            this.mRemoteTargetHandles[i4].mTaskViewSimulator.setPreview(remoteAnimationTarget, null);
            i4++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0113, code lost:
        r3 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.quickstep.RemoteTargetGluer.RemoteTargetHandle[] assignTargetsForSplitScreen(final com.android.quickstep.RemoteAnimationTargets r11) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.RemoteTargetGluer.assignTargetsForSplitScreen(com.android.quickstep.RemoteAnimationTargets):com.android.quickstep.RemoteTargetGluer$RemoteTargetHandle[]");
    }

    public RemoteTargetHandle[] getRemoteTargetHandles() {
        return this.mRemoteTargetHandles;
    }

    public SplitConfigurationOptions$SplitBounds getSplitBounds() {
        return this.mSplitBounds;
    }

    public RemoteTargetGluer(Context context, BaseActivityInterface baseActivityInterface) {
        int visibleDesktopTaskCount;
        if (DesktopTaskView.DESKTOP_MODE_SUPPORTED && (visibleDesktopTaskCount = ((SystemUiProxy) SystemUiProxy.INSTANCE.get(context)).getVisibleDesktopTaskCount(context.getDisplayId())) > 0) {
            init(context, baseActivityInterface, visibleDesktopTaskCount, true);
        } else {
            init(context, baseActivityInterface, 2, false);
        }
    }
}
