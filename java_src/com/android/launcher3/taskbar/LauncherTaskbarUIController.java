package com.android.launcher3.taskbar;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.os.RemoteException;
import android.util.Log;
import android.view.TaskTransitionSpec;
import android.view.WindowManagerGlobal;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.TaskAnimationManager;
import com.android.quickstep.util.GroupTask;
import com.android.quickstep.util.WorkspaceRevealAnim;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
import java.util.Arrays;
import s.C1391a;
/* loaded from: classes.dex */
public final class LauncherTaskbarUIController extends TaskbarUIController {
    private final QuickstepLauncher mLauncher;
    private final r mOnDeviceProfileChangeListener;
    private final AnimatedFloat mTaskbarInAppDisplayProgress;
    private final MultiPropertyFactory mTaskbarInAppDisplayProgressMultiProp;
    private final TaskbarLauncherStateController mTaskbarLauncherStateController;

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.launcher3.taskbar.r] */
    public LauncherTaskbarUIController(QuickstepLauncher quickstepLauncher) {
        AnimatedFloat animatedFloat = new AnimatedFloat(new Runnable() { // from class: com.android.launcher3.taskbar.p
            @Override // java.lang.Runnable
            public final void run() {
                LauncherTaskbarUIController.a(LauncherTaskbarUIController.this);
            }
        });
        this.mTaskbarInAppDisplayProgress = animatedFloat;
        this.mTaskbarInAppDisplayProgressMultiProp = new MultiPropertyFactory(animatedFloat, AnimatedFloat.VALUE, 4, new C0449q());
        this.mOnDeviceProfileChangeListener = new DeviceProfile.OnDeviceProfileChangeListener() { // from class: com.android.launcher3.taskbar.r
            @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
            public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
                LauncherTaskbarUIController.b(LauncherTaskbarUIController.this, deviceProfile);
            }
        };
        this.mTaskbarLauncherStateController = new TaskbarLauncherStateController();
        this.mLauncher = quickstepLauncher;
    }

    public static void a(LauncherTaskbarUIController launcherTaskbarUIController) {
        if (launcherTaskbarUIController.mControllers != null) {
            for (int i4 = 0; i4 < 4; i4++) {
                launcherTaskbarUIController.mControllers.getSharedState().inAppDisplayProgressMultiPropValues[i4] = launcherTaskbarUIController.mTaskbarInAppDisplayProgressMultiProp.get(i4).getValue();
            }
            launcherTaskbarUIController.mControllers.navbarButtonsViewController.updateNavButtonTranslationY();
        }
    }

    public static void b(LauncherTaskbarUIController launcherTaskbarUIController, DeviceProfile deviceProfile) {
        TaskbarViewController taskbarViewController;
        boolean isStashedInApp = launcherTaskbarUIController.mControllers.taskbarStashController.isStashedInApp();
        deviceProfile.isTaskbarPresentInApps = !isStashedInApp;
        launcherTaskbarUIController.updateTaskTransitionSpec(isStashedInApp);
        TaskbarControllers taskbarControllers = launcherTaskbarUIController.mControllers;
        if (taskbarControllers == null || (taskbarViewController = taskbarControllers.taskbarViewController) == null) {
            return;
        }
        taskbarViewController.onRotationChanged(deviceProfile);
    }

    private void updateTaskTransitionSpec(boolean z4) {
        try {
            if (z4) {
                WindowManagerGlobal.getWindowManagerService().clearTaskTransitionSpec();
            } else {
                WindowManagerGlobal.getWindowManagerService().setTaskTransitionSpec(new TaskTransitionSpec(this.mLauncher.getColor(R.color.taskbar_background)));
            }
        } catch (RemoteException e4) {
            Log.e("TaskbarUIController", "Failed to update task transition spec to account for new taskbar state", e4);
        }
    }

    public final void addLauncherResumeAnimation(AnimatorSet animatorSet) {
        animatorSet.play(onLauncherResumedOrPaused(true, false, false, WorkspaceRevealAnim.DURATION_MS));
    }

    public final Animator createAnimToLauncher(LauncherState launcherState, RecentsAnimationCallbacks recentsAnimationCallbacks, long j4) {
        return this.mTaskbarLauncherStateController.createAnimToLauncher(launcherState, recentsAnimationCallbacks, j4);
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        super.dumpLogs(str, printWriter);
        printWriter.println(String.format("%s\tTaskbar in-app display progress: %.2f", str, Float.valueOf(this.mTaskbarInAppDisplayProgress.value)));
        this.mTaskbarInAppDisplayProgressMultiProp.dump(C1391a.a(str, "\t\t"), printWriter, "mTaskbarInAppDisplayProgressMultiProp", "MINUS_ONE_PAGE_PROGRESS_INDEX", "ALL_APPS_PAGE_PROGRESS_INDEX", "WIDGETS_PAGE_PROGRESS_INDEX", "SYSUI_SURFACE_PROGRESS_INDEX");
        this.mTaskbarLauncherStateController.dumpLogs(C1391a.a(str, "\t"), printWriter);
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final RecentsView getRecentsView() {
        return (RecentsView) this.mLauncher.getOverviewPanel();
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
        int i4 = taskbarControllers.getSharedState().sysuiStateFlags;
        TaskbarLauncherStateController taskbarLauncherStateController = this.mTaskbarLauncherStateController;
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        taskbarLauncherStateController.init(taskbarControllers, quickstepLauncher, i4);
        quickstepLauncher.setTaskbarUIController(this);
        onLauncherResumedOrPaused(quickstepLauncher.hasBeenResumed(), true);
        DeviceProfile deviceProfile = quickstepLauncher.getDeviceProfile();
        boolean isStashedInApp = this.mControllers.taskbarStashController.isStashedInApp();
        deviceProfile.isTaskbarPresentInApps = !isStashedInApp;
        updateTaskTransitionSpec(isStashedInApp);
        quickstepLauncher.addOnDeviceProfileChangeListener(this.mOnDeviceProfileChangeListener);
        float[] fArr = this.mControllers.getSharedState().inAppDisplayProgressMultiPropValues;
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        for (int i5 = 0; i5 < copyOf.length; i5++) {
            this.mTaskbarInAppDisplayProgressMultiProp.get(i5).setValue(copyOf[i5]);
        }
    }

    public final boolean isDraggingItem() {
        return this.mControllers.taskbarDragController.isDragging();
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final boolean isHotseatIconOnTopWhenAligned() {
        return this.mTaskbarLauncherStateController.isInHotseatOnTopStates() && this.mTaskbarInAppDisplayProgressMultiProp.get(0).getValue() == 0.0f;
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final boolean isIconAlignedWithHotseat() {
        return this.mTaskbarLauncherStateController.isIconAlignedWithHotseat();
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final boolean isInOverview() {
        return this.mTaskbarLauncherStateController.isInOverview();
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final boolean isTaskbarTouchable() {
        TaskbarLauncherStateController taskbarLauncherStateController = this.mTaskbarLauncherStateController;
        return (taskbarLauncherStateController.isAnimatingToLauncher() && taskbarLauncherStateController.isTaskbarAlignedWithHotseat()) ? false : true;
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final void launchSplitTasks(ConstraintLayout constraintLayout, GroupTask groupTask) {
        this.mLauncher.launchSplitTasks(constraintLayout, groupTask);
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final void onDestroy() {
        this.mControllers = null;
        onLauncherResumedOrPaused(false, false);
        this.mTaskbarLauncherStateController.onDestroy();
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        quickstepLauncher.setTaskbarUIController(null);
        quickstepLauncher.removeOnDeviceProfileChangeListener(this.mOnDeviceProfileChangeListener);
        updateTaskTransitionSpec(true);
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final void onExpandPip() {
        super.onExpandPip();
        TaskbarLauncherStateController taskbarLauncherStateController = this.mTaskbarLauncherStateController;
        taskbarLauncherStateController.updateStateForFlag(1, false);
        taskbarLauncherStateController.applyState();
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final void onIconLayoutBoundsChanged() {
        this.mTaskbarLauncherStateController.resetIconAlignment();
    }

    public final void onLauncherResumedOrPaused(boolean z4) {
        onLauncherResumedOrPaused(z4, false);
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final void onStashedInAppChanged() {
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        boolean isStashedInApp = this.mControllers.taskbarStashController.isStashedInApp();
        deviceProfile.isTaskbarPresentInApps = !isStashedInApp;
        updateTaskTransitionSpec(isStashedInApp);
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final void onTaskbarIconLaunched(ItemInfoWithIcon itemInfoWithIcon) {
        super.onTaskbarIconLaunched(itemInfoWithIcon);
        InstanceId newInstanceId = new InstanceIdSequence().newInstanceId();
        this.mLauncher.logAppLaunch(this.mControllers.taskbarActivityContext.getStatsLogManager(), itemInfoWithIcon, newInstanceId);
    }

    public final void onTaskbarInAppDisplayProgressUpdate(float f4, int i4) {
        this.mTaskbarInAppDisplayProgressMultiProp.get(i4).setValue(f4);
        TaskbarControllers taskbarControllers = this.mControllers;
        if (taskbarControllers == null || !taskbarControllers.uiController.isIconAlignedWithHotseat() || this.mTaskbarLauncherStateController.isAnimatingToLauncher()) {
            return;
        }
        this.mControllers.navbarButtonsViewController.getTaskbarNavButtonTranslationYForInAppDisplay().updateValue(this.mLauncher.getDeviceProfile().getTaskbarOffsetY() * this.mTaskbarInAppDisplayProgress.value);
        this.mControllers.navbarButtonsViewController.getOnTaskbarBackgroundNavButtonColorOverride().updateValue(f4);
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final void refreshResumedState() {
        onLauncherResumedOrPaused(this.mLauncher.hasBeenResumed(), false);
    }

    public final void setShouldDelayLauncherStateAnim(boolean z4) {
        this.mTaskbarLauncherStateController.setShouldDelayLauncherStateAnim(z4);
    }

    public final boolean shouldShowEduOnAppLaunch() {
        if (Utilities.isRunningInTestHarness()) {
            return false;
        }
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        return !DisplayController.isTransientTaskbar(quickstepLauncher) ? !quickstepLauncher.getOnboardingPrefs().hasReachedMaxCount(OnboardingPrefs.TASKBAR_EDU_TOOLTIP_STEP) : this.mControllers.taskbarEduTooltipController.getTooltipStep() < 1;
    }

    public final boolean shouldUseInAppLayout() {
        return this.mTaskbarInAppDisplayProgress.value > 0.0f;
    }

    public final void showEduOnAppLaunch() {
        if (shouldShowEduOnAppLaunch()) {
            if (DisplayController.isTransientTaskbar(this.mLauncher)) {
                this.mControllers.taskbarEduTooltipController.maybeShowSwipeEdu();
            } else {
                this.mControllers.taskbarEduTooltipController.maybeShowFeaturesEdu();
            }
        }
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final void updateStateForSysuiFlags(int i4) {
        this.mTaskbarLauncherStateController.updateStateForSysuiFlags(i4);
    }

    private void onLauncherResumedOrPaused(boolean z4, boolean z5) {
        onLauncherResumedOrPaused(z4, z5, true, DisplayController.isTransientTaskbar(this.mLauncher) ? 417 : !z4 ? 600 : 300);
    }

    private Animator onLauncherResumedOrPaused(boolean z4, boolean z5, boolean z6, int i4) {
        if (TaskAnimationManager.ENABLE_SHELL_TRANSITIONS && z4) {
            QuickstepLauncher quickstepLauncher = this.mLauncher;
            if (((LauncherState) quickstepLauncher.getStateManager().getState()).hasFlag(1) && !((LauncherState) quickstepLauncher.getStateManager().getState()).isTaskbarAlignedWithHotseat()) {
                return null;
            }
        }
        TaskbarLauncherStateController taskbarLauncherStateController = this.mTaskbarLauncherStateController;
        taskbarLauncherStateController.updateStateForFlag(1, z4);
        return taskbarLauncherStateController.applyState(z5 ? 0L : i4, z6);
    }
}
