package com.android.launcher3.folder;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.celllayout.CellPosMapper;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Function;
/* loaded from: classes.dex */
public class LauncherDelegate {
    private final Launcher mLauncher;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class FallbackDelegate extends LauncherDelegate {
        private final ActivityContext mContext;
        private ModelWriter mWriter;

        public FallbackDelegate(ActivityContext activityContext) {
            this.mContext = activityContext;
        }

        @Override // com.android.launcher3.folder.LauncherDelegate
        public final void beginDragShared(View view, DragSource dragSource, DragOptions dragOptions) {
        }

        @Override // com.android.launcher3.folder.LauncherDelegate
        public final void forEachVisibleWorkspacePage(d dVar) {
        }

        @Override // com.android.launcher3.folder.LauncherDelegate
        public final Launcher getLauncher() {
            return null;
        }

        @Override // com.android.launcher3.folder.LauncherDelegate
        public final ModelWriter getModelWriter() {
            if (this.mWriter == null) {
                this.mWriter = LauncherAppState.getInstance((Context) this.mContext).getModel().getWriter(false, false, CellPosMapper.DEFAULT, null);
            }
            return this.mWriter;
        }

        @Override // com.android.launcher3.folder.LauncherDelegate
        public final void init(Folder folder, FolderIcon folderIcon) {
            folder.mDragController = this.mContext.getDragController();
        }

        @Override // com.android.launcher3.folder.LauncherDelegate
        public final boolean interceptOutsideTouch(MotionEvent motionEvent, BaseDragLayer baseDragLayer, Folder folder) {
            folder.close(true);
            return true;
        }

        @Override // com.android.launcher3.folder.LauncherDelegate
        public final boolean isDraggingEnabled() {
            return false;
        }

        @Override // com.android.launcher3.folder.LauncherDelegate
        public final boolean replaceFolderWithFinalItem(Folder folder) {
            return false;
        }
    }

    public /* synthetic */ LauncherDelegate() {
        this(null);
    }

    public static LauncherDelegate from(ActivityContext activityContext) {
        return activityContext instanceof Launcher ? new LauncherDelegate((Launcher) activityContext) : new FallbackDelegate(activityContext);
    }

    public void beginDragShared(View view, DragSource dragSource, DragOptions dragOptions) {
        this.mLauncher.getWorkspace().beginDragShared(view, dragSource, dragOptions);
    }

    public void forEachVisibleWorkspacePage(d dVar) {
        this.mLauncher.getWorkspace().forEachVisiblePage(dVar);
    }

    public Launcher getLauncher() {
        return this.mLauncher;
    }

    public ModelWriter getModelWriter() {
        return this.mLauncher.getModelWriter();
    }

    public void init(Folder folder, FolderIcon folderIcon) {
        Launcher launcher = this.mLauncher;
        folder.mDragController = launcher.getDragController();
        folderIcon.setOnFocusChangeListener(launcher.getFocusHandler());
    }

    public boolean interceptOutsideTouch(MotionEvent motionEvent, BaseDragLayer baseDragLayer, Folder folder) {
        Launcher launcher = this.mLauncher;
        if (launcher.getAccessibilityDelegate().isInAccessibleDrag()) {
            return !baseDragLayer.isEventOverView(launcher.getDropTargetBar(), motionEvent);
        }
        folder.close(true);
        return true;
    }

    public boolean isDraggingEnabled() {
        return this.mLauncher.isDraggingEnabled();
    }

    public boolean replaceFolderWithFinalItem(final Folder folder) {
        Runnable runnable = new Runnable() { // from class: com.android.launcher3.folder.LauncherDelegate.1
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceItemInfo workspaceItemInfo;
                BubbleTextView bubbleTextView;
                int itemCount = folder.getItemCount();
                FolderInfo folderInfo = folder.mInfo;
                if (itemCount <= 1) {
                    if (itemCount == 1) {
                        CellLayout cellLayout = LauncherDelegate.this.mLauncher.getCellLayout(folderInfo.container, LauncherDelegate.this.mLauncher.getCellPosMapper().mapModelToPresenter(folderInfo).screenId);
                        workspaceItemInfo = (WorkspaceItemInfo) folderInfo.contents.remove(0);
                        bubbleTextView = LauncherDelegate.this.mLauncher.createShortcut(cellLayout, workspaceItemInfo);
                        LauncherDelegate.this.mLauncher.getModelWriter().addOrMoveItemInDatabase(workspaceItemInfo, folderInfo.container, folderInfo.screenId, folderInfo.cellX, folderInfo.cellY);
                    } else {
                        workspaceItemInfo = null;
                        bubbleTextView = null;
                    }
                    LauncherDelegate.this.mLauncher.removeItem(folder.mFolderIcon, folderInfo, true, "folder removed because there's only 1 item in it");
                    Folder folder2 = folder;
                    FolderIcon folderIcon = folder2.mFolderIcon;
                    if (folderIcon instanceof DropTarget) {
                        folder2.mDragController.removeDropTarget((DropTarget) folderIcon);
                    }
                    if (bubbleTextView != null) {
                        LauncherDelegate.this.mLauncher.getWorkspace().addInScreenFromBind(bubbleTextView, folderInfo);
                        bubbleTextView.requestFocus();
                    }
                    if (workspaceItemInfo != null) {
                        final StatsLogManager.StatsLogger withItemInfo = LauncherDelegate.this.mLauncher.getStatsLogManager().logger().withItemInfo(workspaceItemInfo);
                        Optional logInstanceId = folder.mDragController.getLogInstanceId();
                        Objects.requireNonNull(withItemInfo);
                        ((StatsLogManager.StatsLogger) logInstanceId.map(new Function() { // from class: com.android.launcher3.folder.w
                            @Override // java.util.function.Function
                            public final Object apply(Object obj) {
                                return StatsLogManager.StatsLogger.this.withInstanceId((InstanceId) obj);
                            }
                        }).orElse(withItemInfo)).log(StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_CONVERTED_TO_ICON);
                    }
                }
            }
        };
        if (folder.mContent.getLastItem() != null) {
            folder.mFolderIcon.performDestroyAnimation(runnable);
            return true;
        }
        runnable.run();
        return true;
    }

    private LauncherDelegate(Launcher launcher) {
        this.mLauncher = launcher;
    }
}
