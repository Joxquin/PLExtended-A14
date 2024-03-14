package com.android.launcher3.taskbar.allapps;

import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.appprediction.PredictionRowView;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.taskbar.allapps.TaskbarAllAppsController;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayContext;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.views.AbstractSlideInView;
import com.android.systemui.shared.R;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class TaskbarAllAppsController {
    private int mAppsModelFlags;
    private TaskbarAllAppsContainerView mAppsView;
    private TaskbarControllers mControllers;
    private boolean mDisallowGlobalDrag;
    private boolean mDisallowLongClick;
    private TaskbarOverlayContext mOverlayContext;
    private TaskbarSearchSessionController mSearchSessionController;
    private TaskbarAllAppsSlideInView mSlideInView;
    private List mZeroStateSearchSuggestions;
    private AppInfo[] mApps = AppInfo.EMPTY_ARRAY;
    private List mPredictedApps = Collections.emptyList();
    private Map mPackageUserKeytoUidMap = Collections.emptyMap();

    public static /* synthetic */ void a(TaskbarAllAppsController taskbarAllAppsController) {
        taskbarAllAppsController.mControllers.getSharedState().allAppsVisible = false;
        taskbarAllAppsController.cleanUpOverlay();
    }

    private void cleanUpOverlay() {
        TaskbarAllAppsContainerView taskbarAllAppsContainerView = this.mAppsView;
        if (taskbarAllAppsContainerView != null && this.mOverlayContext != null && taskbarAllAppsContainerView.getSearchUiDelegate().isSearchBarFloating()) {
            this.mOverlayContext.getDragLayer().removeView(this.mAppsView.getSearchView());
            this.mAppsView.getSearchUiDelegate().onDestroySearchBar();
        }
        TaskbarSearchSessionController taskbarSearchSessionController = this.mSearchSessionController;
        if (taskbarSearchSessionController != null) {
            taskbarSearchSessionController.onDestroy();
            this.mSearchSessionController = null;
        }
        TaskbarOverlayContext taskbarOverlayContext = this.mOverlayContext;
        if (taskbarOverlayContext != null) {
            taskbarOverlayContext.setSearchSessionController(null);
            this.mOverlayContext = null;
        }
        this.mSlideInView = null;
        this.mAppsView = null;
    }

    private void show(boolean z4) {
        TaskbarSearchSessionController taskbarSearchSessionController;
        if (this.mAppsView != null) {
            return;
        }
        this.mControllers.getSharedState().allAppsVisible = true;
        TaskbarOverlayContext context = this.mControllers.taskbarOverlayController.requestWindow();
        this.mOverlayContext = context;
        h.e(context, "context");
        if (FeatureFlags.ENABLE_ALL_APPS_SEARCH_IN_TASKBAR.get()) {
            ResourceBasedOverride object = ResourceBasedOverride.Overrides.getObject(R.string.taskbar_search_session_controller_class, context, TaskbarSearchSessionController.class);
            h.d(object, "getObject(\n             …ller_class,\n            )");
            taskbarSearchSessionController = (TaskbarSearchSessionController) object;
        } else {
            taskbarSearchSessionController = new TaskbarSearchSessionController();
        }
        this.mSearchSessionController = taskbarSearchSessionController;
        this.mOverlayContext.setSearchSessionController(taskbarSearchSessionController);
        this.mSearchSessionController.setZeroStatePredictedItems(this.mPredictedApps);
        List list = this.mZeroStateSearchSuggestions;
        if (list != null) {
            this.mSearchSessionController.setZeroStateSearchSuggestions(list);
        }
        this.mSearchSessionController.startLifecycle();
        TaskbarAllAppsSlideInView taskbarAllAppsSlideInView = (TaskbarAllAppsSlideInView) this.mOverlayContext.getLayoutInflater().inflate(R.layout.taskbar_all_apps_sheet, (ViewGroup) this.mOverlayContext.getDragLayer(), false);
        this.mSlideInView = taskbarAllAppsSlideInView;
        taskbarAllAppsSlideInView.addOnCloseListener(new AbstractSlideInView.OnCloseListener() { // from class: Y0.a
            @Override // com.android.launcher3.views.AbstractSlideInView.OnCloseListener
            public final void onSlideInViewClosed() {
                TaskbarAllAppsController.a(TaskbarAllAppsController.this);
            }
        });
        new TaskbarAllAppsViewController(this.mOverlayContext, this.mSlideInView, this.mControllers, this.mSearchSessionController).show(z4);
        TaskbarAllAppsContainerView appsView = this.mOverlayContext.getAppsView();
        this.mAppsView = appsView;
        appsView.getAppsStore().setApps(this.mApps, this.mAppsModelFlags, this.mPackageUserKeytoUidMap);
        ((PredictionRowView) this.mAppsView.getFloatingHeaderView().findFixedRowByType(PredictionRowView.class)).setPredictedApps(this.mPredictedApps);
        this.mOverlayContext.getDragController().setDisallowGlobalDrag(this.mDisallowGlobalDrag);
        this.mOverlayContext.getDragController().setDisallowLongClick(this.mDisallowLongClick);
    }

    public final DragOptions.PreDragCondition createPreDragConditionForSearch(View view) {
        TaskbarSearchSessionController taskbarSearchSessionController = this.mSearchSessionController;
        if (taskbarSearchSessionController != null) {
            return taskbarSearchSessionController.createPreDragConditionForSearch(view);
        }
        return null;
    }

    public int getTaskbarAllAppsScroll() {
        return this.mAppsView.getActiveRecyclerView().computeVerticalScrollOffset();
    }

    public int getTaskbarAllAppsTopPadding() {
        return this.mAppsView.getActiveRecyclerView().getClipBounds().top;
    }

    public final void init(TaskbarControllers taskbarControllers, boolean z4) {
        this.mControllers = taskbarControllers;
        if (z4) {
            show(false);
        }
    }

    public final boolean isOpen() {
        TaskbarAllAppsSlideInView taskbarAllAppsSlideInView = this.mSlideInView;
        return taskbarAllAppsSlideInView != null && taskbarAllAppsSlideInView.isOpen();
    }

    public final void onDestroy() {
        cleanUpOverlay();
    }

    public final void setApps(AppInfo[] appInfoArr, int i4, Map map) {
        if (appInfoArr == null) {
            appInfoArr = AppInfo.EMPTY_ARRAY;
        }
        this.mApps = appInfoArr;
        this.mAppsModelFlags = i4;
        this.mPackageUserKeytoUidMap = map;
        TaskbarAllAppsContainerView taskbarAllAppsContainerView = this.mAppsView;
        if (taskbarAllAppsContainerView != null) {
            taskbarAllAppsContainerView.getAppsStore().setApps(this.mApps, this.mAppsModelFlags, this.mPackageUserKeytoUidMap);
        }
    }

    public final void setDisallowGlobalDrag(boolean z4) {
        this.mDisallowGlobalDrag = z4;
    }

    public final void setDisallowLongClick(boolean z4) {
        this.mDisallowLongClick = z4;
    }

    public final void setPredictedApps(List list) {
        this.mPredictedApps = list;
        TaskbarAllAppsContainerView taskbarAllAppsContainerView = this.mAppsView;
        if (taskbarAllAppsContainerView != null) {
            ((PredictionRowView) taskbarAllAppsContainerView.getFloatingHeaderView().findFixedRowByType(PredictionRowView.class)).setPredictedApps(this.mPredictedApps);
        }
        TaskbarSearchSessionController taskbarSearchSessionController = this.mSearchSessionController;
        if (taskbarSearchSessionController != null) {
            taskbarSearchSessionController.setZeroStatePredictedItems(list);
        }
    }

    public final void setZeroStateSearchSuggestions(List list) {
        this.mZeroStateSearchSuggestions = list;
    }

    public final void toggle() {
        if (isOpen()) {
            this.mSlideInView.close(true);
        } else {
            show(true);
        }
    }

    public final void updateNotificationDots(Predicate predicate) {
        TaskbarAllAppsContainerView taskbarAllAppsContainerView = this.mAppsView;
        if (taskbarAllAppsContainerView != null) {
            taskbarAllAppsContainerView.getAppsStore().updateNotificationDots(predicate);
        }
    }
}
