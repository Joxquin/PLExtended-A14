package com.android.quickstep;

import android.content.Context;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.view.View;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.Snackbar;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.quickstep.views.OverviewActionsView;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class TaskOverlayFactory implements ResourceBasedOverride {
    private static final TaskShortcutFactory[] MENU_OPTIONS = {TaskShortcutFactory.APP_INFO, TaskShortcutFactory.SPLIT_SELECT, TaskShortcutFactory.PIN, TaskShortcutFactory.INSTALL, TaskShortcutFactory.FREE_FORM, TaskShortcutFactory.WELLBEING, TaskShortcutFactory.SAVE_APP_PAIR};

    /* loaded from: classes.dex */
    public interface OverlayUICallbacks {
        void onScreenshot();

        void onSplit();
    }

    /* loaded from: classes.dex */
    public class TaskOverlay {
        private OverviewActionsView mActionsView;
        protected final Context mApplicationContext;
        protected ImageActionsApi mImageApi;
        protected final TaskThumbnailView mThumbnailView;

        /* loaded from: classes.dex */
        public class OverlayUICallbacksImpl implements OverlayUICallbacks {
            protected final boolean mIsAllowedByPolicy;
            protected final Task mTask;

            public OverlayUICallbacksImpl(boolean z4, Task task) {
                TaskOverlay.this = r1;
                this.mIsAllowedByPolicy = z4;
                this.mTask = task;
            }

            public /* synthetic */ void lambda$onScreenshot$0() {
                TaskOverlay.this.saveScreenshot(this.mTask);
            }

            @Override // com.android.quickstep.TaskOverlayFactory.OverlayUICallbacks
            public void onScreenshot() {
                TaskOverlay.this.endLiveTileMode(new RunnableC0540p1(0, this));
            }

            @Override // com.android.quickstep.TaskOverlayFactory.OverlayUICallbacks
            public void onSplit() {
                TaskOverlay taskOverlay = TaskOverlay.this;
                taskOverlay.endLiveTileMode(new RunnableC0540p1(1, taskOverlay));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class ScreenshotSystemShortcut extends SystemShortcut {
            private final BaseDraggingActivity mActivity;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ScreenshotSystemShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo, View view) {
                super(R.drawable.ic_screenshot, R.string.action_screenshot, baseDraggingActivity, itemInfo, view);
                TaskOverlay.this = r7;
                this.mActivity = baseDraggingActivity;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TaskOverlay taskOverlay = TaskOverlay.this;
                taskOverlay.saveScreenshot(taskOverlay.mThumbnailView.getTaskView().getTask());
                SystemShortcut.dismissTaskMenuView(this.mActivity);
            }
        }

        public TaskOverlay(final TaskThumbnailView taskThumbnailView) {
            Context applicationContext = taskThumbnailView.getContext().getApplicationContext();
            this.mApplicationContext = applicationContext;
            this.mThumbnailView = taskThumbnailView;
            Objects.requireNonNull(taskThumbnailView);
            this.mImageApi = new ImageActionsApi(applicationContext, new Supplier() { // from class: com.android.quickstep.n1
                @Override // java.util.function.Supplier
                public final Object get() {
                    return TaskThumbnailView.this.getThumbnail();
                }
            });
        }

        public void enterSplitSelect() {
            this.mThumbnailView.getTaskView().getRecentsView().initiateSplitSelect(this.mThumbnailView.getTaskView());
        }

        public void endLiveTileMode(final Runnable runnable) {
            final RecentsView recentsView = this.mThumbnailView.getTaskView().getRecentsView();
            recentsView.switchToScreenshot(new Runnable() { // from class: com.android.quickstep.o1
                @Override // java.lang.Runnable
                public final void run() {
                    RecentsView.this.finishRecentsAnimation(true, false, runnable);
                }
            });
        }

        public OverviewActionsView getActionsView() {
            if (this.mActionsView == null) {
                this.mActionsView = (OverviewActionsView) BaseActivity.fromContext(this.mThumbnailView.getContext()).findViewById(R.id.overview_actions_view);
            }
            return this.mActionsView;
        }

        public SystemShortcut getModalStateSystemShortcut(WorkspaceItemInfo workspaceItemInfo, View view) {
            return null;
        }

        public SystemShortcut getScreenshotShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo, View view) {
            return new ScreenshotSystemShortcut(baseDraggingActivity, itemInfo, view);
        }

        public Rect getTaskSnapshotBounds() {
            int[] iArr = new int[2];
            this.mThumbnailView.getLocationOnScreen(iArr);
            return new Rect(iArr[0], iArr[1], this.mThumbnailView.getWidth() + iArr[0], this.mThumbnailView.getHeight() + iArr[1]);
        }

        public Insets getTaskSnapshotInsets() {
            return this.mThumbnailView.getScaledInsets();
        }

        public TaskThumbnailView getThumbnailView() {
            return this.mThumbnailView;
        }

        public void initOverlay(Task task, ThumbnailData thumbnailData, Matrix matrix, boolean z4) {
            getActionsView().updateDisabledFlags(4, thumbnailData == null);
            if (thumbnailData != null) {
                getActionsView().updateDisabledFlags(2, z4);
                getActionsView().setCallbacks(new OverlayUICallbacksImpl(this.mThumbnailView.isRealSnapshot(), task));
            }
        }

        public void reset() {
        }

        public void resetModalVisuals() {
        }

        public void saveScreenshot(Task task) {
            if (this.mThumbnailView.isRealSnapshot()) {
                this.mImageApi.saveScreenshot(this.mThumbnailView.getThumbnail(), getTaskSnapshotBounds(), getTaskSnapshotInsets(), task.key);
            } else {
                showBlockedByPolicyMessage();
            }
        }

        public void setFullscreenParams(TaskView.FullscreenDrawParams fullscreenDrawParams) {
        }

        public void setFullscreenProgress(float f4) {
        }

        public void showBlockedByPolicyMessage() {
            ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(this.mThumbnailView.getContext());
            Snackbar.show(BaseActivity.fromContext(this.mThumbnailView.getContext()), activityContext.getStringCache() != null ? activityContext.getStringCache().disabledByAdminMessage : this.mThumbnailView.getContext().getString(R.string.blocked_by_policy), -1, (Runnable) null, (Runnable) null);
        }

        public void updateOrientationState(RecentsOrientedState recentsOrientedState) {
        }
    }

    public static List getEnabledShortcuts(TaskView taskView, TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
        TaskShortcutFactory[] taskShortcutFactoryArr;
        List shortcuts;
        List shortcuts2;
        ArrayList arrayList = new ArrayList();
        BaseDraggingActivity baseDraggingActivity = (BaseDraggingActivity) BaseActivity.fromContext(taskView.getContext());
        boolean z4 = true;
        boolean z5 = taskView.getTaskIds()[1] != -1;
        for (TaskShortcutFactory taskShortcutFactory : MENU_OPTIONS) {
            if ((!z5 || taskShortcutFactory.showForSplitscreen()) && (shortcuts2 = taskShortcutFactory.getShortcuts(baseDraggingActivity, taskIdAttributeContainer)) != null) {
                arrayList.addAll(shortcuts2);
            }
        }
        RecentsOrientedState pagedViewOrientedState = taskView.getRecentsView().getPagedViewOrientedState();
        boolean isRecentsActivityRotationAllowed = pagedViewOrientedState.isRecentsActivityRotationAllowed();
        boolean z6 = pagedViewOrientedState.getTouchRotation() != 0;
        z4 = (baseDraggingActivity.getDeviceProfile().isTablet && FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get()) ? false : false;
        if ((!isRecentsActivityRotationAllowed && z6) || z4) {
            List shortcuts3 = TaskShortcutFactory.SCREENSHOT.getShortcuts(baseDraggingActivity, taskIdAttributeContainer);
            if (shortcuts3 != null) {
                arrayList.addAll(shortcuts3);
            }
            if ((pagedViewOrientedState.getDisplayRotation() == 0 || z4) && (shortcuts = TaskShortcutFactory.MODAL.getShortcuts(baseDraggingActivity, taskIdAttributeContainer)) != null) {
                arrayList.addAll(shortcuts);
            }
        }
        return arrayList;
    }

    public void clearAllActiveState() {
    }

    public TaskOverlay createOverlay(TaskThumbnailView taskThumbnailView) {
        return new TaskOverlay(taskThumbnailView);
    }

    public void initListeners() {
    }

    public void removeListeners() {
    }
}
