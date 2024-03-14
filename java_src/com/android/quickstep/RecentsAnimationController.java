package com.android.quickstep;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import android.view.SurfaceControl;
import android.view.WindowManagerGlobal;
import android.window.PictureInPictureSurfaceTransaction;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.RunnableList;
import com.android.quickstep.util.ActiveGestureErrorDetector;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
import com.android.systemui.shared.system.RecentsAnimationControllerCompat;
import java.util.Objects;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class RecentsAnimationController {
    private static final String TAG = "RecentsAnimationController";
    private final boolean mAllowMinimizeSplitScreen;
    private final RecentsAnimationControllerCompat mController;
    private boolean mFinishTargetIsLauncher;
    private final Consumer mOnFinishedListener;
    private boolean mUseLauncherSysBarFlags = false;
    private boolean mSplitScreenMinimized = false;
    private boolean mFinishRequested = false;
    private RunnableList mPendingFinishCallbacks = new RunnableList();

    public RecentsAnimationController(RecentsAnimationControllerCompat recentsAnimationControllerCompat, boolean z4, Consumer consumer) {
        this.mController = recentsAnimationControllerCompat;
        this.mOnFinishedListener = consumer;
        this.mAllowMinimizeSplitScreen = z4;
    }

    public /* synthetic */ void lambda$animateNavigationBarToApp$5(long j4) {
        this.mController.animateNavigationBarToApp(j4);
    }

    public /* synthetic */ void lambda$cleanupScreenshot$3() {
        ActiveGestureLog.INSTANCE.addLog("cleanupScreenshot", ActiveGestureErrorDetector.GestureEvent.CLEANUP_SCREENSHOT);
        this.mController.cleanupScreenshot();
    }

    public /* synthetic */ void lambda$detachNavigationBarFromApp$4(boolean z4) {
        this.mController.detachNavigationBarFromApp(z4);
    }

    public /* synthetic */ void lambda$enableInputConsumer$8() {
        this.mController.setInputConsumerEnabled(true);
    }

    public /* synthetic */ void lambda$finishController$2(boolean z4, boolean z5) {
        this.mController.finish(z4, z5);
        InteractionJankMonitorWrapper.end(11);
        InteractionJankMonitorWrapper.end(9);
        InteractionJankMonitorWrapper.end(66);
        LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
        RunnableList runnableList = this.mPendingFinishCallbacks;
        Objects.requireNonNull(runnableList);
        looperExecutor.execute(new RunnableC0615y0(2, runnableList));
    }

    public /* synthetic */ void lambda$removeTaskTarget$1(int i4) {
        this.mController.removeTask(i4);
    }

    public /* synthetic */ void lambda$setFinishTaskTransaction$7(int i4, PictureInPictureSurfaceTransaction pictureInPictureSurfaceTransaction, SurfaceControl surfaceControl) {
        this.mController.setFinishTaskTransaction(i4, pictureInPictureSurfaceTransaction, surfaceControl);
    }

    public /* synthetic */ void lambda$setUseLauncherSystemBarFlags$0(boolean z4) {
        if (!TaskAnimationManager.ENABLE_SHELL_TRANSITIONS) {
            this.mController.setAnimationTargetsBehindSystemBars(!z4);
            return;
        }
        try {
            WindowManagerGlobal.getWindowManagerService().setRecentsAppBehindSystemBars(z4);
        } catch (RemoteException e4) {
            Log.e(TAG, "Unable to reach window manager", e4);
        }
    }

    public /* synthetic */ void lambda$setWillFinishToHome$6(boolean z4) {
        this.mController.setWillFinishToHome(z4);
    }

    public void animateNavigationBarToApp(final long j4) {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.B0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationController.this.lambda$animateNavigationBarToApp$5(j4);
            }
        });
    }

    public void cleanupScreenshot() {
        Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0615y0(0, this));
    }

    public void detachNavigationBarFromApp(boolean z4) {
        Executors.UI_HELPER_EXECUTOR.execute(new C0(this, z4, 2));
    }

    public void enableInputConsumer() {
        Executors.UI_HELPER_EXECUTOR.submit(new RunnableC0615y0(1, this));
    }

    public void finish(boolean z4, Runnable runnable) {
        finish(z4, runnable, false);
    }

    public void finishAnimationToApp() {
        finishController(false, null, false);
    }

    public void finishAnimationToHome() {
        finishController(true, null, false);
    }

    public void finishController(boolean z4, Runnable runnable, boolean z5) {
        finishController(z4, runnable, z5, false);
    }

    public RecentsAnimationControllerCompat getController() {
        return this.mController;
    }

    public boolean getFinishTargetIsLauncher() {
        return this.mFinishTargetIsLauncher;
    }

    public void removeTaskTarget(final int i4) {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.D0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationController.this.lambda$removeTaskTarget$1(i4);
            }
        });
    }

    public ThumbnailData screenshotTask(int i4) {
        return this.mController.screenshotTask(i4);
    }

    public void setFinishTaskTransaction(final int i4, final PictureInPictureSurfaceTransaction pictureInPictureSurfaceTransaction, final SurfaceControl surfaceControl) {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.A0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationController.this.lambda$setFinishTaskTransaction$7(i4, pictureInPictureSurfaceTransaction, surfaceControl);
            }
        });
    }

    public void setSplitScreenMinimized(Context context, boolean z4) {
        if (this.mAllowMinimizeSplitScreen && this.mSplitScreenMinimized != z4) {
            this.mSplitScreenMinimized = z4;
        }
    }

    public void setUseLauncherSystemBarFlags(boolean z4) {
        if (this.mUseLauncherSysBarFlags != z4) {
            this.mUseLauncherSysBarFlags = z4;
            Executors.UI_HELPER_EXECUTOR.execute(new C0(this, z4, 1));
        }
    }

    public void setWillFinishToHome(boolean z4) {
        Executors.UI_HELPER_EXECUTOR.execute(new C0(this, z4, 0));
    }

    public void finish(boolean z4, Runnable runnable, boolean z5) {
        finishController(z4, runnable, z5);
    }

    public void finishController(final boolean z4, Runnable runnable, final boolean z5, boolean z6) {
        this.mPendingFinishCallbacks.add(runnable);
        if (z6 || !this.mFinishRequested) {
            ActiveGestureLog.INSTANCE.addLog("finishRecentsAnimation", z4, ActiveGestureErrorDetector.GestureEvent.FINISH_RECENTS_ANIMATION);
            this.mFinishRequested = true;
            this.mFinishTargetIsLauncher = z4;
            this.mOnFinishedListener.accept(this);
            Runnable runnable2 = new Runnable() { // from class: com.android.quickstep.z0
                @Override // java.lang.Runnable
                public final void run() {
                    RecentsAnimationController.this.lambda$finishController$2(z4, z5);
                }
            };
            if (z6) {
                runnable2.run();
            } else {
                Executors.UI_HELPER_EXECUTOR.execute(runnable2);
            }
        }
    }
}
