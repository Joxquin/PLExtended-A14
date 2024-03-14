package com.android.launcher3.taskbar;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.launcher3.util.TouchController;
import com.android.systemui.shared.system.QuickStepContract;
/* loaded from: classes.dex */
public final class TaskbarForceVisibleImmersiveController implements TouchController {
    private final TaskbarActivityContext mContext;
    private TaskbarControllers mControllers;
    private boolean mIsImmersiveMode;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final RunnableC0428f0 mDimmingRunnable = new Runnable(this) { // from class: com.android.launcher3.taskbar.f0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarForceVisibleImmersiveController f5121e;

        {
            this.f5121e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    TaskbarForceVisibleImmersiveController.c(this.f5121e);
                    return;
                case 1:
                    TaskbarForceVisibleImmersiveController.a(this.f5121e);
                    return;
                default:
                    TaskbarForceVisibleImmersiveController.b(this.f5121e);
                    return;
            }
        }
    };
    private final RunnableC0428f0 mUndimmingRunnable = new Runnable(this) { // from class: com.android.launcher3.taskbar.f0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarForceVisibleImmersiveController f5121e;

        {
            this.f5121e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    TaskbarForceVisibleImmersiveController.c(this.f5121e);
                    return;
                case 1:
                    TaskbarForceVisibleImmersiveController.a(this.f5121e);
                    return;
                default:
                    TaskbarForceVisibleImmersiveController.b(this.f5121e);
                    return;
            }
        }
    };
    private final AnimatedFloat mIconAlphaForDimming = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.f0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarForceVisibleImmersiveController f5121e;

        {
            this.f5121e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    TaskbarForceVisibleImmersiveController.c(this.f5121e);
                    return;
                case 1:
                    TaskbarForceVisibleImmersiveController.a(this.f5121e);
                    return;
                default:
                    TaskbarForceVisibleImmersiveController.b(this.f5121e);
                    return;
            }
        }
    });
    private final View.AccessibilityDelegate mKidsModeAccessibilityDelegate = new View.AccessibilityDelegate() { // from class: com.android.launcher3.taskbar.TaskbarForceVisibleImmersiveController.1
        @Override // android.view.View.AccessibilityDelegate
        public final boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
            if (i4 == 64 || i4 == 16) {
                TaskbarForceVisibleImmersiveController.this.startIconUndimming();
                TaskbarForceVisibleImmersiveController.this.startIconDimming();
            }
            return super.performAccessibilityAction(view, i4, bundle);
        }
    };

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.launcher3.taskbar.f0] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.launcher3.taskbar.f0] */
    public TaskbarForceVisibleImmersiveController(TaskbarActivityContext taskbarActivityContext) {
        this.mContext = taskbarActivityContext;
    }

    public static void a(TaskbarForceVisibleImmersiveController taskbarForceVisibleImmersiveController) {
        taskbarForceVisibleImmersiveController.mIconAlphaForDimming.animateToValue(1.0f).setDuration(250L).start();
    }

    public static void b(TaskbarForceVisibleImmersiveController taskbarForceVisibleImmersiveController) {
        NavbarButtonsViewController navbarButtonsViewController;
        TaskbarControllers taskbarControllers = taskbarForceVisibleImmersiveController.mControllers;
        if (taskbarControllers == null || (navbarButtonsViewController = taskbarControllers.navbarButtonsViewController) == null) {
            return;
        }
        MultiValueAlpha backButtonAlpha = navbarButtonsViewController.getBackButtonAlpha();
        AnimatedFloat animatedFloat = taskbarForceVisibleImmersiveController.mIconAlphaForDimming;
        if (backButtonAlpha != null) {
            backButtonAlpha.get(0).setValue(animatedFloat.value);
        }
        MultiValueAlpha homeButtonAlpha = taskbarForceVisibleImmersiveController.mControllers.navbarButtonsViewController.getHomeButtonAlpha();
        if (backButtonAlpha != null) {
            homeButtonAlpha.get(0).setValue(animatedFloat.value);
        }
    }

    public static void c(TaskbarForceVisibleImmersiveController taskbarForceVisibleImmersiveController) {
        taskbarForceVisibleImmersiveController.mIconAlphaForDimming.animateToValue(0.15f).setDuration(500L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startIconDimming() {
        Handler handler = this.mHandler;
        RunnableC0428f0 runnableC0428f0 = this.mDimmingRunnable;
        handler.removeCallbacks(runnableC0428f0);
        handler.postDelayed(runnableC0428f0, AccessibilityManagerCompat.getRecommendedTimeoutMillis(this.mContext, 4500, 5));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startIconUndimming() {
        Handler handler = this.mHandler;
        handler.removeCallbacks(this.mDimmingRunnable);
        RunnableC0428f0 runnableC0428f0 = this.mUndimmingRunnable;
        handler.removeCallbacks(runnableC0428f0);
        handler.post(runnableC0428f0);
    }

    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if ((this.mIsImmersiveMode && this.mContext.isNavBarForceVisible()) && !this.mControllers.taskbarStashController.supportsManualStashing()) {
            onControllerTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            startIconUndimming();
            return false;
        } else if (action == 1 || action == 3) {
            startIconDimming();
            return false;
        } else {
            return false;
        }
    }

    public final void onDestroy() {
        startIconUndimming();
        this.mControllers.navbarButtonsViewController.setHomeButtonAccessibilityDelegate(null);
        this.mControllers.navbarButtonsViewController.setBackButtonAccessibilityDelegate(null);
    }

    public final void updateSysuiFlags(int i4) {
        this.mIsImmersiveMode = (i4 & QuickStepContract.SYSUI_STATE_IMMERSIVE_MODE) != 0;
        if (!this.mContext.isNavBarForceVisible()) {
            this.mControllers.navbarButtonsViewController.setHomeButtonAccessibilityDelegate(null);
            this.mControllers.navbarButtonsViewController.setBackButtonAccessibilityDelegate(null);
            return;
        }
        if (this.mIsImmersiveMode) {
            startIconDimming();
        } else {
            startIconUndimming();
        }
        NavbarButtonsViewController navbarButtonsViewController = this.mControllers.navbarButtonsViewController;
        View.AccessibilityDelegate accessibilityDelegate = this.mKidsModeAccessibilityDelegate;
        navbarButtonsViewController.setHomeButtonAccessibilityDelegate(accessibilityDelegate);
        this.mControllers.navbarButtonsViewController.setBackButtonAccessibilityDelegate(accessibilityDelegate);
    }
}
