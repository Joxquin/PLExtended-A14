package com.android.launcher3.taskbar;

import android.content.Intent;
import android.content.pm.LauncherApps;
import android.graphics.Point;
import android.os.UserHandle;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dot.FolderDotInfo;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.popup.PopupLiveUpdateHandler;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.splitscreen.SplitShortcut;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.ShortcutUtil;
import com.android.launcher3.util.SplitConfigurationOptions$SplitPositionOption;
import com.android.launcher3.views.ActivityContext;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.util.LogUtils;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public final class TaskbarPopupController implements TaskbarControllers.LoggableTaskbarController {
    private static final C0457u0 APP_INFO = new C0457u0();
    private boolean mAllowInitialSplitSelection;
    private final TaskbarActivityContext mContext;
    private TaskbarControllers mControllers;
    private final PopupDataProvider mPopupDataProvider = new PopupDataProvider(new Consumer() { // from class: com.android.launcher3.taskbar.t0
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            TaskbarPopupController.c(TaskbarPopupController.this, (Predicate) obj);
        }
    });

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class TaskbarPopupItemDragHandler implements PopupContainerWithArrow.PopupItemDragHandler {
        protected final Point mIconLastTouchPos = new Point();

        public TaskbarPopupItemDragHandler() {
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            if (view.getParent() instanceof DeepShortcutView) {
                DeepShortcutView deepShortcutView = (DeepShortcutView) view.getParent();
                deepShortcutView.setWillDrawIcon();
                Point point = new Point();
                point.x = this.mIconLastTouchPos.x - deepShortcutView.getIconCenter().x;
                point.y = this.mIconLastTouchPos.y - TaskbarPopupController.this.mContext.getDeviceProfile().taskbarIconSize;
                ((TaskbarDragController) ((ActivityContext) ActivityContext.lookupContext(view.getContext())).getDragController()).startDragOnLongClick(deepShortcutView, point);
                return false;
            }
            return false;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0 || action == 2) {
                this.mIconLastTouchPos.set((int) motionEvent.getX(), (int) motionEvent.getY());
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class TaskbarSplitShortcut extends SplitShortcut {
        private final boolean mAllowInitialSplitSelection;

        public TaskbarSplitShortcut(BaseTaskbarContext baseTaskbarContext, ItemInfo itemInfo, View view, SplitConfigurationOptions$SplitPositionOption splitConfigurationOptions$SplitPositionOption, boolean z4) {
            super(splitConfigurationOptions$SplitPositionOption.iconResId, splitConfigurationOptions$SplitPositionOption.textResId, baseTaskbarContext, itemInfo, view, splitConfigurationOptions$SplitPositionOption);
            this.mAllowInitialSplitSelection = z4;
        }

        @Override // com.android.launcher3.splitscreen.SplitShortcut, android.view.View.OnClickListener
        public final void onClick(View view) {
            ((BaseTaskbarContext) this.mTarget).onSplitScreenMenuButtonClicked();
            AbstractFloatingView.closeAllOpenViews((ActivityContext) this.mTarget);
            if (this.mAllowInitialSplitSelection) {
                super.onClick(view);
                return;
            }
            Pair shellShareableInstanceId = LogUtils.getShellShareableInstanceId();
            ((BaseTaskbarContext) this.mTarget).getStatsLogManager().logger().withItemInfo(this.mItemInfo).withInstanceId((InstanceId) shellShareableInstanceId.second).log(getPosition().stagePosition == 0 ? StatsLogManager.LauncherEvent.LAUNCHER_APP_ICON_MENU_SPLIT_LEFT_TOP : StatsLogManager.LauncherEvent.LAUNCHER_APP_ICON_MENU_SPLIT_RIGHT_BOTTOM);
            ItemInfo itemInfo = this.mItemInfo;
            if (itemInfo.itemType != 6) {
                ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mTarget)).startIntent(((LauncherApps) ((BaseTaskbarContext) this.mTarget).getSystemService(LauncherApps.class)).getMainActivityLaunchIntent(this.mItemInfo.getIntent().getComponent(), null, this.mItemInfo.user), this.mItemInfo.user.getIdentifier(), new Intent(), getPosition().stagePosition, null, (com.android.internal.logging.InstanceId) shellShareableInstanceId.first);
                return;
            }
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mTarget)).startShortcut(workspaceItemInfo.intent.getPackage(), workspaceItemInfo.getDeepShortcutId(), getPosition().stagePosition, null, workspaceItemInfo.user, (com.android.internal.logging.InstanceId) shellShareableInstanceId.first);
        }
    }

    public TaskbarPopupController(TaskbarActivityContext taskbarActivityContext) {
        this.mContext = taskbarActivityContext;
    }

    public static /* synthetic */ void a(TaskbarPopupController taskbarPopupController, Predicate predicate, ItemInfo itemInfo, View view) {
        taskbarPopupController.getClass();
        if ((itemInfo instanceof WorkspaceItemInfo) && (view instanceof BubbleTextView)) {
            if (predicate.test(itemInfo)) {
                ((BubbleTextView) view).applyDotState(itemInfo, true);
            }
        } else if ((itemInfo instanceof FolderInfo) && (view instanceof FolderIcon)) {
            FolderInfo folderInfo = (FolderInfo) itemInfo;
            if (folderInfo.contents.stream().anyMatch(predicate)) {
                FolderDotInfo folderDotInfo = new FolderDotInfo();
                Iterator it = folderInfo.contents.iterator();
                while (it.hasNext()) {
                    folderDotInfo.addDotInfo(taskbarPopupController.mPopupDataProvider.getDotInfoForItem((WorkspaceItemInfo) it.next()));
                }
                ((FolderIcon) view).setDotInfo(folderDotInfo);
            }
        }
    }

    public static /* synthetic */ SystemShortcut b(TaskbarPopupController taskbarPopupController, SplitConfigurationOptions$SplitPositionOption splitConfigurationOptions$SplitPositionOption, BaseTaskbarContext baseTaskbarContext, ItemInfo itemInfo, View view) {
        taskbarPopupController.getClass();
        return new TaskbarSplitShortcut(baseTaskbarContext, itemInfo, view, splitConfigurationOptions$SplitPositionOption, taskbarPopupController.mAllowInitialSplitSelection);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.launcher3.taskbar.y0] */
    public static void c(TaskbarPopupController taskbarPopupController, final Predicate predicate) {
        taskbarPopupController.getClass();
        final PackageUserKey packageUserKey = new PackageUserKey((String) null, (UserHandle) null);
        z0 z0Var = new z0(taskbarPopupController, new Predicate() { // from class: com.android.launcher3.taskbar.y0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                PackageUserKey packageUserKey2 = PackageUserKey.this;
                return !packageUserKey2.updateFromItemInfo((ItemInfo) obj) || predicate.test(packageUserKey2);
            }
        });
        taskbarPopupController.mControllers.taskbarViewController.mapOverItems(z0Var);
        Folder open = Folder.getOpen(taskbarPopupController.mContext);
        if (open != null) {
            open.iterateOverItems(z0Var);
        }
        taskbarPopupController.mControllers.taskbarAllAppsController.updateNotificationDots(predicate);
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarPopupController:");
        this.mPopupDataProvider.dump(str + "\t", printWriter);
    }

    public final PopupDataProvider getPopupDataProvider() {
        return this.mPopupDataProvider;
    }

    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
        NotificationListener.addNotificationsChangedListener(this.mPopupDataProvider);
    }

    public final void onDestroy() {
        NotificationListener.removeNotificationsChangedListener(this.mPopupDataProvider);
    }

    public final void setAllowInitialSplitSelection(boolean z4) {
        this.mAllowInitialSplitSelection = z4;
    }

    public final void setDeepShortcutMap(HashMap hashMap) {
        this.mPopupDataProvider.setDeepShortcutMap(hashMap);
    }

    public final PopupContainerWithArrow showForIcon(final BubbleTextView bubbleTextView) {
        PopupContainerWithArrow popupContainerWithArrow;
        final BaseTaskbarContext baseTaskbarContext = (BaseTaskbarContext) ActivityContext.lookupContext(bubbleTextView.getContext());
        if (PopupContainerWithArrow.getOpen(baseTaskbarContext) != null) {
            bubbleTextView.clearFocus();
            return null;
        }
        final ItemInfo itemInfo = (ItemInfo) bubbleTextView.getTag();
        if (ShortcutUtil.supportsShortcuts(itemInfo)) {
            PopupDataProvider popupDataProvider = this.mPopupDataProvider;
            int shortcutCountForItem = popupDataProvider.getShortcutCountForItem(itemInfo);
            List list = (List) Stream.concat(Stream.of(APP_INFO), this.mControllers.uiController.getSplitMenuOptions()).map(new Function() { // from class: com.android.launcher3.taskbar.v0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((SystemShortcut.Factory) obj).getShortcut(BaseTaskbarContext.this, itemInfo, bubbleTextView);
                }
            }).filter(new C0461w0()).collect(Collectors.toList());
            if (FeatureFlags.ENABLE_MATERIAL_U_POPUP.get()) {
                popupContainerWithArrow = (PopupContainerWithArrow) baseTaskbarContext.mLayoutInflater.inflate(R.layout.popup_container_material_u, (ViewGroup) baseTaskbarContext.getDragLayer(), false);
                popupContainerWithArrow.populateAndShowRowsMaterialU(bubbleTextView, shortcutCountForItem, list);
            } else {
                PopupContainerWithArrow popupContainerWithArrow2 = (PopupContainerWithArrow) baseTaskbarContext.mLayoutInflater.inflate(R.layout.popup_container, (ViewGroup) baseTaskbarContext.getDragLayer(), false);
                DotInfo dotInfoForItem = popupDataProvider.getDotInfoForItem(itemInfo);
                popupContainerWithArrow2.populateAndShow(bubbleTextView, shortcutCountForItem, dotInfoForItem == null ? Collections.EMPTY_LIST : PopupDataProvider.getNotificationsForItem(itemInfo, dotInfoForItem.getNotificationKeys()), list);
                popupContainerWithArrow = popupContainerWithArrow2;
            }
            popupContainerWithArrow.addOnAttachStateChangeListener(new PopupLiveUpdateHandler(baseTaskbarContext, popupContainerWithArrow) { // from class: com.android.launcher3.taskbar.TaskbarPopupController.1
            });
            popupContainerWithArrow.setPopupItemDragHandler(new TaskbarPopupItemDragHandler());
            this.mControllers.taskbarDragController.addDragListener(popupContainerWithArrow);
            popupContainerWithArrow.requestFocus();
            baseTaskbarContext.onPopupVisibilityChanged(true);
            popupContainerWithArrow.addOnCloseCallback(new RunnableC0463x0(baseTaskbarContext, 0));
            return popupContainerWithArrow;
        }
        return null;
    }
}
