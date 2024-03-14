package com.android.launcher3.taskbar;

import android.content.Intent;
import android.content.pm.LauncherApps;
import android.util.Pair;
import android.view.View;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.accessibility.BaseAccessibilityDelegate;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.util.ShortcutUtil;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.util.LogUtils;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class TaskbarShortcutMenuAccessibilityDelegate extends BaseAccessibilityDelegate {
    private final LauncherApps mLauncherApps;
    private final StatsLogManager mStatsLogManager;

    public TaskbarShortcutMenuAccessibilityDelegate(TaskbarActivityContext taskbarActivityContext) {
        super(taskbarActivityContext);
        this.mLauncherApps = (LauncherApps) taskbarActivityContext.getSystemService(LauncherApps.class);
        this.mStatsLogManager = taskbarActivityContext.getStatsLogManager();
        this.mActions.put(R.id.action_deep_shortcuts, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_deep_shortcuts, R.string.action_deep_shortcut, 47));
        this.mActions.put(R.id.action_shortcuts_and_notifications, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_deep_shortcuts, R.string.shortcuts_menu_with_notifications_description, 47));
        this.mActions.put(R.id.action_move_to_top_or_left, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_move_to_top_or_left, R.string.move_drop_target_top_or_left, 40));
        this.mActions.put(R.id.action_move_to_bottom_or_right, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_move_to_bottom_or_right, R.string.move_drop_target_bottom_or_right, 46));
    }

    @Override // com.android.launcher3.accessibility.BaseAccessibilityDelegate
    public final void getSupportedActions(View view, ItemInfo itemInfo, List list) {
        if (ShortcutUtil.supportsShortcuts(itemInfo)) {
            ((ArrayList) list).add((BaseAccessibilityDelegate.LauncherAction) this.mActions.get(NotificationListener.getInstanceIfConnected() != null ? R.id.action_shortcuts_and_notifications : R.id.action_deep_shortcuts));
        }
        ArrayList arrayList = (ArrayList) list;
        arrayList.add((BaseAccessibilityDelegate.LauncherAction) this.mActions.get(R.id.action_move_to_top_or_left));
        arrayList.add((BaseAccessibilityDelegate.LauncherAction) this.mActions.get(R.id.action_move_to_bottom_or_right));
    }

    @Override // com.android.launcher3.accessibility.BaseAccessibilityDelegate
    public final boolean performAction(View view, ItemInfo itemInfo, int i4, boolean z4) {
        if ((itemInfo instanceof WorkspaceItemInfo) && (i4 == R.id.action_move_to_top_or_left || i4 == R.id.action_move_to_bottom_or_right)) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
            int i5 = i4 == R.id.action_move_to_top_or_left ? 0 : 1;
            Pair shellShareableInstanceId = LogUtils.getShellShareableInstanceId();
            this.mStatsLogManager.logger().withItemInfo(itemInfo).withInstanceId((InstanceId) shellShareableInstanceId.second).log(i5 == 0 ? StatsLogManager.LauncherEvent.LAUNCHER_APP_ICON_MENU_SPLIT_LEFT_TOP : StatsLogManager.LauncherEvent.LAUNCHER_APP_ICON_MENU_SPLIT_RIGHT_BOTTOM);
            if (workspaceItemInfo.itemType == 6) {
                ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).startShortcut(workspaceItemInfo.intent.getPackage(), workspaceItemInfo.getDeepShortcutId(), i5, null, workspaceItemInfo.user, (com.android.internal.logging.InstanceId) shellShareableInstanceId.first);
            } else {
                ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).startIntent(this.mLauncherApps.getMainActivityLaunchIntent(itemInfo.getIntent().getComponent(), null, itemInfo.user), itemInfo.user.getIdentifier(), new Intent(), i5, null, (com.android.internal.logging.InstanceId) shellShareableInstanceId.first);
            }
            return true;
        } else if (i4 == R.id.action_deep_shortcuts || i4 == R.id.action_shortcuts_and_notifications) {
            TaskbarActivityContext taskbarActivityContext = (TaskbarActivityContext) this.mContext;
            BubbleTextView bubbleTextView = (BubbleTextView) view;
            taskbarActivityContext.setTaskbarWindowFullscreen(true);
            bubbleTextView.post(new P(taskbarActivityContext, bubbleTextView, 0));
            return true;
        } else {
            return false;
        }
    }
}
