package com.android.launcher3.statehandlers;

import android.os.SystemProperties;
import com.android.launcher3.Launcher;
import com.android.launcher3.Workspace;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.statehandlers.DesktopVisibilityController;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.quickstep.GestureState;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.views.DesktopAppSelectView;
import com.android.wm.shell.desktopmode.IDesktopTaskListener;
/* loaded from: classes.dex */
public final class DesktopVisibilityController {
    private static final boolean IS_STASHING_ENABLED = SystemProperties.getBoolean("persist.wm.debug.desktop_stashing", false);
    private IDesktopTaskListener mDesktopTaskListener;
    private boolean mFreeformTasksVisible;
    private boolean mGestureInProgress;
    private boolean mInOverviewState;
    private final Launcher mLauncher;
    private DesktopAppSelectView mSelectAppToast;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.statehandlers.DesktopVisibilityController$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends IDesktopTaskListener.Stub {
        public AnonymousClass1() {
        }

        @Override // com.android.wm.shell.desktopmode.IDesktopTaskListener
        public final void onStashedChanged(int i4, boolean z4) {
            if (DesktopVisibilityController.IS_STASHING_ENABLED) {
                Executors.MAIN_EXECUTOR.execute(new a(this, i4, z4, 0));
            }
        }

        @Override // com.android.wm.shell.desktopmode.IDesktopTaskListener
        public final void onVisibilityChanged(int i4, boolean z4) {
            Executors.MAIN_EXECUTOR.execute(new a(this, i4, z4, 1));
        }
    }

    public DesktopVisibilityController(Launcher launcher) {
        this.mLauncher = launcher;
    }

    public static /* synthetic */ void a(DesktopVisibilityController desktopVisibilityController) {
        desktopVisibilityController.getClass();
        MainThreadInitializedObject mainThreadInitializedObject = SystemUiProxy.INSTANCE;
        Launcher launcher = desktopVisibilityController.mLauncher;
        ((SystemUiProxy) mainThreadInitializedObject.get(launcher)).hideStashedDesktopApps(launcher.getDisplayId());
    }

    public static void c(DesktopVisibilityController desktopVisibilityController) {
        DesktopAppSelectView desktopAppSelectView = desktopVisibilityController.mSelectAppToast;
        if (desktopAppSelectView == null) {
            return;
        }
        desktopAppSelectView.hide();
        desktopVisibilityController.mSelectAppToast = null;
    }

    public static void d(final DesktopVisibilityController desktopVisibilityController) {
        if (desktopVisibilityController.mSelectAppToast != null) {
            return;
        }
        desktopVisibilityController.mSelectAppToast = DesktopAppSelectView.show(desktopVisibilityController.mLauncher, new Runnable() { // from class: W0.e
            @Override // java.lang.Runnable
            public final void run() {
                DesktopVisibilityController.a(DesktopVisibilityController.this);
            }
        });
    }

    private static boolean isDesktopModeSupported() {
        return SystemProperties.getBoolean("persist.wm.debug.desktop_mode", false) || SystemProperties.getBoolean("persist.wm.debug.desktop_mode_2", false);
    }

    private void setLauncherViewsVisibility(int i4) {
        Launcher launcher = this.mLauncher;
        Workspace workspace = launcher.getWorkspace();
        if (workspace != null) {
            workspace.setVisibility(i4);
        }
        DragLayer dragLayer = launcher.getDragLayer();
        if (dragLayer != null) {
            dragLayer.setVisibility(i4);
        }
    }

    public final boolean areFreeformTasksVisible() {
        return this.mFreeformTasksVisible;
    }

    public final boolean isRecentsGestureInProgress() {
        return this.mGestureInProgress;
    }

    public final void onHomeActionTriggered() {
        if (IS_STASHING_ENABLED && this.mFreeformTasksVisible) {
            MainThreadInitializedObject mainThreadInitializedObject = SystemUiProxy.INSTANCE;
            Launcher launcher = this.mLauncher;
            ((SystemUiProxy) mainThreadInitializedObject.get(launcher)).stashDesktopApps(launcher.getDisplayId());
        }
    }

    public final void registerSystemUiListener() {
        this.mDesktopTaskListener = new AnonymousClass1();
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher)).setDesktopTaskListener(this.mDesktopTaskListener);
    }

    public final void setFreeformTasksVisible(boolean z4) {
        StatefulActivity statefulActivity;
        if (isDesktopModeSupported() && z4 != this.mFreeformTasksVisible) {
            this.mFreeformTasksVisible = z4;
            if (z4) {
                setLauncherViewsVisibility(4);
                if (this.mInOverviewState || (statefulActivity = (StatefulActivity) Launcher.ACTIVITY_TRACKER.getCreatedActivity()) == null) {
                    return;
                }
                statefulActivity.setPaused();
                return;
            }
            setLauncherViewsVisibility(0);
            StatefulActivity statefulActivity2 = (StatefulActivity) Launcher.ACTIVITY_TRACKER.getCreatedActivity();
            if (statefulActivity2 == null || !statefulActivity2.isResumed()) {
                return;
            }
            statefulActivity2.setResumed();
        }
    }

    public final void setOverviewStateEnabled(boolean z4) {
        if (isDesktopModeSupported() && z4 != this.mInOverviewState) {
            this.mInOverviewState = z4;
            if (z4) {
                setLauncherViewsVisibility(0);
                StatefulActivity statefulActivity = (StatefulActivity) Launcher.ACTIVITY_TRACKER.getCreatedActivity();
                if (statefulActivity == null || !statefulActivity.isResumed()) {
                    return;
                }
                statefulActivity.setResumed();
            } else if (this.mFreeformTasksVisible) {
                setLauncherViewsVisibility(4);
                StatefulActivity statefulActivity2 = (StatefulActivity) Launcher.ACTIVITY_TRACKER.getCreatedActivity();
                if (statefulActivity2 != null) {
                    statefulActivity2.setPaused();
                }
            }
        }
    }

    public final void setRecentsGestureEnd(GestureState.GestureEndTarget gestureEndTarget) {
        StatefulActivity statefulActivity;
        if (isDesktopModeSupported()) {
            if (this.mGestureInProgress) {
                this.mGestureInProgress = false;
            }
            if (gestureEndTarget != null || (statefulActivity = (StatefulActivity) Launcher.ACTIVITY_TRACKER.getCreatedActivity()) == null) {
                return;
            }
            statefulActivity.setPaused();
        }
    }

    public final void setRecentsGestureStart() {
        if (isDesktopModeSupported() && true != this.mGestureInProgress) {
            this.mGestureInProgress = true;
        }
    }

    public final void unregisterSystemUiListener() {
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher)).setDesktopTaskListener(null);
    }
}
