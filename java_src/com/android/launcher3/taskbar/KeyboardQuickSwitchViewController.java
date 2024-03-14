package com.android.launcher3.taskbar;

import android.animation.Animator;
import android.view.View;
import com.android.launcher3.C0410q;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.taskbar.KeyboardQuickSwitchController;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayContext;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayDragLayer;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.util.GroupTask;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import java.io.PrintWriter;
import java.util.List;
/* loaded from: classes.dex */
public final class KeyboardQuickSwitchViewController {
    private Animator mCloseAnimation;
    private final KeyboardQuickSwitchController.ControllerCallbacks mControllerCallbacks;
    private final TaskbarControllers mControllers;
    private final KeyboardQuickSwitchView mKeyboardQuickSwitchView;
    private boolean mOnDesktop;
    private final TaskbarOverlayContext mOverlayContext;
    private final ViewCallbacks mViewCallbacks = new ViewCallbacks();
    private int mCurrentFocusIndex = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class ViewCallbacks {
        public ViewCallbacks() {
        }
    }

    public KeyboardQuickSwitchViewController(TaskbarControllers taskbarControllers, TaskbarOverlayContext taskbarOverlayContext, KeyboardQuickSwitchView keyboardQuickSwitchView, KeyboardQuickSwitchController.ControllerCallbacks controllerCallbacks) {
        this.mControllers = taskbarControllers;
        this.mOverlayContext = taskbarOverlayContext;
        this.mKeyboardQuickSwitchView = keyboardQuickSwitchView;
        this.mControllerCallbacks = controllerCallbacks;
    }

    public static /* synthetic */ void a(KeyboardQuickSwitchViewController keyboardQuickSwitchViewController, GroupTask groupTask) {
        keyboardQuickSwitchViewController.getClass();
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(keyboardQuickSwitchViewController.mKeyboardQuickSwitchView.getContext())).showDesktopApp(groupTask.task1.key.id);
    }

    public static void b(KeyboardQuickSwitchViewController keyboardQuickSwitchViewController, GroupTask groupTask) {
        keyboardQuickSwitchViewController.getClass();
        ActivityManagerWrapper.getInstance().startActivityFromRecents(groupTask.task1.key, keyboardQuickSwitchViewController.mControllers.taskbarActivityContext.makeDefaultActivityOptions(-1).options);
    }

    public static void i(KeyboardQuickSwitchViewController keyboardQuickSwitchViewController) {
        keyboardQuickSwitchViewController.mOverlayContext.getDragLayer().removeView(keyboardQuickSwitchViewController.mKeyboardQuickSwitchView);
        KeyboardQuickSwitchController.this.mQuickSwitchViewController = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int launchTaskAt(int r6) {
        /*
            r5 = this;
            android.animation.Animator r0 = r5.mCloseAnimation
            r1 = -1
            if (r0 == 0) goto L6
            return r1
        L6:
            com.android.launcher3.taskbar.KeyboardQuickSwitchView r0 = r5.mKeyboardQuickSwitchView
            com.android.launcher3.taskbar.KeyboardQuickSwitchTaskView r2 = r0.getTaskAt(r6)
            com.android.launcher3.taskbar.KeyboardQuickSwitchController$ControllerCallbacks r3 = r5.mControllerCallbacks
            if (r6 < 0) goto L28
            com.android.launcher3.taskbar.KeyboardQuickSwitchController r3 = com.android.launcher3.taskbar.KeyboardQuickSwitchController.this
            java.util.List r4 = com.android.launcher3.taskbar.KeyboardQuickSwitchController.e(r3)
            int r4 = r4.size()
            if (r6 < r4) goto L1d
            goto L2b
        L1d:
            java.util.List r3 = com.android.launcher3.taskbar.KeyboardQuickSwitchController.e(r3)
            java.lang.Object r3 = r3.get(r6)
            com.android.quickstep.util.GroupTask r3 = (com.android.quickstep.util.GroupTask) r3
            goto L2c
        L28:
            r3.getClass()
        L2b:
            r3 = 0
        L2c:
            if (r3 != 0) goto L34
            r5 = 0
            int r5 = java.lang.Math.max(r5, r6)
            return r5
        L34:
            boolean r6 = r5.mOnDesktop
            if (r6 == 0) goto L43
            com.android.launcher3.util.LooperExecutor r6 = com.android.launcher3.util.Executors.UI_HELPER_EXECUTOR
            com.android.launcher3.taskbar.m r0 = new com.android.launcher3.taskbar.m
            r0.<init>()
            r6.execute(r0)
            goto L5d
        L43:
            com.android.systemui.shared.recents.model.Task r6 = r3.task2
            if (r6 != 0) goto L52
            com.android.launcher3.util.LooperExecutor r6 = com.android.launcher3.util.Executors.UI_HELPER_EXECUTOR
            com.android.launcher3.taskbar.n r0 = new com.android.launcher3.taskbar.n
            r0.<init>()
            r6.execute(r0)
            goto L5d
        L52:
            com.android.launcher3.taskbar.TaskbarControllers r5 = r5.mControllers
            com.android.launcher3.taskbar.TaskbarUIController r5 = r5.uiController
            if (r2 != 0) goto L59
            goto L5a
        L59:
            r0 = r2
        L5a:
            r5.launchSplitTasks(r0, r3)
        L5d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.taskbar.KeyboardQuickSwitchViewController.launchTaskAt(int):int");
    }

    public final void closeQuickSwitchView(boolean z4) {
        Animator animator = this.mCloseAnimation;
        if (animator != null) {
            if (z4) {
                return;
            }
            animator.cancel();
        }
        KeyboardQuickSwitchView keyboardQuickSwitchView = this.mKeyboardQuickSwitchView;
        if (!z4) {
            this.mCloseAnimation = null;
            this.mOverlayContext.getDragLayer().removeView(keyboardQuickSwitchView);
            KeyboardQuickSwitchController.this.mQuickSwitchViewController = null;
            return;
        }
        Animator closeAnimation = keyboardQuickSwitchView.getCloseAnimation();
        this.mCloseAnimation = closeAnimation;
        closeAnimation.addListener(new AnimationSuccessListener() { // from class: com.android.launcher3.taskbar.KeyboardQuickSwitchViewController.1
            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public final void onAnimationSuccess(Animator animator2) {
                KeyboardQuickSwitchViewController.this.mCloseAnimation = null;
                KeyboardQuickSwitchViewController.i(KeyboardQuickSwitchViewController.this);
            }
        });
        this.mCloseAnimation.start();
    }

    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "KeyboardQuickSwitchViewController:");
        printWriter.println(str + "\thasFocus=" + this.mKeyboardQuickSwitchView.hasFocus());
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tcloseAnimationRunning=");
        StringBuilder c4 = C0410q.c(sb, this.mCloseAnimation != null, printWriter, str, "\tmCurrentFocusIndex=");
        c4.append(this.mCurrentFocusIndex);
        printWriter.println(c4.toString());
    }

    public final int getCurrentFocusedIndex() {
        return this.mCurrentFocusIndex;
    }

    public final int launchFocusedTask() {
        List list;
        int i4;
        int i5 = this.mCurrentFocusIndex;
        if (i5 == -1) {
            KeyboardQuickSwitchController keyboardQuickSwitchController = KeyboardQuickSwitchController.this;
            list = keyboardQuickSwitchController.mTasks;
            int size = list.size();
            i4 = keyboardQuickSwitchController.mNumHiddenTasks;
            i5 = size + (i4 == 0 ? 0 : 1) > 1 ? 1 : 0;
        }
        return launchTaskAt(i5);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.launcher3.taskbar.o] */
    public final void openQuickSwitchView(List list, int i4, boolean z4, int i5, boolean z5) {
        TaskbarOverlayDragLayer dragLayer = this.mOverlayContext.getDragLayer();
        dragLayer.addView(this.mKeyboardQuickSwitchView);
        dragLayer.runOnClickOnce(new View.OnClickListener() { // from class: com.android.launcher3.taskbar.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                KeyboardQuickSwitchViewController.this.closeQuickSwitchView(true);
            }
        });
        this.mOnDesktop = z5;
        this.mKeyboardQuickSwitchView.applyLoadPlan(this.mOverlayContext, list, i4, z4, i5, this.mViewCallbacks);
    }
}
