package com.android.quickstep;

import android.app.Activity;
import android.app.ActivityOptions;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowManagerGlobal;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.WellbeingModel;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.InstantAppResolver;
import com.android.launcher3.util.SplitConfigurationOptions$SplitPositionOption;
import com.android.quickstep.TaskShortcutFactory;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.view.AppTransitionAnimationSpecCompat;
import com.android.systemui.shared.recents.view.AppTransitionAnimationSpecsFuture;
import com.android.systemui.shared.recents.view.RecentsTransition;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public interface TaskShortcutFactory {
    public static final TaskShortcutFactory APP_INFO = new TaskShortcutFactory() { // from class: com.android.quickstep.TaskShortcutFactory.1
        @Override // com.android.quickstep.TaskShortcutFactory
        public List getShortcuts(BaseDraggingActivity baseDraggingActivity, TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
            TaskView taskView = taskIdAttributeContainer.getTaskView();
            return Collections.singletonList(new SystemShortcut.AppInfo(baseDraggingActivity, taskIdAttributeContainer.getItemInfo(), taskView, new SystemShortcut.AppInfo.SplitAccessibilityInfo(taskView.containsMultipleTasks(), TaskUtils.getTitle(taskView.getContext(), taskIdAttributeContainer.getTask()), taskIdAttributeContainer.getA11yNodeId())));
        }

        @Override // com.android.quickstep.TaskShortcutFactory
        public boolean showForSplitscreen() {
            return true;
        }
    };
    public static final TaskShortcutFactory SPLIT_SELECT = new AnonymousClass2();
    public static final TaskShortcutFactory SAVE_APP_PAIR = new TaskShortcutFactory() { // from class: com.android.quickstep.TaskShortcutFactory.3
        @Override // com.android.quickstep.TaskShortcutFactory
        public List getShortcuts(BaseDraggingActivity baseDraggingActivity, TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
            TaskView taskView = taskIdAttributeContainer.getTaskView();
            if (FeatureFlags.ENABLE_APP_PAIRS.get() && taskView.containsMultipleTasks()) {
                return Collections.singletonList(new SaveAppPairSystemShortcut(baseDraggingActivity, taskView));
            }
            return null;
        }

        @Override // com.android.quickstep.TaskShortcutFactory
        public boolean showForSplitscreen() {
            return true;
        }
    };
    public static final TaskShortcutFactory FREE_FORM = new TaskShortcutFactory() { // from class: com.android.quickstep.TaskShortcutFactory.4
        private boolean isAvailable(BaseDraggingActivity baseDraggingActivity, int i4) {
            return (!ActivityManagerWrapper.getInstance().supportsFreeformMultiWindow(baseDraggingActivity) || SystemProperties.getBoolean("persist.wm.debug.desktop_mode", false) || SystemProperties.getBoolean("persist.wm.debug.desktop_mode_2", false)) ? false : true;
        }

        @Override // com.android.quickstep.TaskShortcutFactory
        public List getShortcuts(BaseDraggingActivity baseDraggingActivity, TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
            Task task = taskIdAttributeContainer.getTask();
            if (task.isDockable && isAvailable(baseDraggingActivity, task.key.displayId)) {
                return Collections.singletonList(new FreeformSystemShortcut(R.drawable.ic_caption_desktop_button_foreground, R.string.recent_task_option_freeform, baseDraggingActivity, taskIdAttributeContainer, StatsLogManager.LauncherEvent.LAUNCHER_SYSTEM_SHORTCUT_FREE_FORM_TAP));
            }
            return null;
        }
    };
    public static final TaskShortcutFactory PIN = new TaskShortcutFactory() { // from class: com.android.quickstep.TaskShortcutFactory.5
        @Override // com.android.quickstep.TaskShortcutFactory
        public List getShortcuts(BaseDraggingActivity baseDraggingActivity, TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
            if (((SystemUiProxy) SystemUiProxy.INSTANCE.get(baseDraggingActivity)).isActive() && ActivityManagerWrapper.getInstance().isScreenPinningEnabled() && !ActivityManagerWrapper.getInstance().isLockToAppActive()) {
                return Collections.singletonList(new PinSystemShortcut(baseDraggingActivity, taskIdAttributeContainer));
            }
            return null;
        }
    };
    public static final TaskShortcutFactory INSTALL = new TaskShortcutFactory() { // from class: com.android.quickstep.TaskShortcutFactory.6
        @Override // com.android.quickstep.TaskShortcutFactory
        public List getShortcuts(BaseDraggingActivity baseDraggingActivity, TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
            Task task = taskIdAttributeContainer.getTask();
            if (InstantAppResolver.newInstance(baseDraggingActivity).isInstantApp(task.getTopComponent().getPackageName(), task.getKey().userId)) {
                return Collections.singletonList(new SystemShortcut.Install(baseDraggingActivity, taskIdAttributeContainer.getItemInfo(), taskIdAttributeContainer.getTaskView()));
            }
            return null;
        }
    };
    public static final TaskShortcutFactory WELLBEING = new TaskShortcutFactory() { // from class: com.android.quickstep.TaskShortcutFactory.7
        @Override // com.android.quickstep.TaskShortcutFactory
        public List getShortcuts(BaseDraggingActivity baseDraggingActivity, TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
            return createSingletonShortcutList(WellbeingModel.d(baseDraggingActivity, taskIdAttributeContainer.getItemInfo(), taskIdAttributeContainer.getTaskView()));
        }
    };
    public static final TaskShortcutFactory SCREENSHOT = new TaskShortcutFactory() { // from class: com.android.quickstep.TaskShortcutFactory.8
        @Override // com.android.quickstep.TaskShortcutFactory
        public List getShortcuts(BaseDraggingActivity baseDraggingActivity, TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
            return createSingletonShortcutList(taskIdAttributeContainer.getThumbnailView().getTaskOverlay().getScreenshotShortcut(baseDraggingActivity, taskIdAttributeContainer.getItemInfo(), taskIdAttributeContainer.getTaskView()));
        }
    };
    public static final TaskShortcutFactory MODAL = new TaskShortcutFactory() { // from class: com.android.quickstep.TaskShortcutFactory.9
        @Override // com.android.quickstep.TaskShortcutFactory
        public List getShortcuts(BaseDraggingActivity baseDraggingActivity, TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
            return createSingletonShortcutList(taskIdAttributeContainer.getThumbnailView().getTaskOverlay().getModalStateSystemShortcut(taskIdAttributeContainer.getItemInfo(), taskIdAttributeContainer.getTaskView()));
        }
    };

    /* renamed from: com.android.quickstep.TaskShortcutFactory$2  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements TaskShortcutFactory {
        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ SystemShortcut lambda$getShortcuts$0(BaseDraggingActivity baseDraggingActivity, TaskView taskView, SplitConfigurationOptions$SplitPositionOption splitConfigurationOptions$SplitPositionOption) {
            return new SplitSelectSystemShortcut(baseDraggingActivity, taskView, splitConfigurationOptions$SplitPositionOption);
        }

        @Override // com.android.quickstep.TaskShortcutFactory
        public List getShortcuts(final BaseDraggingActivity baseDraggingActivity, TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
            DeviceProfile deviceProfile = baseDraggingActivity.getDeviceProfile();
            Task task = taskIdAttributeContainer.getTask();
            int flags = task.key.baseIntent.getFlags();
            final TaskView taskView = taskIdAttributeContainer.getTaskView();
            RecentsView recentsView = taskView.getRecentsView();
            PagedOrientationHandler pagedOrientationHandler = recentsView.getPagedOrientationHandler();
            boolean z4 = true;
            boolean z5 = recentsView.getTaskViewCount() < 2;
            boolean z6 = deviceProfile.isTablet && taskView.isFocusedTask();
            boolean isTaskInExpectedScrollPosition = recentsView.isTaskInExpectedScrollPosition(recentsView.indexOfChild(taskView));
            if (task.isDockable && (8388608 & flags) == 0) {
                z4 = false;
            }
            boolean z7 = baseDraggingActivity.getDeviceProfile().isMultiWindowMode;
            if (taskView.containsMultipleTasks() || z5 || z4 || z7) {
                return null;
            }
            if (z6 && isTaskInExpectedScrollPosition) {
                return null;
            }
            return (List) pagedOrientationHandler.getSplitPositionOptions(deviceProfile).stream().map(new Function() { // from class: com.android.quickstep.q1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    SystemShortcut lambda$getShortcuts$0;
                    lambda$getShortcuts$0 = TaskShortcutFactory.AnonymousClass2.lambda$getShortcuts$0(BaseDraggingActivity.this, taskView, (SplitConfigurationOptions$SplitPositionOption) obj);
                    return lambda$getShortcuts$0;
                }
            }).collect(Collectors.toList());
        }
    }

    /* loaded from: classes.dex */
    public class FreeformSystemShortcut extends SystemShortcut {
        private static final String TAG = "FreeformSystemShortcut";
        private Handler mHandler;
        private final StatsLogManager.LauncherEvent mLauncherEvent;
        private final RecentsView mRecentsView;
        private final TaskView mTaskView;
        private final TaskThumbnailView mThumbnailView;

        public FreeformSystemShortcut(int i4, int i5, BaseDraggingActivity baseDraggingActivity, TaskView.TaskIdAttributeContainer taskIdAttributeContainer, StatsLogManager.LauncherEvent launcherEvent) {
            super(i4, i5, baseDraggingActivity, taskIdAttributeContainer.getItemInfo(), taskIdAttributeContainer.getTaskView());
            this.mLauncherEvent = launcherEvent;
            this.mHandler = new Handler(Looper.getMainLooper());
            this.mTaskView = taskIdAttributeContainer.getTaskView();
            this.mRecentsView = (RecentsView) baseDraggingActivity.getOverviewPanel();
            this.mThumbnailView = taskIdAttributeContainer.getThumbnailView();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$0(RecentsView recentsView) {
            ((BaseDraggingActivity) this.mTarget).returnToHomescreen();
            recentsView.getHandler().post(new Runnable() { // from class: com.android.quickstep.s1
                @Override // java.lang.Runnable
                public final void run() {
                    TaskShortcutFactory.FreeformSystemShortcut.this.startActivity();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$1(RecentsView recentsView) {
            recentsView.finishRecentsAnimation(true, new RunnableC0545r1(this, recentsView, 0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$startActivity$2(int i4) {
            this.mRecentsView.setIgnoreResetTask(i4);
            this.mTaskView.setAlpha(0.0f);
        }

        private ActivityOptions makeLaunchOptions(Activity activity) {
            ActivityOptions makeBasic = ActivityOptions.makeBasic();
            makeBasic.setLaunchWindowingMode(5);
            View decorView = activity.getWindow().getDecorView();
            WindowInsets rootWindowInsets = decorView.getRootWindowInsets();
            Rect rect = new Rect(0, 0, decorView.getWidth() / 2, decorView.getHeight() / 2);
            rect.offsetTo(rootWindowInsets.getSystemWindowInsetLeft() + 50, rootWindowInsets.getSystemWindowInsetTop() + 50);
            makeBasic.setLaunchBounds(rect);
            return makeBasic;
        }

        private void overridePendingAppTransitionMultiThumbFuture(AppTransitionAnimationSpecsFuture appTransitionAnimationSpecsFuture, Runnable runnable, Handler handler, boolean z4, int i4) {
            try {
                WindowManagerGlobal.getWindowManagerService().overridePendingAppTransitionMultiThumbFuture(appTransitionAnimationSpecsFuture.getFuture(), RecentsTransition.wrapStartedListener(handler, runnable), z4, i4);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed to override pending app transition (multi-thumbnail future): ", e4);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startActivity() {
            Task.TaskKey taskKey = this.mTaskView.getTask().key;
            final int i4 = taskKey.id;
            ActivityOptions makeLaunchOptions = makeLaunchOptions((Activity) this.mTarget);
            if (makeLaunchOptions != null) {
                makeLaunchOptions.setSplashScreenStyle(1);
            }
            if (makeLaunchOptions == null || !ActivityManagerWrapper.getInstance().startActivityFromRecents(i4, makeLaunchOptions)) {
                return;
            }
            Runnable runnable = new Runnable() { // from class: com.android.quickstep.t1
                @Override // java.lang.Runnable
                public final void run() {
                    TaskShortcutFactory.FreeformSystemShortcut.this.lambda$startActivity$2(i4);
                }
            };
            int[] iArr = new int[2];
            this.mThumbnailView.getLocationOnScreen(iArr);
            int scaleX = (int) (this.mTaskView.getScaleX() * this.mThumbnailView.getWidth());
            float scaleY = this.mTaskView.getScaleY();
            int i5 = iArr[0];
            int i6 = iArr[1];
            final Rect rect = new Rect(i5, i6, scaleX + i5, ((int) (scaleY * this.mThumbnailView.getHeight())) + i6);
            float dimAlpha = this.mThumbnailView.getDimAlpha();
            this.mThumbnailView.setDimAlpha(0.0f);
            final Bitmap drawViewIntoHardwareBitmap = RecentsTransition.drawViewIntoHardwareBitmap(rect.width(), rect.height(), this.mThumbnailView, 1.0f, -16777216);
            this.mThumbnailView.setDimAlpha(dimAlpha);
            overridePendingAppTransitionMultiThumbFuture(new AppTransitionAnimationSpecsFuture(this.mHandler) { // from class: com.android.quickstep.TaskShortcutFactory.FreeformSystemShortcut.1
                @Override // com.android.systemui.shared.recents.view.AppTransitionAnimationSpecsFuture
                public List composeSpecs() {
                    return Collections.singletonList(new AppTransitionAnimationSpecCompat(i4, drawViewIntoHardwareBitmap, rect));
                }
            }, runnable, this.mHandler, true, taskKey.displayId);
            ((BaseDraggingActivity) this.mTarget).getStatsLogManager().logger().withItemInfo(this.mTaskView.getItemInfo()).log(this.mLauncherEvent);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SystemShortcut.dismissTaskMenuView((BaseDraggingActivity) this.mTarget);
            RecentsView recentsView = (RecentsView) ((BaseDraggingActivity) this.mTarget).getOverviewPanel();
            recentsView.switchToScreenshot(new RunnableC0545r1(this, recentsView, 1));
        }
    }

    /* loaded from: classes.dex */
    public class PinSystemShortcut extends SystemShortcut {
        private static final String TAG = "PinSystemShortcut";
        private final TaskView mTaskView;

        public PinSystemShortcut(BaseDraggingActivity baseDraggingActivity, TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
            super(R.drawable.ic_pin, R.string.recent_task_option_pin, baseDraggingActivity, taskIdAttributeContainer.getItemInfo(), taskIdAttributeContainer.getTaskView());
            this.mTaskView = taskIdAttributeContainer.getTaskView();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.mTaskView.launchTaskAnimated() != null) {
                ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mTarget)).startScreenPinning(this.mTaskView.getTask().key.id);
            }
            SystemShortcut.dismissTaskMenuView((BaseDraggingActivity) this.mTarget);
            ((BaseDraggingActivity) this.mTarget).getStatsLogManager().logger().withItemInfo(this.mTaskView.getItemInfo()).log(StatsLogManager.LauncherEvent.LAUNCHER_SYSTEM_SHORTCUT_PIN_TAP);
        }
    }

    /* loaded from: classes.dex */
    public class SaveAppPairSystemShortcut extends SystemShortcut {
        private final TaskView mTaskView;

        public SaveAppPairSystemShortcut(BaseDraggingActivity baseDraggingActivity, TaskView taskView) {
            super(R.drawable.ic_save_app_pair, R.string.save_app_pair, baseDraggingActivity, taskView.getItemInfo(), taskView);
            this.mTaskView = taskView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SystemShortcut.dismissTaskMenuView((BaseDraggingActivity) this.mTarget);
            ((RecentsView) ((BaseDraggingActivity) this.mTarget).getOverviewPanel()).getSplitSelectController().getAppPairsController().saveAppPair(this.mTaskView);
        }
    }

    /* loaded from: classes.dex */
    public class SplitSelectSystemShortcut extends SystemShortcut {
        private final SplitConfigurationOptions$SplitPositionOption mSplitPositionOption;
        private final TaskView mTaskView;

        public SplitSelectSystemShortcut(BaseDraggingActivity baseDraggingActivity, TaskView taskView, SplitConfigurationOptions$SplitPositionOption splitConfigurationOptions$SplitPositionOption) {
            super(splitConfigurationOptions$SplitPositionOption.iconResId, splitConfigurationOptions$SplitPositionOption.textResId, baseDraggingActivity, taskView.getItemInfo(), taskView);
            this.mTaskView = taskView;
            this.mSplitPositionOption = splitConfigurationOptions$SplitPositionOption;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.mTaskView.initiateSplitSelect(this.mSplitPositionOption);
        }
    }

    default List createSingletonShortcutList(SystemShortcut systemShortcut) {
        if (systemShortcut != null) {
            return Collections.singletonList(systemShortcut);
        }
        return null;
    }

    default List getShortcuts(BaseDraggingActivity baseDraggingActivity, TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
        return null;
    }

    default boolean showForSplitscreen() {
        return false;
    }
}
