package com.android.quickstep;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.SplitConfigurationOptions$SplitStageInfo;
import com.android.launcher3.util.TraceHelper;
import com.android.quickstep.TopTaskTracker;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import com.android.wm.shell.splitscreen.ISplitScreenListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class TopTaskTracker extends ISplitScreenListener.Stub implements TaskStackChangeListener {
    private static final int HISTORY_SIZE = 5;
    public static MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new J1());
    private final LinkedList mOrderedTaskList = new LinkedList();
    private final SplitConfigurationOptions$SplitStageInfo mMainStagePosition = new SplitConfigurationOptions$SplitStageInfo();
    private final SplitConfigurationOptions$SplitStageInfo mSideStagePosition = new SplitConfigurationOptions$SplitStageInfo();
    private int mPinnedTaskId = -1;

    private TopTaskTracker(Context context) {
        TaskStackChangeListeners.getInstance().registerTaskStackListener(this);
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(context)).registerSplitScreenListener(this);
    }

    public static /* synthetic */ TopTaskTracker g(Context context) {
        return new TopTaskTracker(context);
    }

    public static /* synthetic */ ActivityManager.RunningTaskInfo[] lambda$getCachedTopTask$4() {
        return ActivityManagerWrapper.getInstance().getRunningTasks(true);
    }

    public static /* synthetic */ ActivityManager.RunningTaskInfo[] lambda$getCachedTopTask$5() {
        return ActivityManagerWrapper.getInstance().getRunningTasks(false);
    }

    public /* synthetic */ boolean lambda$getCachedTopTask$6(ActivityManager.RunningTaskInfo runningTaskInfo) {
        return runningTaskInfo.taskId == this.mPinnedTaskId;
    }

    public static /* synthetic */ boolean lambda$onTaskMovedToFront$1(ActivityManager.RunningTaskInfo runningTaskInfo, ActivityManager.RunningTaskInfo runningTaskInfo2) {
        return runningTaskInfo2.taskId == runningTaskInfo.taskId;
    }

    public static /* synthetic */ boolean lambda$onTaskMovedToFront$2(ActivityManager.RunningTaskInfo runningTaskInfo) {
        return runningTaskInfo.displayId == 0;
    }

    public static /* synthetic */ boolean lambda$onTaskMovedToFront$3(ActivityManager.RunningTaskInfo runningTaskInfo, ActivityManager.RunningTaskInfo runningTaskInfo2) {
        return runningTaskInfo2.taskId == runningTaskInfo.taskId;
    }

    public static /* synthetic */ boolean lambda$onTaskRemoved$0(int i4, ActivityManager.RunningTaskInfo runningTaskInfo) {
        return runningTaskInfo.taskId == i4;
    }

    public CachedTaskInfo getCachedTopTask(boolean z4) {
        if (z4) {
            return new CachedTaskInfo(Arrays.asList((ActivityManager.RunningTaskInfo[]) TraceHelper.allowIpcs("getCachedTopTask.true", new Supplier() { // from class: com.android.quickstep.K1
                @Override // java.util.function.Supplier
                public final Object get() {
                    ActivityManager.RunningTaskInfo[] lambda$getCachedTopTask$5;
                    ActivityManager.RunningTaskInfo[] lambda$getCachedTopTask$4;
                    switch (r1) {
                        case 0:
                            lambda$getCachedTopTask$4 = TopTaskTracker.lambda$getCachedTopTask$4();
                            return lambda$getCachedTopTask$4;
                        default:
                            lambda$getCachedTopTask$5 = TopTaskTracker.lambda$getCachedTopTask$5();
                            return lambda$getCachedTopTask$5;
                    }
                }
            })));
        }
        if (this.mOrderedTaskList.isEmpty()) {
            Collections.addAll(this.mOrderedTaskList, (ActivityManager.RunningTaskInfo[]) TraceHelper.allowIpcs("getCachedTopTask.false", new Supplier() { // from class: com.android.quickstep.K1
                @Override // java.util.function.Supplier
                public final Object get() {
                    ActivityManager.RunningTaskInfo[] lambda$getCachedTopTask$5;
                    ActivityManager.RunningTaskInfo[] lambda$getCachedTopTask$4;
                    switch (r1) {
                        case 0:
                            lambda$getCachedTopTask$4 = TopTaskTracker.lambda$getCachedTopTask$4();
                            return lambda$getCachedTopTask$4;
                        default:
                            lambda$getCachedTopTask$5 = TopTaskTracker.lambda$getCachedTopTask$5();
                            return lambda$getCachedTopTask$5;
                    }
                }
            }));
        }
        ArrayList arrayList = new ArrayList(this.mOrderedTaskList);
        arrayList.removeIf(new H1(2, this));
        return new CachedTaskInfo(arrayList);
    }

    public int[] getRunningSplitTaskIds() {
        int i4;
        SplitConfigurationOptions$SplitStageInfo splitConfigurationOptions$SplitStageInfo = this.mMainStagePosition;
        int i5 = splitConfigurationOptions$SplitStageInfo.taskId;
        if (i5 == -1 || (i4 = this.mSideStagePosition.taskId) == -1) {
            return new int[0];
        }
        int[] iArr = new int[2];
        if (splitConfigurationOptions$SplitStageInfo.stagePosition == 0) {
            iArr[0] = i5;
            iArr[1] = i4;
        } else {
            iArr[1] = i5;
            iArr[0] = i4;
        }
        return iArr;
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public void onActivityPinned(String str, int i4, int i5, int i6) {
        this.mPinnedTaskId = i5;
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public void onActivityUnpinned() {
        this.mPinnedTaskId = -1;
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreenListener
    public void onStagePositionChanged(int i4, int i5) {
        if (i4 == 0) {
            this.mMainStagePosition.stagePosition = i5;
        } else {
            this.mSideStagePosition.stagePosition = i5;
        }
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public void onTaskMovedToFront(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ActivityManager.RunningTaskInfo runningTaskInfo2;
        this.mOrderedTaskList.removeIf(new H1(0, runningTaskInfo));
        this.mOrderedTaskList.addFirst(runningTaskInfo);
        if (runningTaskInfo.displayId != 0 && (runningTaskInfo2 = (ActivityManager.RunningTaskInfo) this.mOrderedTaskList.stream().filter(new I1(0)).findFirst().orElse(null)) != null) {
            this.mOrderedTaskList.removeIf(new H1(1, runningTaskInfo2));
            this.mOrderedTaskList.addFirst(runningTaskInfo2);
        }
        if (this.mOrderedTaskList.size() >= 5) {
            Iterator descendingIterator = this.mOrderedTaskList.descendingIterator();
            while (descendingIterator.hasNext()) {
                int i4 = ((ActivityManager.RunningTaskInfo) descendingIterator.next()).taskId;
                if (i4 != runningTaskInfo.taskId && i4 != this.mMainStagePosition.taskId && i4 != this.mSideStagePosition.taskId) {
                    descendingIterator.remove();
                    return;
                }
            }
        }
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public void onTaskRemoved(final int i4) {
        this.mOrderedTaskList.removeIf(new Predicate() { // from class: com.android.quickstep.G1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$onTaskRemoved$0;
                lambda$onTaskRemoved$0 = TopTaskTracker.lambda$onTaskRemoved$0(i4, (ActivityManager.RunningTaskInfo) obj);
                return lambda$onTaskRemoved$0;
            }
        });
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreenListener
    public void onTaskStageChanged(int i4, int i5, boolean z4) {
        if (z4 && i5 != -1) {
            if (i5 == 0) {
                this.mMainStagePosition.taskId = i4;
                return;
            } else {
                this.mSideStagePosition.taskId = i4;
                return;
            }
        }
        SplitConfigurationOptions$SplitStageInfo splitConfigurationOptions$SplitStageInfo = this.mMainStagePosition;
        if (splitConfigurationOptions$SplitStageInfo.taskId == i4) {
            splitConfigurationOptions$SplitStageInfo.taskId = -1;
            return;
        }
        SplitConfigurationOptions$SplitStageInfo splitConfigurationOptions$SplitStageInfo2 = this.mSideStagePosition;
        if (splitConfigurationOptions$SplitStageInfo2.taskId == i4) {
            splitConfigurationOptions$SplitStageInfo2.taskId = -1;
        }
    }

    /* loaded from: classes.dex */
    public class CachedTaskInfo {
        public final List mAllCachedTasks;
        private final ActivityManager.RunningTaskInfo mTopTask;

        public CachedTaskInfo(List list) {
            this.mAllCachedTasks = list;
            this.mTopTask = list.isEmpty() ? null : (ActivityManager.RunningTaskInfo) list.get(0);
        }

        public static /* synthetic */ void lambda$getPlaceholderTasks$1(int i4, Task[] taskArr, int i5, ActivityManager.RunningTaskInfo runningTaskInfo) {
            if (runningTaskInfo.taskId == i4) {
                taskArr[i5] = Task.from(new Task.TaskKey(runningTaskInfo), runningTaskInfo, false);
            }
        }

        public static /* synthetic */ boolean lambda$otherVisibleTaskThisIsExcludedOver$0(ActivityManager.RunningTaskInfo runningTaskInfo) {
            return runningTaskInfo.isVisible && (runningTaskInfo.baseIntent.getFlags() & QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED) == 0;
        }

        public String getPackageName() {
            ComponentName componentName;
            ActivityManager.RunningTaskInfo runningTaskInfo = this.mTopTask;
            if (runningTaskInfo == null || (componentName = runningTaskInfo.baseActivity) == null) {
                return null;
            }
            return componentName.getPackageName();
        }

        public Task[] getPlaceholderTasks() {
            return this.mTopTask == null ? new Task[0] : new Task[]{Task.from(new Task.TaskKey(this.mTopTask), this.mTopTask, false)};
        }

        public int getTaskId() {
            ActivityManager.RunningTaskInfo runningTaskInfo = this.mTopTask;
            if (runningTaskInfo == null) {
                return -1;
            }
            return runningTaskInfo.taskId;
        }

        public Integer getUserId() {
            ActivityManager.RunningTaskInfo runningTaskInfo = this.mTopTask;
            if (runningTaskInfo == null) {
                return null;
            }
            return Integer.valueOf(runningTaskInfo.userId);
        }

        public boolean isFreeformTask() {
            ActivityManager.RunningTaskInfo runningTaskInfo = this.mTopTask;
            return runningTaskInfo != null && runningTaskInfo.configuration.windowConfiguration.getWindowingMode() == 5;
        }

        public boolean isHomeTask() {
            ActivityManager.RunningTaskInfo runningTaskInfo = this.mTopTask;
            return runningTaskInfo != null && runningTaskInfo.configuration.windowConfiguration.getActivityType() == 2;
        }

        public boolean isRecentsTask() {
            ActivityManager.RunningTaskInfo runningTaskInfo = this.mTopTask;
            return runningTaskInfo != null && runningTaskInfo.configuration.windowConfiguration.getActivityType() == 3;
        }

        public boolean isRootChooseActivity() {
            ActivityManager.RunningTaskInfo runningTaskInfo = this.mTopTask;
            return runningTaskInfo != null && "android.intent.action.CHOOSER".equals(runningTaskInfo.baseIntent.getAction());
        }

        public CachedTaskInfo otherVisibleTaskThisIsExcludedOver() {
            ActivityManager.RunningTaskInfo runningTaskInfo = this.mTopTask;
            if (runningTaskInfo == null || (runningTaskInfo.baseIntent.getFlags() & QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED) == 0) {
                return null;
            }
            List list = this.mAllCachedTasks.stream().filter(new I1(1)).toList();
            if (list.isEmpty()) {
                return null;
            }
            return new CachedTaskInfo(list);
        }

        public Task[] getPlaceholderTasks(int[] iArr) {
            if (this.mTopTask == null) {
                return new Task[0];
            }
            final Task[] taskArr = new Task[iArr.length];
            for (final int i4 = 0; i4 < iArr.length; i4++) {
                final int i5 = iArr[i4];
                this.mAllCachedTasks.forEach(new Consumer() { // from class: com.android.quickstep.L1
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        TopTaskTracker.CachedTaskInfo.lambda$getPlaceholderTasks$1(i5, taskArr, i4, (ActivityManager.RunningTaskInfo) obj);
                    }
                });
            }
            return taskArr;
        }
    }
}
