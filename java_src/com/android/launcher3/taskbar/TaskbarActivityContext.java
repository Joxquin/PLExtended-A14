package com.android.launcher3.taskbar;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.hardware.display.DisplayManager;
import android.os.Process;
import android.os.Trace;
import android.provider.Settings;
import android.util.Log;
import android.view.Display;
import android.view.RoundedCorner;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.logger.LauncherAtom$AllAppsContainer;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$FolderContainer;
import com.android.launcher3.logger.LauncherAtom$HotseatContainer;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logger.LauncherAtom$PredictedHotseatContainer;
import com.android.launcher3.logger.LauncherAtom$PredictionContainer;
import com.android.launcher3.logger.LauncherAtom$TaskBarContainer;
import com.android.launcher3.logger.LauncherAtom$TaskSwitcherContainer;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.taskbar.TaskbarTranslationController;
import com.android.launcher3.taskbar.allapps.TaskbarAllAppsController;
import com.android.launcher3.taskbar.bubbles.BubbleBarController;
import com.android.launcher3.taskbar.bubbles.BubbleBarView;
import com.android.launcher3.taskbar.bubbles.BubbleBarViewController;
import com.android.launcher3.taskbar.bubbles.BubbleControllers;
import com.android.launcher3.taskbar.bubbles.BubbleDismissController;
import com.android.launcher3.taskbar.bubbles.BubbleDragController;
import com.android.launcher3.taskbar.bubbles.BubbleStashController;
import com.android.launcher3.taskbar.bubbles.BubbleStashedHandleViewController;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayController;
import com.android.launcher3.taskbar.unfold.NonDestroyableScopedUnfoldTransitionProgressProvider;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.util.ActivityOptionsWrapper;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator;
import com.android.launcher3.util.NavigationMode;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.util.SettingsCache;
import com.android.launcher3.util.SplitConfigurationOptions$SplitSelectSource;
import com.android.launcher3.util.TraceHelper;
import com.android.launcher3.util.ViewCache;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.views.IconButtonView;
import com.android.quickstep.util.WorkspaceRevealAnim;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.rotation.RotationButtonController;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Supplier;
import w1.C1452d;
/* loaded from: classes.dex */
public final class TaskbarActivityContext extends BaseTaskbarContext {
    private final TaskbarShortcutMenuAccessibilityDelegate mAccessibilityDelegate;
    private boolean mAddedWindow;
    private boolean mBindingItems;
    private final TaskbarControllers mControllers;
    private DeviceProfile mDeviceProfile;
    private final TaskbarDragLayer mDragLayer;
    private boolean mImeDrawsImeNavBar;
    private boolean mIsDestroyed;
    private boolean mIsExcludeFromMagnificationRegion;
    private boolean mIsFullscreen;
    private final boolean mIsNavBarForceVisible;
    private final boolean mIsNavBarKidsMode;
    private final boolean mIsSafeModeEnabled;
    private final boolean mIsUserSetupComplete;
    private int mLastRequestedNonFullscreenHeight;
    private final RoundedCorner mLeftCorner;
    private NavigationMode mNavMode;
    private final RoundedCorner mRightCorner;
    private final Rect mTransientTaskbarBounds;
    private final ViewCache mViewCache;
    private WindowManager.LayoutParams mWindowLayoutParams;
    private final WindowManager mWindowManager;

    public TaskbarActivityContext(Context context, DeviceProfile deviceProfile, TaskbarNavButtonController taskbarNavButtonController, NonDestroyableScopedUnfoldTransitionProgressProvider nonDestroyableScopedUnfoldTransitionProgressProvider) {
        super(context);
        TaskbarOverlayController taskbarOverlayController;
        TaskbarRecentAppsController taskbarRecentAppsController;
        this.mViewCache = new ViewCache();
        this.mIsDestroyed = false;
        this.mIsExcludeFromMagnificationRegion = false;
        this.mBindingItems = false;
        this.mAddedWindow = false;
        this.mTransientTaskbarBounds = new Rect();
        DeviceProfile.Builder builder = deviceProfile.toBuilder(this);
        builder.withDimensionsOverride(new N(this, deviceProfile));
        this.mDeviceProfile = builder.build();
        this.mNavMode = DisplayController.getNavigationMode(this);
        Resources resources = getResources();
        int identifier = resources.getIdentifier("config_imeDrawsImeNavBar", "bool", "android");
        this.mImeDrawsImeNavBar = identifier != 0 ? resources.getBoolean(identifier) : false;
        this.mIsSafeModeEnabled = ((Boolean) TraceHelper.allowIpcs("isSafeMode", new Supplier(this) { // from class: com.android.launcher3.taskbar.L

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ TaskbarActivityContext f5042b;

            {
                this.f5042b = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (r2) {
                    case 0:
                        return Boolean.valueOf(this.f5042b.getPackageManager().isSafeMode());
                    default:
                        return Integer.valueOf(this.f5042b.getDisplay().getRotation());
                }
            }
        })).booleanValue();
        SettingsCache settingsCache = (SettingsCache) SettingsCache.INSTANCE.get(this);
        this.mIsUserSetupComplete = settingsCache.getValue(0, Settings.Secure.getUriFor("user_setup_complete"));
        boolean value = settingsCache.getValue(0, Settings.Secure.getUriFor("nav_bar_kids_mode"));
        this.mIsNavBarKidsMode = value;
        this.mIsNavBarForceVisible = value;
        Display display = context.getDisplay();
        Context applicationContext = getApplicationContext();
        WindowManager windowManager = (WindowManager) applicationContext.getSystemService(WindowManager.class);
        this.mWindowManager = windowManager;
        this.mLeftCorner = display.getRoundedCorner(3);
        this.mRightCorner = display.getRoundedCorner(2);
        TaskbarDragLayer taskbarDragLayer = (TaskbarDragLayer) this.mLayoutInflater.inflate((!DisplayController.isTransientTaskbar(this) || TaskbarManager.isPhoneMode(this.mDeviceProfile)) ? R.layout.taskbar : R.layout.transient_taskbar, (ViewGroup) null, false);
        this.mDragLayer = taskbarDragLayer;
        TaskbarView taskbarView = (TaskbarView) taskbarDragLayer.findViewById(R.id.taskbar_view);
        TaskbarScrimView taskbarScrimView = (TaskbarScrimView) taskbarDragLayer.findViewById(R.id.taskbar_scrim);
        FrameLayout frameLayout = (FrameLayout) taskbarDragLayer.findViewById(R.id.navbuttons_view);
        StashedHandleView stashedHandleView = (StashedHandleView) taskbarDragLayer.findViewById(R.id.stashed_handle);
        BubbleBarView bubbleBarView = (BubbleBarView) taskbarDragLayer.findViewById(R.id.taskbar_bubbles);
        StashedHandleView stashedHandleView2 = (StashedHandleView) taskbarDragLayer.findViewById(R.id.stashed_bubble_handle);
        this.mAccessibilityDelegate = new TaskbarShortcutMenuAccessibilityDelegate(this);
        boolean hasSystemFeature = getPackageManager().hasSystemFeature("android.hardware.type.pc");
        Optional empty = (!BubbleBarController.BUBBLE_BAR_ENABLED || bubbleBarView == null) ? Optional.empty() : Optional.of(new BubbleControllers(new BubbleBarController(this, bubbleBarView), new BubbleBarViewController(this, bubbleBarView), new BubbleStashController(this), new BubbleStashedHandleViewController(this, stashedHandleView2), new BubbleDragController(this), new BubbleDismissController(this, taskbarDragLayer)));
        RotationButtonController rotationButtonController = new RotationButtonController(this, applicationContext.getColor(R.color.floating_rotation_button_light_color), applicationContext.getColor(R.color.floating_rotation_button_dark_color), R.drawable.ic_sysbar_rotate_button_ccw_start_0, R.drawable.ic_sysbar_rotate_button_ccw_start_90, R.drawable.ic_sysbar_rotate_button_cw_start_0, R.drawable.ic_sysbar_rotate_button_cw_start_90, new Supplier(this) { // from class: com.android.launcher3.taskbar.L

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ TaskbarActivityContext f5042b;

            {
                this.f5042b = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (r2) {
                    case 0:
                        return Boolean.valueOf(this.f5042b.getPackageManager().isSafeMode());
                    default:
                        return Integer.valueOf(this.f5042b.getDisplay().getRotation());
                }
            }
        });
        rotationButtonController.setBgExecutor(Executors.THREAD_POOL_EXECUTOR);
        TaskbarDragController taskbarDragController = new TaskbarDragController(this);
        NavbarButtonsViewController desktopNavbarButtonsViewController = hasSystemFeature ? new DesktopNavbarButtonsViewController(this, frameLayout) : new NavbarButtonsViewController(this, frameLayout);
        TaskbarDragLayerController taskbarDragLayerController = new TaskbarDragLayerController(this, taskbarDragLayer);
        TaskbarViewController taskbarViewController = new TaskbarViewController(this, taskbarView);
        TaskbarScrimViewController taskbarScrimViewController = new TaskbarScrimViewController(this, taskbarScrimView);
        TaskbarUnfoldAnimationController taskbarUnfoldAnimationController = new TaskbarUnfoldAnimationController(this, nonDestroyableScopedUnfoldTransitionProgressProvider, windowManager, new C1452d((DisplayManager) applicationContext.getSystemService(DisplayManager.class), this, getMainThreadHandler()));
        TaskbarKeyguardController taskbarKeyguardController = new TaskbarKeyguardController(this);
        StashedHandleViewController stashedHandleViewController = new StashedHandleViewController(this, stashedHandleView);
        TaskbarStashController taskbarStashController = new TaskbarStashController(this);
        TaskbarAutohideSuspendController taskbarAutohideSuspendController = new TaskbarAutohideSuspendController(this);
        TaskbarPopupController taskbarPopupController = new TaskbarPopupController(this);
        TaskbarForceVisibleImmersiveController taskbarForceVisibleImmersiveController = new TaskbarForceVisibleImmersiveController(this);
        TaskbarOverlayController taskbarOverlayController2 = new TaskbarOverlayController(this, deviceProfile);
        TaskbarAllAppsController taskbarAllAppsController = new TaskbarAllAppsController();
        TaskbarInsetsController taskbarInsetsController = new TaskbarInsetsController(this);
        VoiceInteractionWindowController voiceInteractionWindowController = new VoiceInteractionWindowController(this);
        TaskbarTranslationController taskbarTranslationController = new TaskbarTranslationController(this);
        TaskbarSpringOnStashController taskbarSpringOnStashController = new TaskbarSpringOnStashController(this);
        if (hasSystemFeature) {
            taskbarOverlayController = taskbarOverlayController2;
            taskbarRecentAppsController = new DesktopTaskbarRecentAppsController(this);
        } else {
            taskbarOverlayController = taskbarOverlayController2;
            taskbarRecentAppsController = TaskbarRecentAppsController.DEFAULT;
        }
        this.mControllers = new TaskbarControllers(this, taskbarDragController, taskbarNavButtonController, desktopNavbarButtonsViewController, rotationButtonController, taskbarDragLayerController, taskbarViewController, taskbarScrimViewController, taskbarUnfoldAnimationController, taskbarKeyguardController, stashedHandleViewController, taskbarStashController, taskbarAutohideSuspendController, taskbarPopupController, taskbarForceVisibleImmersiveController, taskbarOverlayController, taskbarAllAppsController, taskbarInsetsController, voiceInteractionWindowController, taskbarTranslationController, taskbarSpringOnStashController, taskbarRecentAppsController, new TaskbarEduTooltipController(this), new KeyboardQuickSwitchController(), new TaskbarDividerPopupController(this), empty);
    }

    public static void b(TaskbarActivityContext taskbarActivityContext, Folder folder, int i4) {
        if (i4 == 2) {
            taskbarActivityContext.setTaskbarWindowFocusableForIme(true);
        } else if (i4 != 0) {
            taskbarActivityContext.getClass();
        } else {
            taskbarActivityContext.mDragLayer.post(new Q(taskbarActivityContext, 0));
            folder.setOnFolderStateChangedListener(null);
        }
    }

    public static /* synthetic */ void c(TaskbarActivityContext taskbarActivityContext, int i4, BubbleControllers bubbleControllers) {
        taskbarActivityContext.getClass();
        bubbleControllers.bubbleBarController.updateStateForSysuiFlags(i4);
        bubbleControllers.bubbleStashedHandleViewController.setIsHomeButtonDisabled(taskbarActivityContext.mControllers.navbarButtonsViewController.isHomeDisabled());
    }

    public static void d(TaskbarActivityContext taskbarActivityContext) {
        taskbarActivityContext.mControllers.taskbarStashController.updateAndAnimateTransientTaskbar(true, true);
    }

    public static /* synthetic */ void e(TaskbarActivityContext taskbarActivityContext, View view) {
        taskbarActivityContext.mControllers.taskbarViewController.setClickAndLongClickListenersForIcon(view);
        view.setHapticFeedbackEnabled(true);
    }

    public static void f(final TaskbarActivityContext taskbarActivityContext, Folder folder) {
        taskbarActivityContext.getClass();
        folder.animateOpen();
        super.getStatsLogManager().logger().withItemInfo(folder.mInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_OPEN);
        folder.iterateOverItems(new LauncherBindableItemsContainer$ItemOperator() { // from class: com.android.launcher3.taskbar.H
            @Override // com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator
            public final boolean evaluate(View view, ItemInfo itemInfo) {
                TaskbarActivityContext.e(TaskbarActivityContext.this, view);
                return false;
            }
        });
    }

    public final void addWindowView(BaseDragLayer baseDragLayer, WindowManager.LayoutParams layoutParams) {
        if (baseDragLayer.isAttachedToWindow()) {
            return;
        }
        this.mWindowManager.addView(baseDragLayer, layoutParams);
    }

    public final void applyForciblyShownFlagWhileTransientTaskbarUnstashed(boolean z4) {
        if (DisplayController.isTransientTaskbar(this)) {
            if (z4) {
                this.mWindowLayoutParams.forciblyShownTypes |= WindowInsets.Type.navigationBars();
            } else {
                this.mWindowLayoutParams.forciblyShownTypes &= ~WindowInsets.Type.navigationBars();
            }
            notifyUpdateLayoutParams();
        }
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final void applyOverwritesToLogItem(LauncherAtom$ItemInfo.Builder builder) {
        if (builder.hasContainerInfo()) {
            LauncherAtom$ContainerInfo containerInfo = builder.getContainerInfo();
            LauncherAtom$TaskBarContainer.Builder newBuilder = LauncherAtom$TaskBarContainer.newBuilder();
            if (this.mControllers.uiController.isInOverview()) {
                newBuilder.setTaskSwitcherContainer(LauncherAtom$TaskSwitcherContainer.newBuilder());
            }
            if (containerInfo.hasPredictedHotseatContainer()) {
                LauncherAtom$PredictedHotseatContainer predictedHotseatContainer = containerInfo.getPredictedHotseatContainer();
                if (predictedHotseatContainer.hasIndex()) {
                    newBuilder.setIndex$3(predictedHotseatContainer.getIndex());
                }
                if (predictedHotseatContainer.hasCardinality()) {
                    newBuilder.setCardinality$2(predictedHotseatContainer.getCardinality());
                }
                LauncherAtom$ContainerInfo.Builder newBuilder2 = LauncherAtom$ContainerInfo.newBuilder();
                newBuilder2.setTaskBarContainer(newBuilder);
                builder.setContainerInfo(newBuilder2);
            } else if (containerInfo.hasHotseat()) {
                LauncherAtom$HotseatContainer hotseat = containerInfo.getHotseat();
                if (hotseat.hasIndex()) {
                    newBuilder.setIndex$3(hotseat.getIndex());
                }
                LauncherAtom$ContainerInfo.Builder newBuilder3 = LauncherAtom$ContainerInfo.newBuilder();
                newBuilder3.setTaskBarContainer(newBuilder);
                builder.setContainerInfo(newBuilder3);
            } else if (containerInfo.hasFolder() && containerInfo.getFolder().hasHotseat()) {
                LauncherAtom$FolderContainer.Builder builder2 = (LauncherAtom$FolderContainer.Builder) containerInfo.getFolder().toBuilder$1();
                LauncherAtom$HotseatContainer hotseat2 = builder2.getHotseat();
                if (hotseat2.hasIndex()) {
                    newBuilder.setIndex$3(hotseat2.getIndex());
                }
                builder2.setTaskbar(newBuilder);
                builder2.clearHotseat();
                LauncherAtom$ContainerInfo.Builder newBuilder4 = LauncherAtom$ContainerInfo.newBuilder();
                newBuilder4.setFolder(builder2);
                builder.setContainerInfo(newBuilder4);
            } else if (containerInfo.hasAllAppsContainer()) {
                LauncherAtom$ContainerInfo.Builder newBuilder5 = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$AllAppsContainer.Builder builder3 = (LauncherAtom$AllAppsContainer.Builder) containerInfo.getAllAppsContainer().toBuilder$1();
                builder3.setTaskbarContainer(newBuilder);
                newBuilder5.setAllAppsContainer(builder3);
                builder.setContainerInfo(newBuilder5);
            } else if (containerInfo.hasPredictionContainer()) {
                LauncherAtom$ContainerInfo.Builder newBuilder6 = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$PredictionContainer.Builder builder4 = (LauncherAtom$PredictionContainer.Builder) containerInfo.getPredictionContainer().toBuilder$1();
                builder4.setTaskbarContainer$1(newBuilder);
                newBuilder6.setPredictionContainer(builder4);
                builder.setContainerInfo(newBuilder6);
            }
        }
    }

    public final WindowManager.LayoutParams createDefaultWindowLayoutParams(int i4, String str) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, this.mLastRequestedNonFullscreenHeight, i4, (!DisplayController.isTransientTaskbar(this) || Utilities.isRunningInTestHarness()) ? 545259528 : 545521704, -3);
        layoutParams.setTitle(str);
        layoutParams.packageName = getPackageName();
        layoutParams.gravity = 80;
        layoutParams.setFitInsetsTypes(0);
        layoutParams.receiveInsetsIgnoringZOrder = true;
        layoutParams.softInputMode = 48;
        layoutParams.layoutInDisplayCutoutMode = 3;
        layoutParams.privateFlags = 64;
        layoutParams.accessibilityTitle = getString(TaskbarManager.isPhoneMode(this.mDeviceProfile) ? R.string.taskbar_phone_a11y_title : R.string.taskbar_a11y_title);
        return layoutParams;
    }

    public final AnimatorPlaybackController createLauncherStartFromSuwAnim() {
        AnimatorSet animatorSet = new AnimatorSet();
        long j4 = (long) WorkspaceRevealAnim.DURATION_MS;
        animatorSet.setDuration(j4);
        TaskbarUIController taskbarUIController = this.mControllers.uiController;
        if (taskbarUIController instanceof LauncherTaskbarUIController) {
            ((LauncherTaskbarUIController) taskbarUIController).addLauncherResumeAnimation(animatorSet);
        }
        this.mControllers.taskbarStashController.addUnstashToHotseatAnimation(animatorSet);
        final IconButtonView allAppsButtonView = this.mControllers.taskbarViewController.getAllAppsButtonView();
        if (allAppsButtonView != null && !FeatureFlags.ENABLE_ALL_APPS_BUTTON_IN_HOTSEAT.get()) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.setDuration(j4);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.taskbar.O
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    allAppsButtonView.setAlpha(0.0f);
                }
            });
            animatorSet.play(ofFloat);
        }
        return AnimatorPlaybackController.wrap(animatorSet, j4);
    }

    public final void disableNavBarElements(int i4, int i5) {
        if (i4 != getDisplayId()) {
            return;
        }
        this.mControllers.rotationButtonController.onDisable2FlagChanged(i5);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final void dispatchDeviceProfileChanged() {
        super.dispatchDeviceProfileChanged();
        Trace.instantForTrack(4096L, "TaskbarActivityContext#DeviceProfileChanged", this.mDeviceProfile.toSmallString());
    }

    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarActivityContext:");
        printWriter.println(String.format("%s\tmNavMode=%s", str, this.mNavMode));
        printWriter.println(String.format("%s\tmImeDrawsImeNavBar=%b", str, Boolean.valueOf(this.mImeDrawsImeNavBar)));
        printWriter.println(String.format("%s\tmIsUserSetupComplete=%b", str, Boolean.valueOf(this.mIsUserSetupComplete)));
        printWriter.println(String.format("%s\tmWindowLayoutParams.height=%dpx", str, Integer.valueOf(this.mWindowLayoutParams.height)));
        printWriter.println(String.format("%s\tmBindInProgress=%b", str, Boolean.valueOf(this.mBindingItems)));
        TaskbarControllers taskbarControllers = this.mControllers;
        taskbarControllers.dumpLogs(str + "\t", printWriter);
        this.mDeviceProfile.dump(this, str, printWriter);
    }

    public void enableBlockingTimeoutDuringTests(boolean z4) {
        this.mControllers.taskbarStashController.enableBlockingTimeoutDuringTests(z4);
    }

    public void enableManualStashingDuringTests(boolean z4) {
        this.mControllers.taskbarStashController.enableManualStashingDuringTests(z4);
    }

    public final void excludeFromMagnificationRegion(boolean z4) {
        if (this.mIsExcludeFromMagnificationRegion == z4) {
            return;
        }
        this.mIsExcludeFromMagnificationRegion = z4;
        if (z4) {
            this.mWindowLayoutParams.privateFlags |= 2097152;
        } else {
            this.mWindowLayoutParams.privateFlags &= -2097153;
        }
        this.mWindowManager.updateViewLayout(this.mDragLayer, this.mWindowLayoutParams);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final View.AccessibilityDelegate getAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final ActivityOptionsWrapper getActivityLaunchOptions(View view, ItemInfo itemInfo) {
        return makeDefaultActivityOptions(-1);
    }

    public final BubbleControllers getBubbleControllers() {
        return (BubbleControllers) this.mControllers.bubbleControllers.orElse(null);
    }

    public final int getDefaultTaskbarWindowHeight() {
        Resources resources = getResources();
        if (TaskbarManager.FLAG_HIDE_NAVBAR_WINDOW && this.mDeviceProfile.isPhone) {
            return isThreeButtonNav() ? resources.getDimensionPixelSize(R.dimen.taskbar_size) : resources.getDimensionPixelSize(R.dimen.taskbar_stashed_size);
        } else if (this.mIsUserSetupComplete) {
            if (!DisplayController.isTransientTaskbar(this)) {
                return Math.max(getLeftCornerRadius(), getRightCornerRadius()) + this.mDeviceProfile.taskbarHeight;
            }
            DeviceProfile deviceProfile = this.mDeviceProfile;
            return resources.getDimensionPixelSize(R.dimen.transient_taskbar_shadow_blur) + (deviceProfile.taskbarBottomMargin * 2) + deviceProfile.taskbarHeight;
        } else {
            return getResources().getDimensionPixelSize(R.dimen.taskbar_suw_frame);
        }
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final DeviceProfile getDeviceProfile() {
        return this.mDeviceProfile;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final DotInfo getDotInfoForItem(ItemInfo itemInfo) {
        return getPopupDataProvider().getDotInfoForItem(itemInfo);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final DragController getDragController() {
        return this.mControllers.taskbarDragController;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final TaskbarDragLayer getDragLayer() {
        return this.mDragLayer;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final Rect getFolderBoundingBox() {
        return this.mControllers.taskbarDragLayerController.getFolderBoundingBox();
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final View.OnClickListener getItemOnClickListener() {
        return new G(this);
    }

    public final int getLeftCornerRadius() {
        RoundedCorner roundedCorner = this.mLeftCorner;
        if (roundedCorner == null) {
            return 0;
        }
        return roundedCorner.getRadius();
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final PopupDataProvider getPopupDataProvider() {
        return this.mControllers.taskbarPopupController.getPopupDataProvider();
    }

    public final int getRightCornerRadius() {
        RoundedCorner roundedCorner = this.mRightCorner;
        if (roundedCorner == null) {
            return 0;
        }
        return roundedCorner.getRadius();
    }

    public float getStashedTaskbarScale() {
        return this.mControllers.stashedHandleViewController.getStashedHandleHintScale().value;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final StatsLogManager getStatsLogManager() {
        return super.getStatsLogManager();
    }

    public int getTaskbarAllAppsScroll() {
        return this.mControllers.taskbarAllAppsController.getTaskbarAllAppsScroll();
    }

    public int getTaskbarAllAppsTopPadding() {
        return this.mControllers.taskbarAllAppsController.getTaskbarAllAppsTopPadding();
    }

    public final Rect getTransientTaskbarBounds() {
        return this.mTransientTaskbarBounds;
    }

    public final TaskbarTranslationController.TransitionCallback getTranslationCallbacks() {
        return this.mControllers.taskbarTranslationController.getTransitionCallback();
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final ViewCache getViewCache() {
        return this.mViewCache;
    }

    public final WindowManager.LayoutParams getWindowLayoutParams() {
        return this.mWindowLayoutParams;
    }

    public final boolean imeDrawsImeNavBar() {
        return this.mImeDrawsImeNavBar;
    }

    public final void init(TaskbarSharedState taskbarSharedState) {
        int i4;
        Resources resources = getResources();
        int identifier = resources.getIdentifier("config_imeDrawsImeNavBar", "bool", "android");
        this.mImeDrawsImeNavBar = identifier != 0 ? resources.getBoolean(identifier) : false;
        this.mLastRequestedNonFullscreenHeight = getDefaultTaskbarWindowHeight();
        WindowManager.LayoutParams createDefaultWindowLayoutParams = createDefaultWindowLayoutParams(2024, "Taskbar");
        if (TaskbarManager.isPhoneButtonNavMode(this)) {
            createDefaultWindowLayoutParams.paramsForRotation = new WindowManager.LayoutParams[4];
            int i5 = 80;
            int i6 = -1;
            int i7 = -1;
            for (int i8 = 0; i8 <= 3; i8++) {
                WindowManager.LayoutParams createDefaultWindowLayoutParams2 = createDefaultWindowLayoutParams(2024, "Taskbar");
                if (i8 != 0) {
                    if (i8 == 1) {
                        i6 = this.mLastRequestedNonFullscreenHeight;
                        i4 = 8388613;
                    } else if (i8 != 2) {
                        if (i8 != 3) {
                            createDefaultWindowLayoutParams2.width = i6;
                            createDefaultWindowLayoutParams2.height = i7;
                            createDefaultWindowLayoutParams2.gravity = i5;
                            createDefaultWindowLayoutParams.paramsForRotation[i8] = createDefaultWindowLayoutParams2;
                        } else {
                            i6 = this.mLastRequestedNonFullscreenHeight;
                            i4 = 8388611;
                        }
                    }
                    i5 = i4;
                    i7 = -1;
                    createDefaultWindowLayoutParams2.width = i6;
                    createDefaultWindowLayoutParams2.height = i7;
                    createDefaultWindowLayoutParams2.gravity = i5;
                    createDefaultWindowLayoutParams.paramsForRotation[i8] = createDefaultWindowLayoutParams2;
                }
                i7 = this.mLastRequestedNonFullscreenHeight;
                i5 = 80;
                i6 = -1;
                createDefaultWindowLayoutParams2.width = i6;
                createDefaultWindowLayoutParams2.height = i7;
                createDefaultWindowLayoutParams2.gravity = i5;
                createDefaultWindowLayoutParams.paramsForRotation[i8] = createDefaultWindowLayoutParams2;
            }
            WindowManager.LayoutParams layoutParams = createDefaultWindowLayoutParams.paramsForRotation[getDisplay().getRotation()];
            createDefaultWindowLayoutParams.width = layoutParams.width;
            createDefaultWindowLayoutParams.height = layoutParams.height;
            createDefaultWindowLayoutParams.gravity = layoutParams.gravity;
        }
        this.mWindowLayoutParams = createDefaultWindowLayoutParams;
        this.mControllers.init(taskbarSharedState);
        this.mControllers.rotationButtonController.onNavigationModeChanged(this.mNavMode.resValue);
        updateSysuiStateFlags(taskbarSharedState.sysuiStateFlags, true);
        disableNavBarElements(taskbarSharedState.disableNavBarDisplayId, taskbarSharedState.disableNavBarState2);
        onSystemBarAttributesChanged(taskbarSharedState.systemBarAttrsDisplayId, taskbarSharedState.systemBarAttrsBehavior);
        onNavButtonsDarkIntensityChanged(taskbarSharedState.navButtonsDarkIntensity);
        if (TaskbarManager.FLAG_HIDE_NAVBAR_WINDOW) {
            this.mIsDestroyed = false;
        }
        if (this.mAddedWindow) {
            this.mWindowManager.updateViewLayout(this.mDragLayer, this.mWindowLayoutParams);
            return;
        }
        this.mWindowManager.addView(this.mDragLayer, this.mWindowLayoutParams);
        this.mAddedWindow = true;
    }

    public final boolean isBindingItems() {
        return this.mBindingItems;
    }

    public final boolean isDestroyed() {
        return this.mIsDestroyed;
    }

    public final boolean isGestureNav() {
        return this.mNavMode == NavigationMode.NO_BUTTON;
    }

    public final boolean isInApp() {
        return this.mControllers.taskbarStashController.isInApp();
    }

    public final boolean isInStashedLauncherState() {
        return this.mControllers.taskbarStashController.isInStashedLauncherState();
    }

    public final boolean isNavBarForceVisible() {
        return this.mIsNavBarForceVisible;
    }

    public final boolean isNavBarKidsModeActive() {
        return this.mIsNavBarKidsMode && isThreeButtonNav();
    }

    public final boolean isTaskbarAllAppsOpen() {
        return this.mControllers.taskbarAllAppsController.isOpen();
    }

    public final boolean isTaskbarStashed() {
        return this.mControllers.taskbarStashController.isStashed();
    }

    public final boolean isTaskbarWindowFullscreen() {
        return this.mIsFullscreen;
    }

    public final boolean isThreeButtonNav() {
        return this.mNavMode == NavigationMode.THREE_BUTTONS;
    }

    public final boolean isUserSetupComplete() {
        return this.mIsUserSetupComplete;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final ActivityOptionsWrapper makeDefaultActivityOptions(int i4) {
        final RunnableList runnableList = new RunnableList();
        ActivityOptions makeCustomAnimation = ActivityOptions.makeCustomAnimation(this, 0, 0, 0, Executors.MAIN_EXECUTOR.getHandler(), null, new ActivityOptions.OnAnimationFinishedListener() { // from class: com.android.launcher3.taskbar.M
            public final void onAnimationFinished(long j4) {
                RunnableList.this.executeAllAndDestroy();
            }
        });
        makeCustomAnimation.setSplashScreenStyle(i4);
        makeCustomAnimation.setPendingIntentBackgroundActivityStartMode(1);
        return new ActivityOptionsWrapper(makeCustomAnimation, runnableList);
    }

    public final void notifyUpdateLayoutParams() {
        if (this.mDragLayer.isAttachedToWindow()) {
            this.mWindowManager.updateViewLayout(this.mDragLayer, this.mWindowLayoutParams);
        }
    }

    public final void onConfigurationChanged(int i4) {
        TaskbarControllers taskbarControllers = this.mControllers;
        taskbarControllers.navbarButtonsViewController.onConfigurationChanged(i4);
        taskbarControllers.taskbarDragLayerController.onConfigurationChanged();
        taskbarControllers.keyboardQuickSwitchController.onConfigurationChanged(i4);
        if (this.mIsUserSetupComplete) {
            return;
        }
        setTaskbarWindowHeight(getResources().getDimensionPixelSize(R.dimen.taskbar_suw_frame));
    }

    public final void onDestroy() {
        this.mIsDestroyed = true;
        setUIController(TaskbarUIController.DEFAULT);
        this.mControllers.onDestroy();
        if (TaskbarManager.FLAG_HIDE_NAVBAR_WINDOW) {
            return;
        }
        this.mWindowManager.removeViewImmediate(this.mDragLayer);
        this.mAddedWindow = false;
    }

    @Override // com.android.launcher3.taskbar.BaseTaskbarContext
    public final void onDragEnd() {
        onDragEndOrViewRemoved();
    }

    public final void onDragEndOrViewRemoved() {
        boolean isSystemDragInProgress = this.mControllers.taskbarDragController.isSystemDragInProgress();
        if (!isSystemDragInProgress && !AbstractFloatingView.hasOpenView(this, 3145727)) {
            setTaskbarWindowFullscreen(false);
        }
        setAutohideSuspendFlag(2, isSystemDragInProgress);
    }

    @Override // com.android.launcher3.taskbar.BaseTaskbarContext
    public final void onDragStart() {
        setTaskbarWindowFullscreen(true);
    }

    public final boolean onLongPressToUnstashTaskbar() {
        return this.mControllers.taskbarStashController.onLongPressToUnstashTaskbar();
    }

    public final void onNavButtonsDarkIntensityChanged(float f4) {
        this.mControllers.navbarButtonsViewController.getTaskbarNavButtonDarkIntensity().updateValue(f4);
    }

    @Override // com.android.launcher3.taskbar.BaseTaskbarContext
    public final void onPopupVisibilityChanged(boolean z4) {
        setTaskbarWindowFocusable(z4);
    }

    public final void onRotationProposal(int i4, boolean z4) {
        this.mControllers.rotationButtonController.onRotationProposal(i4, z4);
    }

    @Override // com.android.launcher3.taskbar.BaseTaskbarContext
    public final void onSplitScreenMenuButtonClicked() {
        PopupContainerWithArrow open = PopupContainerWithArrow.getOpen(this);
        if (open != null) {
            open.addOnCloseCallback(new Q(this, 1));
        }
    }

    public final void onSwipeToOpenBubblebar() {
        this.mControllers.bubbleControllers.ifPresent(new J());
    }

    public final void onSwipeToUnstashTaskbar() {
        this.mControllers.taskbarStashController.updateAndAnimateTransientTaskbar(false, true);
        this.mControllers.taskbarEduTooltipController.hide$2();
    }

    public final void onSystemBarAttributesChanged(int i4, int i5) {
        this.mControllers.rotationButtonController.onBehaviorChanged(i4, i5);
    }

    public final void onTaskbarIconClicked(final View view) {
        Object tag = view.getTag();
        boolean z4 = true;
        if (tag instanceof Task) {
            ActivityManagerWrapper.getInstance().startActivityFromRecents(((Task) tag).key, ActivityOptions.makeBasic());
            this.mControllers.taskbarStashController.updateAndAnimateTransientTaskbar(true, true);
        } else if (tag instanceof FolderInfo) {
            Folder folder = ((FolderIcon) view).getFolder();
            folder.setOnFolderStateChangedListener(new TaskbarActivityContext$$ExternalSyntheticLambda8(this, folder));
            setTaskbarWindowFullscreen(true);
            this.mDragLayer.post(new P(this, folder, 1));
            z4 = false;
        } else if (tag instanceof WorkspaceItemInfo) {
            final WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) tag;
            if (!workspaceItemInfo.isDisabled() || !ItemClickHandler.handleDisabledItemClicked(workspaceItemInfo, this)) {
                TaskbarUIController taskbarUIController = this.mControllers.uiController;
                final RecentsView recentsView = taskbarUIController.getRecentsView();
                if (recentsView == null || !recentsView.isSplitSelectionActive()) {
                    Intent addFlags = new Intent(workspaceItemInfo.intent).addFlags(268435456);
                    try {
                        if (this.mIsSafeModeEnabled && !PackageManagerHelper.isSystemApp(this, addFlags)) {
                            Toast.makeText(this, (int) R.string.safemode_shortcut_error, 0).show();
                        } else if (workspaceItemInfo.hasStatusFlag(3)) {
                            TestLogging.recordEvent("Main", "start: taskbarPromiseIcon");
                            addFlags = new PackageManagerHelper(this).getMarketIntent(workspaceItemInfo.getTargetPackage()).addFlags(268435456);
                            startActivity(addFlags);
                        } else if (workspaceItemInfo.itemType == 6) {
                            TestLogging.recordEvent("Main", "start: taskbarDeepShortcut");
                            ((LauncherApps) getSystemService(LauncherApps.class)).startShortcut(addFlags.getPackage(), workspaceItemInfo.getDeepShortcutId(), null, null, workspaceItemInfo.user);
                        } else if (recentsView != null) {
                            recentsView.getSplitSelectController().findLastActiveTasksAndRunCallback(Collections.singletonList(workspaceItemInfo.getComponentKey()), new Consumer() { // from class: com.android.launcher3.taskbar.I
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    TaskView taskViewByTaskId;
                                    TaskbarActivityContext taskbarActivityContext = TaskbarActivityContext.this;
                                    RecentsView recentsView2 = recentsView;
                                    ItemInfo itemInfo = workspaceItemInfo;
                                    taskbarActivityContext.getClass();
                                    Task task = (Task) ((List) obj).get(0);
                                    if (task != null && (taskViewByTaskId = recentsView2.getTaskViewByTaskId(task.key.id)) != null && taskViewByTaskId.isVisibleToUser()) {
                                        TestLogging.recordEvent("Main", "start: taskbarAppIcon");
                                        taskViewByTaskId.launchTasks();
                                        return;
                                    }
                                    Intent addFlags2 = new Intent(itemInfo.getIntent()).addFlags(268435456);
                                    try {
                                        TestLogging.recordEvent("Main", "start: taskbarAppIcon");
                                        if (itemInfo.user.equals(Process.myUserHandle())) {
                                            taskbarActivityContext.startActivity(addFlags2);
                                        } else {
                                            ((LauncherApps) taskbarActivityContext.getSystemService(LauncherApps.class)).startMainActivity(addFlags2.getComponent(), itemInfo.user, addFlags2.getSourceBounds(), null);
                                        }
                                    } catch (ActivityNotFoundException | NullPointerException | SecurityException e4) {
                                        Toast.makeText(taskbarActivityContext, (int) R.string.activity_not_found, 0).show();
                                        Log.e("TaskbarActivityContext", "Unable to launch. tag=" + itemInfo + " intent=" + addFlags2, e4);
                                    }
                                }
                            });
                        }
                    } catch (ActivityNotFoundException | NullPointerException | SecurityException e4) {
                        Toast.makeText(this, (int) R.string.activity_not_found, 0).show();
                        Log.e("TaskbarActivityContext", "Unable to launch. tag=" + workspaceItemInfo + " intent=" + addFlags, e4);
                        return;
                    }
                } else {
                    final Intent intent = workspaceItemInfo.intent;
                    final RecentsView recentsView2 = taskbarUIController.getRecentsView();
                    recentsView2.getSplitSelectController().findLastActiveTasksAndRunCallback(Collections.singletonList(workspaceItemInfo.getComponentKey()), new Consumer() { // from class: com.android.launcher3.taskbar.M0
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            TaskView taskViewByTaskId;
                            RecentsView recentsView3 = RecentsView.this;
                            ItemInfoWithIcon itemInfoWithIcon = workspaceItemInfo;
                            View view2 = view;
                            Intent intent2 = intent;
                            Task task = (Task) ((List) obj).get(0);
                            if (task == null || (taskViewByTaskId = recentsView3.getTaskViewByTaskId(task.key.id)) == null) {
                                recentsView3.confirmSplitSelect(null, null, new BitmapDrawable(itemInfoWithIcon.bitmap.icon), view2, null, intent2, itemInfoWithIcon.user);
                                return;
                            }
                            TaskView.TaskIdAttributeContainer taskAttributesById = taskViewByTaskId.getTaskAttributesById(task.key.id);
                            recentsView3.confirmSplitSelect(taskViewByTaskId, task, taskAttributesById.getIconView().getDrawable(), taskAttributesById.getThumbnailView(), taskAttributesById.getThumbnailView().getThumbnail(), null, null);
                        }
                    });
                }
                this.mControllers.uiController.onTaskbarIconLaunched(workspaceItemInfo);
                this.mControllers.taskbarStashController.updateAndAnimateTransientTaskbar(true, true);
            }
        } else if (tag instanceof AppInfo) {
            final AppInfo appInfo = (AppInfo) tag;
            TaskbarUIController taskbarUIController2 = this.mControllers.uiController;
            final RecentsView recentsView3 = taskbarUIController2.getRecentsView();
            if (recentsView3 != null && taskbarUIController2.getRecentsView().isSplitSelectionActive()) {
                final Intent intent2 = appInfo.intent;
                final RecentsView recentsView4 = taskbarUIController2.getRecentsView();
                recentsView4.getSplitSelectController().findLastActiveTasksAndRunCallback(Collections.singletonList(appInfo.getComponentKey()), new Consumer() { // from class: com.android.launcher3.taskbar.M0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        TaskView taskViewByTaskId;
                        RecentsView recentsView32 = RecentsView.this;
                        ItemInfoWithIcon itemInfoWithIcon = appInfo;
                        View view2 = view;
                        Intent intent22 = intent2;
                        Task task = (Task) ((List) obj).get(0);
                        if (task == null || (taskViewByTaskId = recentsView32.getTaskViewByTaskId(task.key.id)) == null) {
                            recentsView32.confirmSplitSelect(null, null, new BitmapDrawable(itemInfoWithIcon.bitmap.icon), view2, null, intent22, itemInfoWithIcon.user);
                            return;
                        }
                        TaskView.TaskIdAttributeContainer taskAttributesById = taskViewByTaskId.getTaskAttributesById(task.key.id);
                        recentsView32.confirmSplitSelect(taskViewByTaskId, task, taskAttributesById.getIconView().getDrawable(), taskAttributesById.getThumbnailView(), taskAttributesById.getThumbnailView().getThumbnail(), null, null);
                    }
                });
            } else if (recentsView3 != null) {
                recentsView3.getSplitSelectController().findLastActiveTasksAndRunCallback(Collections.singletonList(appInfo.getComponentKey()), new Consumer() { // from class: com.android.launcher3.taskbar.I
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        TaskView taskViewByTaskId;
                        TaskbarActivityContext taskbarActivityContext = TaskbarActivityContext.this;
                        RecentsView recentsView22 = recentsView3;
                        ItemInfo itemInfo = appInfo;
                        taskbarActivityContext.getClass();
                        Task task = (Task) ((List) obj).get(0);
                        if (task != null && (taskViewByTaskId = recentsView22.getTaskViewByTaskId(task.key.id)) != null && taskViewByTaskId.isVisibleToUser()) {
                            TestLogging.recordEvent("Main", "start: taskbarAppIcon");
                            taskViewByTaskId.launchTasks();
                            return;
                        }
                        Intent addFlags2 = new Intent(itemInfo.getIntent()).addFlags(268435456);
                        try {
                            TestLogging.recordEvent("Main", "start: taskbarAppIcon");
                            if (itemInfo.user.equals(Process.myUserHandle())) {
                                taskbarActivityContext.startActivity(addFlags2);
                            } else {
                                ((LauncherApps) taskbarActivityContext.getSystemService(LauncherApps.class)).startMainActivity(addFlags2.getComponent(), itemInfo.user, addFlags2.getSourceBounds(), null);
                            }
                        } catch (ActivityNotFoundException | NullPointerException | SecurityException e42) {
                            Toast.makeText(taskbarActivityContext, (int) R.string.activity_not_found, 0).show();
                            Log.e("TaskbarActivityContext", "Unable to launch. tag=" + itemInfo + " intent=" + addFlags2, e42);
                        }
                    }
                });
            }
            this.mControllers.uiController.onTaskbarIconLaunched(appInfo);
            this.mControllers.taskbarStashController.updateAndAnimateTransientTaskbar(true, true);
        } else if (tag instanceof ItemClickHandler.ItemClickProxy) {
            ((ItemClickHandler.ItemClickProxy) tag).onItemClicked(view);
        } else {
            Log.e("TaskbarActivityContext", "Unknown type clicked: " + tag);
        }
        if (z4) {
            AbstractFloatingView.closeAllOpenViews(this);
        }
    }

    public final void onTransientAutohideSuspendFlagChanged(boolean z4) {
        this.mControllers.taskbarStashController.updateTaskbarTimeout(z4);
    }

    public final void removeWindowView(BaseDragLayer baseDragLayer) {
        if (baseDragLayer.isAttachedToWindow()) {
            this.mWindowManager.removeViewImmediate(baseDragLayer);
        }
    }

    public final void setAutohideSuspendFlag(int i4, boolean z4) {
        this.mControllers.taskbarAutohideSuspendController.updateFlag(i4, z4);
    }

    public final void setBindingItems(boolean z4) {
        this.mBindingItems = z4;
    }

    public final void setSetupUIVisible(boolean z4) {
        this.mControllers.taskbarStashController.setSetupUIVisible(z4);
    }

    public final void setTaskbarWindowFocusable(boolean z4) {
        if (z4) {
            this.mWindowLayoutParams.flags &= -9;
        } else {
            this.mWindowLayoutParams.flags |= 8;
        }
        this.mWindowManager.updateViewLayout(this.mDragLayer, this.mWindowLayoutParams);
    }

    public final void setTaskbarWindowFocusableForIme(boolean z4) {
        if (z4) {
            this.mControllers.navbarButtonsViewController.moveNavButtonsToNewWindow();
        } else {
            this.mControllers.navbarButtonsViewController.moveNavButtonsBackToTaskbarWindow();
        }
        setTaskbarWindowFocusable(z4);
    }

    public final void setTaskbarWindowFullscreen(boolean z4) {
        setAutohideSuspendFlag(1, z4);
        this.mIsFullscreen = z4;
        setTaskbarWindowHeight(z4 ? -1 : this.mLastRequestedNonFullscreenHeight);
    }

    public final void setTaskbarWindowHeight(int i4) {
        WindowManager.LayoutParams layoutParams = this.mWindowLayoutParams;
        if (layoutParams.height == i4 || this.mIsDestroyed) {
            return;
        }
        if (i4 == -1) {
            i4 = this.mDeviceProfile.heightPx;
        } else {
            this.mLastRequestedNonFullscreenHeight = i4;
            if (this.mIsFullscreen) {
                return;
            }
        }
        layoutParams.height = i4;
        this.mControllers.taskbarInsetsController.onTaskbarOrBubblebarWindowHeightOrInsetsChanged();
        this.mWindowManager.updateViewLayout(this.mDragLayer, this.mWindowLayoutParams);
    }

    public final void setUIController(TaskbarUIController taskbarUIController) {
        this.mControllers.setUiController(taskbarUIController);
    }

    public final void showTaskbarFromBroadcast() {
        this.mControllers.taskbarStashController.showTaskbarFromBroadcast();
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final void startSplitSelection(SplitConfigurationOptions$SplitSelectSource splitConfigurationOptions$SplitSelectSource) {
        this.mControllers.uiController.startSplitSelection(splitConfigurationOptions$SplitSelectSource);
    }

    public final void startTaskbarUnstashHint(boolean z4, boolean z5) {
        this.mControllers.taskbarStashController.startUnstashHint(z4, z5);
    }

    public final void startTranslationSpring() {
        this.mControllers.taskbarTranslationController.startSpring();
    }

    public final void toggleAllApps() {
        this.mControllers.taskbarAllAppsController.toggle();
    }

    public final void toggleTaskbarStash() {
        this.mControllers.taskbarStashController.toggleTaskbarStash();
    }

    public void unstashTaskbarIfStashed() {
        if (DisplayController.isTransientTaskbar(this)) {
            this.mControllers.taskbarStashController.updateAndAnimateTransientTaskbar(false, true);
        } else {
            this.mControllers.taskbarStashController.onLongPressToUnstashTaskbar();
        }
    }

    public final void updateDeviceProfile(DeviceProfile deviceProfile) {
        DeviceProfile.Builder builder = deviceProfile.toBuilder(this);
        builder.withDimensionsOverride(new N(this, deviceProfile));
        this.mDeviceProfile = builder.build();
        this.mNavMode = DisplayController.getNavigationMode(this);
        this.mControllers.taskbarOverlayController.updateLauncherDeviceProfile(deviceProfile);
        AbstractFloatingView.closeAllOpenViewsExcept(this, false, AbstractFloatingView.TYPE_REBIND_SAFE);
        setTaskbarWindowFullscreen(this.mIsFullscreen);
        dispatchDeviceProfileChanged();
    }

    public final void updateSysuiStateFlags(final int i4, boolean z4) {
        this.mControllers.navbarButtonsViewController.updateStateForSysuiFlags(i4, z4);
        float f4 = (1073741824 & i4) != 0 ? 0.0f : 1.0f;
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(this.mControllers.taskbarViewController.getTaskbarIconAlpha().get(4).animateToValue(f4));
        animatorSet.play(this.mControllers.taskbarDragLayerController.getNotificationShadeBgTaskbar().animateToValue(f4));
        animatorSet.start();
        if (z4) {
            animatorSet.end();
        }
        TaskbarControllers taskbarControllers = this.mControllers;
        taskbarControllers.taskbarViewController.setRecentsButtonDisabled(taskbarControllers.navbarButtonsViewController.isRecentsDisabled() || isNavBarKidsModeActive());
        TaskbarControllers taskbarControllers2 = this.mControllers;
        taskbarControllers2.stashedHandleViewController.setIsHomeButtonDisabled(taskbarControllers2.navbarButtonsViewController.isHomeDisabled());
        this.mControllers.stashedHandleViewController.updateStateForSysuiFlags(i4);
        this.mControllers.taskbarKeyguardController.updateStateForSysuiFlags(i4);
        this.mControllers.taskbarStashController.updateStateForSysuiFlags(i4, z4 || !this.mIsUserSetupComplete);
        this.mControllers.taskbarScrimViewController.updateStateForSysuiFlags(i4, z4);
        this.mControllers.navButtonController.updateSysuiFlags(i4);
        this.mControllers.taskbarForceVisibleImmersiveController.updateSysuiFlags(i4);
        this.mControllers.voiceInteractionWindowController.setIsVoiceInteractionWindowVisible((33554432 & i4) != 0, z4);
        this.mControllers.uiController.updateStateForSysuiFlags(i4);
        this.mControllers.bubbleControllers.ifPresent(new Consumer() { // from class: com.android.launcher3.taskbar.K
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                TaskbarActivityContext.c(TaskbarActivityContext.this, i4, (BubbleControllers) obj);
            }
        });
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final TaskbarDragController getDragController() {
        return this.mControllers.taskbarDragController;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final BaseDragLayer getDragLayer() {
        return this.mDragLayer;
    }
}
