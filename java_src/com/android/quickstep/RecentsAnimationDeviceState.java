package com.android.quickstep;

import android.app.ActivityTaskManager;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Region;
import android.inputmethodservice.InputMethodService;
import android.net.Uri;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.provider.Settings;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.NavigationMode;
import com.android.launcher3.util.SettingsCache;
import com.android.quickstep.TopTaskTracker;
import com.android.quickstep.util.NavBarPosition;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.SystemGestureExclusionListenerCompat;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class RecentsAnimationDeviceState implements DisplayController.DisplayInfoChangeListener {
    private static final float QUICKSTEP_TOUCH_SLOP_RATIO_GESTURAL = 2.0f;
    private static final float QUICKSTEP_TOUCH_SLOP_RATIO_TWO_BUTTON = 9.0f;
    static final String SUPPORT_ONE_HANDED_MODE = "ro.support_one_handed_mode";
    private boolean mAssistantAvailable;
    private float mAssistantVisibility;
    private final boolean mCanImeRenderGesturalNavButtons;
    private final Context mContext;
    private final Region mDeferredGestureRegion;
    private final DisplayController mDisplayController;
    private final int mDisplayId;
    private SystemGestureExclusionListenerCompat mExclusionListener;
    private Region mExclusionRegion;
    private int mGestureBlockingTaskId;
    private boolean mIsOneHandedModeEnabled;
    private final boolean mIsOneHandedModeSupported;
    private boolean mIsSwipeToNotificationEnabled;
    private boolean mIsUserSetupComplete;
    private NavigationMode mMode;
    private NavBarPosition mNavBarPosition;
    private final ArrayList mOnDestroyActions;
    private boolean mPipIsActive;
    private final TaskStackChangeListener mPipListener;
    private final RotationTouchHelper mRotationTouchHelper;
    private int mSystemUiStateFlags;

    public RecentsAnimationDeviceState(Context context) {
        this(context, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$addNavigationModeChangedCallback$8(Runnable runnable, Context context, DisplayController.Info info, int i4) {
        if ((i4 & 16) != 0) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addNavigationModeChangedCallback$9(DisplayController.DisplayInfoChangeListener displayInfoChangeListener) {
        this.mDisplayController.removeChangeListener(displayInfoChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.mDisplayController.removeChangeListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(boolean z4) {
        this.mIsOneHandedModeEnabled = z4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(boolean z4) {
        this.mIsSwipeToNotificationEnabled = z4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(boolean z4) {
        this.mIsUserSetupComplete = z4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7() {
        TaskStackChangeListeners.getInstance().unregisterTaskStackListener(this.mPipListener);
    }

    private void runOnDestroy(Runnable runnable) {
        this.mOnDestroyActions.add(runnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.launcher3.util.DisplayController$DisplayInfoChangeListener, com.android.quickstep.E0] */
    public void addNavigationModeChangedCallback(final Runnable runnable) {
        final ?? r02 = new DisplayController.DisplayInfoChangeListener() { // from class: com.android.quickstep.E0
            @Override // com.android.launcher3.util.DisplayController.DisplayInfoChangeListener
            public final void onDisplayInfoChanged(Context context, DisplayController.Info info, int i4) {
                RecentsAnimationDeviceState.lambda$addNavigationModeChangedCallback$8(runnable, context, info, i4);
            }
        };
        this.mDisplayController.addChangeListener(r02);
        runnable.run();
        runOnDestroy(new Runnable() { // from class: com.android.quickstep.F0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationDeviceState.this.lambda$addNavigationModeChangedCallback$9(r02);
            }
        });
    }

    public boolean canStartSystemGesture() {
        int i4 = this.mSystemUiStateFlags;
        return ((i4 & 2) == 0 || (i4 & 131072) != 0 || this.mRotationTouchHelper.isTaskListFrozen()) && canStartTrackpadGesture();
    }

    public boolean canStartTrackpadGesture() {
        int i4 = this.mSystemUiStateFlags;
        return (i4 & 4) == 0 && (i4 & 64) == 0 && (i4 & 2048) == 0 && (524288 & i4) == 0 && ((i4 & 256) == 0 || (i4 & 128) == 0) && (i4 & QuickStepContract.SYSUI_STATE_DEVICE_DREAMING) == 0;
    }

    public boolean canTriggerAssistantAction(MotionEvent motionEvent) {
        return this.mAssistantAvailable && !QuickStepContract.isAssistantGestureDisabled(this.mSystemUiStateFlags) && this.mRotationTouchHelper.touchInAssistantRegion(motionEvent) && !isLockToAppActive();
    }

    public boolean canTriggerOneHandedAction(MotionEvent motionEvent) {
        if (this.mIsOneHandedModeSupported && this.mIsOneHandedModeEnabled) {
            DisplayController.Info info = this.mDisplayController.getInfo();
            if (this.mRotationTouchHelper.touchInOneHandedModeRegion(motionEvent)) {
                Point point = info.currentSize;
                return point.x < point.y;
            }
            return false;
        }
        return false;
    }

    public void destroy() {
        Iterator it = this.mOnDestroyActions.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("DeviceState:");
        printWriter.println("  canStartSystemGesture=" + canStartSystemGesture());
        printWriter.println("  systemUiFlags=" + this.mSystemUiStateFlags);
        printWriter.println("  systemUiFlagsDesc=" + getSystemUiStateString());
        printWriter.println("  assistantAvailable=" + this.mAssistantAvailable);
        printWriter.println("  assistantDisabled=" + QuickStepContract.isAssistantGestureDisabled(this.mSystemUiStateFlags));
        printWriter.println("  isOneHandedModeEnabled=" + this.mIsOneHandedModeEnabled);
        printWriter.println("  isSwipeToNotificationEnabled=" + this.mIsSwipeToNotificationEnabled);
        printWriter.println("  deferredGestureRegion=" + this.mDeferredGestureRegion.getBounds());
        printWriter.println("  exclusionRegion=" + this.mExclusionRegion.getBounds());
        printWriter.println("  pipIsActive=" + this.mPipIsActive);
        this.mRotationTouchHelper.dump(printWriter);
    }

    public float getAssistantVisibility() {
        return this.mAssistantVisibility;
    }

    public int getDisplayId() {
        return this.mDisplayId;
    }

    public NavBarPosition getNavBarPosition() {
        return this.mNavBarPosition;
    }

    public RotationTouchHelper getRotationTouchHelper() {
        return this.mRotationTouchHelper;
    }

    public float getSquaredTouchSlop() {
        float f4 = isFullyGesturalNavMode() ? QUICKSTEP_TOUCH_SLOP_RATIO_GESTURAL : QUICKSTEP_TOUCH_SLOP_RATIO_TWO_BUTTON;
        float scaledTouchSlop = ViewConfiguration.get(this.mContext).getScaledTouchSlop();
        return f4 * scaledTouchSlop * scaledTouchSlop;
    }

    public int getSystemUiStateFlags() {
        return this.mSystemUiStateFlags;
    }

    public String getSystemUiStateString() {
        return QuickStepContract.getSystemUiStateString(this.mSystemUiStateFlags);
    }

    public boolean isAccessibilityMenuAvailable() {
        return (this.mSystemUiStateFlags & 16) != 0;
    }

    public boolean isAccessibilityMenuShortcutAvailable() {
        return (this.mSystemUiStateFlags & 32) != 0;
    }

    public boolean isAssistantGestureIsConstrained() {
        return (this.mSystemUiStateFlags & 8192) != 0;
    }

    public boolean isBubblesExpanded() {
        return (this.mSystemUiStateFlags & 16384) != 0;
    }

    public boolean isButtonNavMode() {
        return this.mMode == NavigationMode.THREE_BUTTONS;
    }

    public boolean isFullyGesturalNavMode() {
        return this.mMode == NavigationMode.NO_BUTTON;
    }

    public boolean isGesturalNavMode() {
        return this.mMode.hasGestures;
    }

    public boolean isGestureBlockedTask(TopTaskTracker.CachedTaskInfo cachedTaskInfo) {
        return cachedTaskInfo != null && cachedTaskInfo.getTaskId() == this.mGestureBlockingTaskId;
    }

    public boolean isHomeDisabled() {
        return (this.mSystemUiStateFlags & 256) != 0;
    }

    public boolean isImeRenderingNavButtons() {
        return this.mCanImeRenderGesturalNavButtons && this.mMode == NavigationMode.NO_BUTTON && (this.mSystemUiStateFlags & 262144) != 0;
    }

    public boolean isInDeferredGestureRegion(MotionEvent motionEvent) {
        return this.mDeferredGestureRegion.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    public boolean isInExclusionRegion(MotionEvent motionEvent) {
        return this.mMode == NavigationMode.NO_BUTTON && this.mExclusionRegion.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    public boolean isKeyguardShowingOccluded() {
        return (this.mSystemUiStateFlags & 512) != 0;
    }

    public boolean isLockToAppActive() {
        return ActivityManagerWrapper.getInstance().isLockToAppActive();
    }

    public boolean isNotificationPanelExpanded() {
        return (this.mSystemUiStateFlags & 4) != 0;
    }

    public boolean isOneHandedModeActive() {
        return (this.mSystemUiStateFlags & 65536) != 0;
    }

    public boolean isOneHandedModeEnabled() {
        return this.mIsOneHandedModeEnabled;
    }

    public boolean isOverviewDisabled() {
        return (this.mSystemUiStateFlags & 128) != 0;
    }

    public boolean isPipActive() {
        return this.mPipIsActive;
    }

    public boolean isScreenPinningActive() {
        return (this.mSystemUiStateFlags & 1) != 0;
    }

    public boolean isSwipeToNotificationEnabled() {
        return this.mIsSwipeToNotificationEnabled;
    }

    public boolean isSystemUiDialogShowing() {
        return (this.mSystemUiStateFlags & 32768) != 0;
    }

    public boolean isTwoButtonNavMode() {
        return this.mMode == NavigationMode.TWO_BUTTONS;
    }

    public boolean isUserSetupComplete() {
        return this.mIsUserSetupComplete;
    }

    @Override // com.android.launcher3.util.DisplayController.DisplayInfoChangeListener
    public void onDisplayInfoChanged(Context context, DisplayController.Info info, int i4) {
        if ((i4 & 18) != 0) {
            NavigationMode navigationMode = info.navigationMode;
            this.mMode = navigationMode;
            this.mNavBarPosition = new NavBarPosition(navigationMode, info);
            if (this.mMode == NavigationMode.NO_BUTTON) {
                this.mExclusionListener.register();
            } else {
                this.mExclusionListener.unregister();
            }
        }
    }

    public void onOneHandedModeChanged(int i4) {
        this.mRotationTouchHelper.setGesturalHeight(i4);
    }

    public void setAssistantAvailable(boolean z4) {
        this.mAssistantAvailable = z4;
    }

    public void setAssistantVisibility(float f4) {
        this.mAssistantVisibility = f4;
    }

    public void setDeferredGestureRegion(Region region) {
        this.mDeferredGestureRegion.set(region);
    }

    public void setGestureBlockingTaskId(int i4) {
        this.mGestureBlockingTaskId = i4;
    }

    public void setSystemUiFlags(int i4) {
        this.mSystemUiStateFlags = i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.android.launcher3.util.SettingsCache$OnChangeListener, com.android.quickstep.I0] */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.android.launcher3.util.SettingsCache$OnChangeListener, com.android.quickstep.I0] */
    /* JADX WARN: Type inference failed for: r0v14, types: [com.android.launcher3.util.SettingsCache$OnChangeListener, com.android.quickstep.I0] */
    public RecentsAnimationDeviceState(Context context, boolean z4) {
        this.mCanImeRenderGesturalNavButtons = InputMethodService.canImeRenderGesturalNavButtons();
        this.mOnDestroyActions = new ArrayList();
        this.mSystemUiStateFlags = 268435456;
        this.mMode = NavigationMode.THREE_BUTTONS;
        this.mDeferredGestureRegion = new Region();
        this.mGestureBlockingTaskId = -1;
        this.mExclusionRegion = new Region();
        this.mContext = context;
        DisplayController displayController = (DisplayController) DisplayController.INSTANCE.get(context);
        this.mDisplayController = displayController;
        this.mDisplayId = 0;
        boolean z5 = SystemProperties.getBoolean(SUPPORT_ONE_HANDED_MODE, false);
        this.mIsOneHandedModeSupported = z5;
        final RotationTouchHelper rotationTouchHelper = (RotationTouchHelper) RotationTouchHelper.INSTANCE.get(context);
        this.mRotationTouchHelper = rotationTouchHelper;
        if (z4) {
            rotationTouchHelper.init();
            runOnDestroy(new Runnable() { // from class: com.android.quickstep.G0
                @Override // java.lang.Runnable
                public final void run() {
                    switch (r1) {
                        case 0:
                            ((RotationTouchHelper) rotationTouchHelper).destroy();
                            return;
                        default:
                            ((SystemGestureExclusionListenerCompat) rotationTouchHelper).unregister();
                            return;
                    }
                }
            });
        }
        final SystemGestureExclusionListenerCompat systemGestureExclusionListenerCompat = new SystemGestureExclusionListenerCompat(0) { // from class: com.android.quickstep.RecentsAnimationDeviceState.1
            @Override // com.android.systemui.shared.system.SystemGestureExclusionListenerCompat
            public void onExclusionChanged(Region region) {
                if (region == null) {
                    region = new Region();
                }
                RecentsAnimationDeviceState.this.mExclusionRegion = region;
            }
        };
        this.mExclusionListener = systemGestureExclusionListenerCompat;
        runOnDestroy(new Runnable() { // from class: com.android.quickstep.G0
            @Override // java.lang.Runnable
            public final void run() {
                switch (r1) {
                    case 0:
                        ((RotationTouchHelper) systemGestureExclusionListenerCompat).destroy();
                        return;
                    default:
                        ((SystemGestureExclusionListenerCompat) systemGestureExclusionListenerCompat).unregister();
                        return;
                }
            }
        });
        displayController.addChangeListener(this);
        onDisplayInfoChanged(context, displayController.getInfo(), 31);
        runOnDestroy(new Runnable(this) { // from class: com.android.quickstep.H0

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ RecentsAnimationDeviceState f5469e;

            {
                this.f5469e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                        this.f5469e.lambda$new$0();
                        return;
                    default:
                        this.f5469e.lambda$new$7();
                        return;
                }
            }
        });
        final SettingsCache settingsCache = (SettingsCache) SettingsCache.INSTANCE.get(context);
        if (z5) {
            final Uri uriFor = Settings.Secure.getUriFor("one_handed_mode_enabled");
            final ?? r02 = new SettingsCache.OnChangeListener(this) { // from class: com.android.quickstep.I0

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ RecentsAnimationDeviceState f5474e;

                {
                    this.f5474e = this;
                }

                @Override // com.android.launcher3.util.SettingsCache.OnChangeListener
                public final void onSettingsChanged(boolean z6) {
                    int i4 = r2;
                    RecentsAnimationDeviceState recentsAnimationDeviceState = this.f5474e;
                    switch (i4) {
                        case 0:
                            recentsAnimationDeviceState.lambda$new$1(z6);
                            return;
                        case 1:
                            recentsAnimationDeviceState.lambda$new$3(z6);
                            return;
                        default:
                            recentsAnimationDeviceState.lambda$new$5(z6);
                            return;
                    }
                }
            };
            settingsCache.register(uriFor, r02);
            this.mIsOneHandedModeEnabled = settingsCache.getValue(1, uriFor);
            runOnDestroy(new Runnable() { // from class: com.android.quickstep.J0
                @Override // java.lang.Runnable
                public final void run() {
                    switch (r4) {
                        case 0:
                            settingsCache.unregister(uriFor, r02);
                            return;
                        case 1:
                            settingsCache.unregister(uriFor, r02);
                            return;
                        default:
                            settingsCache.unregister(uriFor, r02);
                            return;
                    }
                }
            });
        } else {
            this.mIsOneHandedModeEnabled = false;
        }
        final Uri uriFor2 = Settings.Secure.getUriFor("swipe_bottom_to_notification_enabled");
        final ?? r03 = new SettingsCache.OnChangeListener(this) { // from class: com.android.quickstep.I0

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ RecentsAnimationDeviceState f5474e;

            {
                this.f5474e = this;
            }

            @Override // com.android.launcher3.util.SettingsCache.OnChangeListener
            public final void onSettingsChanged(boolean z6) {
                int i4 = r2;
                RecentsAnimationDeviceState recentsAnimationDeviceState = this.f5474e;
                switch (i4) {
                    case 0:
                        recentsAnimationDeviceState.lambda$new$1(z6);
                        return;
                    case 1:
                        recentsAnimationDeviceState.lambda$new$3(z6);
                        return;
                    default:
                        recentsAnimationDeviceState.lambda$new$5(z6);
                        return;
                }
            }
        };
        settingsCache.register(uriFor2, r03);
        this.mIsSwipeToNotificationEnabled = settingsCache.getValue(1, uriFor2);
        runOnDestroy(new Runnable() { // from class: com.android.quickstep.J0
            @Override // java.lang.Runnable
            public final void run() {
                switch (r4) {
                    case 0:
                        settingsCache.unregister(uriFor2, r03);
                        return;
                    case 1:
                        settingsCache.unregister(uriFor2, r03);
                        return;
                    default:
                        settingsCache.unregister(uriFor2, r03);
                        return;
                }
            }
        });
        final Uri uriFor3 = Settings.Secure.getUriFor("user_setup_complete");
        boolean value = settingsCache.getValue(0, uriFor3);
        this.mIsUserSetupComplete = value;
        if (!value) {
            final ?? r04 = new SettingsCache.OnChangeListener(this) { // from class: com.android.quickstep.I0

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ RecentsAnimationDeviceState f5474e;

                {
                    this.f5474e = this;
                }

                @Override // com.android.launcher3.util.SettingsCache.OnChangeListener
                public final void onSettingsChanged(boolean z6) {
                    int i4 = r2;
                    RecentsAnimationDeviceState recentsAnimationDeviceState = this.f5474e;
                    switch (i4) {
                        case 0:
                            recentsAnimationDeviceState.lambda$new$1(z6);
                            return;
                        case 1:
                            recentsAnimationDeviceState.lambda$new$3(z6);
                            return;
                        default:
                            recentsAnimationDeviceState.lambda$new$5(z6);
                            return;
                    }
                }
            };
            settingsCache.register(uriFor3, r04);
            runOnDestroy(new Runnable() { // from class: com.android.quickstep.J0
                @Override // java.lang.Runnable
                public final void run() {
                    switch (r4) {
                        case 0:
                            settingsCache.unregister(uriFor3, r04);
                            return;
                        case 1:
                            settingsCache.unregister(uriFor3, r04);
                            return;
                        default:
                            settingsCache.unregister(uriFor3, r04);
                            return;
                    }
                }
            });
        }
        try {
            this.mPipIsActive = ActivityTaskManager.getService().getRootTaskInfo(2, 0) != null;
        } catch (RemoteException unused) {
        }
        TaskStackChangeListener taskStackChangeListener = new TaskStackChangeListener() { // from class: com.android.quickstep.RecentsAnimationDeviceState.2
            @Override // com.android.systemui.shared.system.TaskStackChangeListener
            public void onActivityPinned(String str, int i4, int i5, int i6) {
                RecentsAnimationDeviceState.this.mPipIsActive = true;
            }

            @Override // com.android.systemui.shared.system.TaskStackChangeListener
            public void onActivityUnpinned() {
                RecentsAnimationDeviceState.this.mPipIsActive = false;
            }
        };
        this.mPipListener = taskStackChangeListener;
        TaskStackChangeListeners.getInstance().registerTaskStackListener(taskStackChangeListener);
        runOnDestroy(new Runnable(this) { // from class: com.android.quickstep.H0

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ RecentsAnimationDeviceState f5469e;

            {
                this.f5469e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                        this.f5469e.lambda$new$0();
                        return;
                    default:
                        this.f5469e.lambda$new$7();
                        return;
                }
            }
        });
    }
}
