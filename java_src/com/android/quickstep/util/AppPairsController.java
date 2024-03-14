package com.android.quickstep.util;

import android.content.Context;
import android.content.Intent;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.recents.model.Task;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class AppPairsController {
    private static final int FULL_RATIO = 2;
    private static final int LEFT_TOP = 0;
    private static final int POINT_FIVE_RATIO = 1;
    private static final int POINT_SEVEN_RATIO = 2;
    private static final int POINT_THREE_RATIO = 0;
    private static final int RIGHT_BOTTOM = 4;
    public int DEFAULT_RATIO = 1;
    private final Context mContext;
    private final SplitSelectStateController mSplitSelectStateController;
    private final StatsLogManager mStatsLogManager;

    public AppPairsController(Context context, SplitSelectStateController splitSelectStateController, StatsLogManager statsLogManager) {
        this.mContext = context;
        this.mSplitSelectStateController = splitSelectStateController;
        this.mStatsLogManager = statsLogManager;
    }

    private int complement(int i4) {
        return 2 - i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$launchAppPair$3(WorkspaceItemInfo workspaceItemInfo, WorkspaceItemInfo workspaceItemInfo2, List list) {
        Intent intent;
        int i4;
        Task task = (Task) list.get(0);
        if (task != null) {
            i4 = task.key.id;
            intent = null;
        } else {
            intent = workspaceItemInfo.intent;
            i4 = -1;
        }
        SplitSelectStateController splitSelectStateController = this.mSplitSelectStateController;
        splitSelectStateController.setInitialTaskSelect(intent, 0, workspaceItemInfo, StatsLogManager.LauncherEvent.LAUNCHER_APP_PAIR_LAUNCH, i4);
        Task task2 = (Task) list.get(1);
        if (task2 != null) {
            this.mSplitSelectStateController.setSecondTask(task2);
        } else {
            this.mSplitSelectStateController.setSecondTask(workspaceItemInfo2.intent, workspaceItemInfo2.user);
        }
        this.mSplitSelectStateController.launchSplitTasks();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveAppPair$0(IconCache iconCache, FolderInfo folderInfo, WorkspaceItemInfo workspaceItemInfo) {
        workspaceItemInfo.title = "";
        workspaceItemInfo.bitmap = iconCache.getDefaultIcon(folderInfo.user);
        iconCache.getTitleAndIcon(workspaceItemInfo, workspaceItemInfo.usingLowResIcon());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveAppPair$1(FolderInfo folderInfo) {
        LauncherAccessibilityDelegate accessibilityDelegate = Launcher.getLauncher(this.mContext).getAccessibilityDelegate();
        if (accessibilityDelegate != null) {
            accessibilityDelegate.addToWorkspace(folderInfo);
            this.mStatsLogManager.logger().withItemInfo(folderInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_APP_PAIR_SAVE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveAppPair$2(final FolderInfo folderInfo, final IconCache iconCache) {
        folderInfo.contents.forEach(new Consumer() { // from class: com.android.quickstep.util.b
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AppPairsController.lambda$saveAppPair$0(iconCache, folderInfo, (WorkspaceItemInfo) obj);
            }
        });
        Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.util.c
            @Override // java.lang.Runnable
            public final void run() {
                AppPairsController.this.lambda$saveAppPair$1(folderInfo);
            }
        });
    }

    public void launchAppPair(final WorkspaceItemInfo workspaceItemInfo, final WorkspaceItemInfo workspaceItemInfo2) {
        this.mSplitSelectStateController.findLastActiveTasksAndRunCallback(Arrays.asList(new ComponentKey(workspaceItemInfo.getTargetComponent(), workspaceItemInfo.user), new ComponentKey(workspaceItemInfo2.getTargetComponent(), workspaceItemInfo2.user)), new Consumer() { // from class: com.android.quickstep.util.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AppPairsController.this.lambda$launchAppPair$3(workspaceItemInfo, workspaceItemInfo2, (List) obj);
            }
        });
    }

    public void saveAppPair(TaskView taskView) {
        TaskView.TaskIdAttributeContainer[] taskIdAttributeContainers = taskView.getTaskIdAttributeContainers();
        WorkspaceItemInfo itemInfo = taskIdAttributeContainers[0].getItemInfo();
        itemInfo.getClass();
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(itemInfo);
        WorkspaceItemInfo itemInfo2 = taskIdAttributeContainers[1].getItemInfo();
        itemInfo2.getClass();
        WorkspaceItemInfo workspaceItemInfo2 = new WorkspaceItemInfo(itemInfo2);
        workspaceItemInfo.itemType = 0;
        workspaceItemInfo2.itemType = 0;
        int i4 = this.DEFAULT_RATIO;
        workspaceItemInfo.rank = i4 + 0;
        workspaceItemInfo2.rank = complement(i4) + 4;
        final FolderInfo folderInfo = new FolderInfo();
        folderInfo.itemType = 10;
        folderInfo.add(folderInfo.contents.size(), workspaceItemInfo, false);
        folderInfo.add(folderInfo.contents.size(), workspaceItemInfo2, false);
        folderInfo.title = "App pair 1";
        final IconCache iconCache = LauncherAppState.getInstance(this.mContext).getIconCache();
        Executors.MODEL_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.util.d
            @Override // java.lang.Runnable
            public final void run() {
                AppPairsController.this.lambda$saveAppPair$2(folderInfo, iconCache);
            }
        });
    }
}
