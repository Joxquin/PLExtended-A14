package com.android.launcher3.accessibility;

import android.appwidget.AppWidgetProviderInfo;
import android.util.Log;
import android.view.View;
import com.android.launcher3.ButtonDropTarget;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.Workspace;
import com.android.launcher3.accessibility.BaseAccessibilityDelegate;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemFactory;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.ShortcutUtil;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.OptionsPopupView;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.util.WidgetSizes;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class LauncherAccessibilityDelegate extends BaseAccessibilityDelegate {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4526d = 0;

    public LauncherAccessibilityDelegate(Launcher launcher) {
        super(launcher);
        this.mActions.put(R.id.action_remove, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_remove, R.string.remove_drop_target_label, 52));
        this.mActions.put(R.id.action_uninstall, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_uninstall, R.string.uninstall_drop_target_label, 49));
        this.mActions.put(R.id.action_dismiss_prediction, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_dismiss_prediction, R.string.dismiss_prediction_label, 52));
        this.mActions.put(R.id.action_reconfigure, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_reconfigure, R.string.gadget_setup_text, 33));
        this.mActions.put(R.id.action_add_to_workspace, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_add_to_workspace, R.string.action_add_to_workspace, 44));
        this.mActions.put(R.id.action_move, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_move, R.string.action_move, 41));
        this.mActions.put(R.id.action_move_to_workspace, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_move_to_workspace, R.string.action_move_to_workspace, 44));
        this.mActions.put(R.id.action_resize, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_resize, R.string.action_resize, 46));
        this.mActions.put(R.id.action_deep_shortcuts, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_deep_shortcuts, R.string.action_deep_shortcut, 47));
        this.mActions.put(R.id.action_shortcuts_and_notifications, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_deep_shortcuts, R.string.shortcuts_menu_with_notifications_description, 47));
    }

    private List getSupportedResizeActions(final View view, final LauncherAppWidgetInfo launcherAppWidgetInfo) {
        ArrayList arrayList = new ArrayList();
        AppWidgetProviderInfo appWidgetInfo = ((LauncherAppWidgetHostView) view).getAppWidgetInfo();
        if (appWidgetInfo == null) {
            return arrayList;
        }
        CellLayout cellLayout = view.getParent() instanceof DragView ? (CellLayout) ((DragView) view.getParent()).getContentViewParent().getParent() : (CellLayout) view.getParent().getParent();
        int i4 = appWidgetInfo.resizeMode & 1;
        StatsLogManager.LauncherEvent launcherEvent = StatsLogManager.LauncherEvent.IGNORE;
        if (i4 != 0) {
            if (cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX + launcherAppWidgetInfo.spanX, launcherAppWidgetInfo.cellY, 1, launcherAppWidgetInfo.spanY) || cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX - 1, launcherAppWidgetInfo.cellY, 1, launcherAppWidgetInfo.spanY)) {
                arrayList.add(new OptionsPopupView.OptionItem(this.mContext, R.string.action_increase_width, R.drawable.ic_widget_width_increase, launcherEvent, new View.OnLongClickListener(this) { // from class: C0.c

                    /* renamed from: e  reason: collision with root package name */
                    public final /* synthetic */ LauncherAccessibilityDelegate f128e;

                    {
                        this.f128e = this;
                    }

                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view2) {
                        switch (r4) {
                            case 0:
                                this.f128e.performResizeAction(R.string.action_increase_width, view, launcherAppWidgetInfo);
                                return true;
                            case 1:
                                this.f128e.performResizeAction(R.string.action_decrease_width, view, launcherAppWidgetInfo);
                                return true;
                            case 2:
                                this.f128e.performResizeAction(R.string.action_increase_height, view, launcherAppWidgetInfo);
                                return true;
                            default:
                                this.f128e.performResizeAction(R.string.action_decrease_height, view, launcherAppWidgetInfo);
                                return true;
                        }
                    }
                }));
            }
            int i5 = launcherAppWidgetInfo.spanX;
            if (i5 > launcherAppWidgetInfo.minSpanX && i5 > 1) {
                arrayList.add(new OptionsPopupView.OptionItem(this.mContext, R.string.action_decrease_width, R.drawable.ic_widget_width_decrease, launcherEvent, new View.OnLongClickListener(this) { // from class: C0.c

                    /* renamed from: e  reason: collision with root package name */
                    public final /* synthetic */ LauncherAccessibilityDelegate f128e;

                    {
                        this.f128e = this;
                    }

                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view2) {
                        switch (r4) {
                            case 0:
                                this.f128e.performResizeAction(R.string.action_increase_width, view, launcherAppWidgetInfo);
                                return true;
                            case 1:
                                this.f128e.performResizeAction(R.string.action_decrease_width, view, launcherAppWidgetInfo);
                                return true;
                            case 2:
                                this.f128e.performResizeAction(R.string.action_increase_height, view, launcherAppWidgetInfo);
                                return true;
                            default:
                                this.f128e.performResizeAction(R.string.action_decrease_height, view, launcherAppWidgetInfo);
                                return true;
                        }
                    }
                }));
            }
        }
        if ((appWidgetInfo.resizeMode & 2) != 0) {
            if (cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX, launcherAppWidgetInfo.cellY + launcherAppWidgetInfo.spanY, launcherAppWidgetInfo.spanX, 1) || cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX, launcherAppWidgetInfo.cellY - 1, launcherAppWidgetInfo.spanX, 1)) {
                arrayList.add(new OptionsPopupView.OptionItem(this.mContext, R.string.action_increase_height, R.drawable.ic_widget_height_increase, launcherEvent, new View.OnLongClickListener(this) { // from class: C0.c

                    /* renamed from: e  reason: collision with root package name */
                    public final /* synthetic */ LauncherAccessibilityDelegate f128e;

                    {
                        this.f128e = this;
                    }

                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view2) {
                        switch (r4) {
                            case 0:
                                this.f128e.performResizeAction(R.string.action_increase_width, view, launcherAppWidgetInfo);
                                return true;
                            case 1:
                                this.f128e.performResizeAction(R.string.action_decrease_width, view, launcherAppWidgetInfo);
                                return true;
                            case 2:
                                this.f128e.performResizeAction(R.string.action_increase_height, view, launcherAppWidgetInfo);
                                return true;
                            default:
                                this.f128e.performResizeAction(R.string.action_decrease_height, view, launcherAppWidgetInfo);
                                return true;
                        }
                    }
                }));
            }
            int i6 = launcherAppWidgetInfo.spanY;
            if (i6 > launcherAppWidgetInfo.minSpanY && i6 > 1) {
                arrayList.add(new OptionsPopupView.OptionItem(this.mContext, R.string.action_decrease_height, R.drawable.ic_widget_height_decrease, launcherEvent, new View.OnLongClickListener(this) { // from class: C0.c

                    /* renamed from: e  reason: collision with root package name */
                    public final /* synthetic */ LauncherAccessibilityDelegate f128e;

                    {
                        this.f128e = this;
                    }

                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view2) {
                        switch (r4) {
                            case 0:
                                this.f128e.performResizeAction(R.string.action_increase_width, view, launcherAppWidgetInfo);
                                return true;
                            case 1:
                                this.f128e.performResizeAction(R.string.action_decrease_width, view, launcherAppWidgetInfo);
                                return true;
                            case 2:
                                this.f128e.performResizeAction(R.string.action_increase_height, view, launcherAppWidgetInfo);
                                return true;
                            default:
                                this.f128e.performResizeAction(R.string.action_decrease_height, view, launcherAppWidgetInfo);
                                return true;
                        }
                    }
                }));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performResizeAction(int i4, View view, LauncherAppWidgetInfo launcherAppWidgetInfo) {
        CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) view.getLayoutParams();
        CellLayout cellLayout = (CellLayout) view.getParent().getParent();
        cellLayout.markCellsAsUnoccupiedForView(view);
        if (i4 == R.string.action_increase_width) {
            if ((view.getLayoutDirection() == 1 && cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX - 1, launcherAppWidgetInfo.cellY, 1, launcherAppWidgetInfo.spanY)) || !cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX + launcherAppWidgetInfo.spanX, launcherAppWidgetInfo.cellY, 1, launcherAppWidgetInfo.spanY)) {
                cellLayoutLayoutParams.setCellX(cellLayoutLayoutParams.getCellX() - 1);
                launcherAppWidgetInfo.cellX--;
            }
            cellLayoutLayoutParams.cellHSpan++;
            launcherAppWidgetInfo.spanX++;
        } else if (i4 == R.string.action_decrease_width) {
            cellLayoutLayoutParams.cellHSpan--;
            launcherAppWidgetInfo.spanX--;
        } else if (i4 == R.string.action_increase_height) {
            if (!cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX, launcherAppWidgetInfo.cellY + launcherAppWidgetInfo.spanY, launcherAppWidgetInfo.spanX, 1)) {
                cellLayoutLayoutParams.setCellY(cellLayoutLayoutParams.getCellY() - 1);
                launcherAppWidgetInfo.cellY--;
            }
            cellLayoutLayoutParams.cellVSpan++;
            launcherAppWidgetInfo.spanY++;
        } else if (i4 == R.string.action_decrease_height) {
            cellLayoutLayoutParams.cellVSpan--;
            launcherAppWidgetInfo.spanY--;
        }
        cellLayout.markCellsAsOccupiedForView(view);
        WidgetSizes.updateWidgetSizeRanges((LauncherAppWidgetHostView) view, this.mContext, launcherAppWidgetInfo.spanX, launcherAppWidgetInfo.spanY);
        view.requestLayout();
        ((Launcher) this.mContext).getModelWriter().updateItemInDatabase(launcherAppWidgetInfo);
        ((ActivityContext) this.mContext).getDragLayer().announceForAccessibility(((Launcher) this.mContext).getString(R.string.widget_resized, new Object[]{Integer.valueOf(launcherAppWidgetInfo.spanX), Integer.valueOf(launcherAppWidgetInfo.spanY)}));
    }

    public final boolean addToWorkspace(final ItemInfo itemInfo) {
        final int[] iArr = new int[2];
        final int findSpaceOnWorkspace = findSpaceOnWorkspace(itemInfo, iArr);
        if (findSpaceOnWorkspace == -1) {
            return false;
        }
        ((Launcher) this.mContext).getStateManager().goToState((BaseState) LauncherState.NORMAL, true, AnimatorListeners.forSuccessCallback(new Runnable() { // from class: com.android.launcher3.accessibility.a

            /* renamed from: h  reason: collision with root package name */
            public final /* synthetic */ boolean f4531h = true;

            @Override // java.lang.Runnable
            public final void run() {
                final LauncherAccessibilityDelegate launcherAccessibilityDelegate = LauncherAccessibilityDelegate.this;
                ItemInfo itemInfo2 = itemInfo;
                int i4 = findSpaceOnWorkspace;
                int[] iArr2 = iArr;
                boolean z4 = this.f4531h;
                launcherAccessibilityDelegate.getClass();
                if (itemInfo2 instanceof WorkspaceItemFactory) {
                    WorkspaceItemInfo makeWorkspaceItem = ((WorkspaceItemFactory) itemInfo2).makeWorkspaceItem(launcherAccessibilityDelegate.mContext);
                    ((Launcher) launcherAccessibilityDelegate.mContext).getModelWriter().addItemToDatabase(makeWorkspaceItem, -100, i4, iArr2[0], iArr2[1]);
                    ((Launcher) launcherAccessibilityDelegate.mContext).bindItems(Collections.singletonList(makeWorkspaceItem), true, z4);
                    launcherAccessibilityDelegate.announceConfirmation(R.string.item_added_to_workspace);
                } else if (itemInfo2 instanceof PendingAddItemInfo) {
                    PendingAddItemInfo pendingAddItemInfo = (PendingAddItemInfo) itemInfo2;
                    Workspace workspace = ((Launcher) launcherAccessibilityDelegate.mContext).getWorkspace();
                    workspace.snapToPage(workspace.getPageIndexForScreenId(i4));
                    ((Launcher) launcherAccessibilityDelegate.mContext).addPendingItem(pendingAddItemInfo, -100, i4, iArr2, pendingAddItemInfo.spanX, pendingAddItemInfo.spanY);
                } else if (itemInfo2 instanceof WorkspaceItemInfo) {
                    WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo2;
                    workspaceItemInfo.getClass();
                    WorkspaceItemInfo workspaceItemInfo2 = new WorkspaceItemInfo(workspaceItemInfo);
                    ((Launcher) launcherAccessibilityDelegate.mContext).getModelWriter().addItemToDatabase(workspaceItemInfo2, -100, i4, iArr2[0], iArr2[1]);
                    ((Launcher) launcherAccessibilityDelegate.mContext).bindItems(Collections.singletonList(workspaceItemInfo2), true, z4);
                } else if (itemInfo2 instanceof FolderInfo) {
                    final FolderInfo folderInfo = (FolderInfo) itemInfo2;
                    ((Launcher) launcherAccessibilityDelegate.mContext).getModelWriter().addItemToDatabase(folderInfo, -100, i4, iArr2[0], iArr2[1]);
                    folderInfo.contents.forEach(new Consumer() { // from class: com.android.launcher3.accessibility.b
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            WorkspaceItemInfo workspaceItemInfo3 = (WorkspaceItemInfo) obj;
                            ((Launcher) LauncherAccessibilityDelegate.this.mContext).getModelWriter().addItemToDatabase(workspaceItemInfo3, folderInfo.id, -1, -1, -1);
                        }
                    });
                    ((Launcher) launcherAccessibilityDelegate.mContext).bindItems(Collections.singletonList(folderInfo), true, z4);
                }
            }
        }));
        return true;
    }

    public final void announceConfirmation(int i4) {
        ((ActivityContext) this.mContext).getDragLayer().announceForAccessibility(((Launcher) this.mContext).getResources().getString(i4));
    }

    public final int findSpaceOnWorkspace(ItemInfo itemInfo, int[] iArr) {
        Workspace workspace = ((Launcher) this.mContext).getWorkspace();
        IntArray screenOrder = workspace.getScreenOrder();
        int currentPage = workspace.getCurrentPage();
        int i4 = screenOrder.get(currentPage);
        boolean findCellForSpan = ((CellLayout) workspace.getPageAt(currentPage)).findCellForSpan(itemInfo.spanX, itemInfo.spanY, iArr);
        for (int i5 = 0; !findCellForSpan && i5 < screenOrder.size(); i5++) {
            i4 = screenOrder.get(i5);
            findCellForSpan = ((CellLayout) workspace.getPageAt(i5)).findCellForSpan(itemInfo.spanX, itemInfo.spanY, iArr);
        }
        if (findCellForSpan) {
            return i4;
        }
        workspace.addExtraEmptyScreens();
        IntSet commitExtraEmptyScreens = workspace.commitExtraEmptyScreens();
        if (commitExtraEmptyScreens.isEmpty()) {
            return -1;
        }
        int i6 = commitExtraEmptyScreens.getArray().get(0);
        if (!workspace.getScreenWithId(i6).findCellForSpan(itemInfo.spanX, itemInfo.spanY, iArr)) {
            Log.wtf("LauncherAccessibilityDelegate", "Not enough space on an empty screen");
        }
        return i6;
    }

    @Override // com.android.launcher3.accessibility.BaseAccessibilityDelegate
    public void getSupportedActions(View view, ItemInfo itemInfo, List list) {
        ButtonDropTarget[] dropTargets;
        if (ShortcutUtil.supportsShortcuts(itemInfo)) {
            ((ArrayList) list).add((BaseAccessibilityDelegate.LauncherAction) this.mActions.get(NotificationListener.getInstanceIfConnected() != null ? R.id.action_shortcuts_and_notifications : R.id.action_deep_shortcuts));
        }
        boolean z4 = false;
        for (ButtonDropTarget buttonDropTarget : ((Launcher) this.mContext).getDropTargetBar().getDropTargets()) {
            if (buttonDropTarget.supportsAccessibilityDrop(view, itemInfo)) {
                ((ArrayList) list).add((BaseAccessibilityDelegate.LauncherAction) this.mActions.get(buttonDropTarget.getAccessibilityAction()));
            }
        }
        boolean z5 = itemInfo instanceof WorkspaceItemInfo;
        if (!z5 ? !((itemInfo instanceof LauncherAppWidgetInfo) || (itemInfo instanceof FolderInfo)) : !(itemInfo.screenId >= 0 && itemInfo.container != -103)) {
            ArrayList arrayList = (ArrayList) list;
            arrayList.add((BaseAccessibilityDelegate.LauncherAction) this.mActions.get(R.id.action_move));
            if (itemInfo.container >= 0) {
                arrayList.add((BaseAccessibilityDelegate.LauncherAction) this.mActions.get(R.id.action_move_to_workspace));
            } else if ((itemInfo instanceof LauncherAppWidgetInfo) && !((ArrayList) getSupportedResizeActions(view, (LauncherAppWidgetInfo) itemInfo)).isEmpty()) {
                arrayList.add((BaseAccessibilityDelegate.LauncherAction) this.mActions.get(R.id.action_resize));
            }
        }
        if ((itemInfo instanceof WorkspaceItemFactory) || ((z5 && (((WorkspaceItemInfo) itemInfo).runtimeStatusFlags & 8192) == 0) || ((itemInfo instanceof PendingAddItemInfo) && (((PendingAddItemInfo) itemInfo).runtimeStatusFlags & 8192) == 0))) {
            z4 = true;
        }
        if (z4) {
            ((ArrayList) list).add((BaseAccessibilityDelegate.LauncherAction) this.mActions.get(R.id.action_add_to_workspace));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0040, code lost:
        r13 = null;
     */
    @Override // com.android.launcher3.accessibility.BaseAccessibilityDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean performAction(final android.view.View r11, final com.android.launcher3.model.data.ItemInfo r12, int r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.accessibility.LauncherAccessibilityDelegate.performAction(android.view.View, com.android.launcher3.model.data.ItemInfo, int, boolean):boolean");
    }

    public static List getSupportedActions(Launcher launcher, View view) {
        if (view != null && (view.getTag() instanceof ItemInfo)) {
            PopupContainerWithArrow open = PopupContainerWithArrow.getOpen(launcher);
            LauncherAccessibilityDelegate accessibilityDelegate = open != null ? open.getAccessibilityDelegate() : launcher.getAccessibilityDelegate();
            ArrayList arrayList = new ArrayList();
            accessibilityDelegate.getSupportedActions(view, (ItemInfo) view.getTag(), arrayList);
            return arrayList;
        }
        return Collections.emptyList();
    }
}
