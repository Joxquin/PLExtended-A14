package com.android.launcher3.taskbar;

import android.graphics.Rect;
import com.android.launcher3.C0339g;
import com.android.launcher3.C0410q;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public final class TaskbarDragLayerController implements TaskbarControllers.LoggableTaskbarController, TaskbarControllers.BackgroundRendererController {
    private final TaskbarActivityContext mActivity;
    private MultiPropertyFactory.MultiProperty mBackgroundRendererAlpha;
    private TaskbarControllers mControllers;
    private final int mFolderMargin;
    private float mLastSetBackgroundAlpha;
    private AnimatedFloat mOnBackgroundNavButtonColorIntensity;
    private final TaskbarDragLayer mTaskbarDragLayer;
    private TaskbarStashViaTouchController mTaskbarStashViaTouchController;
    private final AnimatedFloat mBgTaskbar = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.d0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarDragLayerController f5115e;

        {
            this.f5115e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 1:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 2:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 3:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 4:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 5:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 6:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 7:
                    TaskbarDragLayerController.b(this.f5115e);
                    return;
                default:
                    TaskbarDragLayerController.a(this.f5115e);
                    return;
            }
        }
    });
    private final AnimatedFloat mBgNavbar = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.d0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarDragLayerController f5115e;

        {
            this.f5115e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 1:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 2:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 3:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 4:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 5:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 6:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 7:
                    TaskbarDragLayerController.b(this.f5115e);
                    return;
                default:
                    TaskbarDragLayerController.a(this.f5115e);
                    return;
            }
        }
    });
    private final AnimatedFloat mKeyguardBgTaskbar = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.d0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarDragLayerController f5115e;

        {
            this.f5115e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 1:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 2:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 3:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 4:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 5:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 6:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 7:
                    TaskbarDragLayerController.b(this.f5115e);
                    return;
                default:
                    TaskbarDragLayerController.a(this.f5115e);
                    return;
            }
        }
    });
    private final AnimatedFloat mNotificationShadeBgTaskbar = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.d0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarDragLayerController f5115e;

        {
            this.f5115e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 1:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 2:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 3:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 4:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 5:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 6:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 7:
                    TaskbarDragLayerController.b(this.f5115e);
                    return;
                default:
                    TaskbarDragLayerController.a(this.f5115e);
                    return;
            }
        }
    });
    private final AnimatedFloat mImeBgTaskbar = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.d0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarDragLayerController f5115e;

        {
            this.f5115e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 1:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 2:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 3:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 4:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 5:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 6:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 7:
                    TaskbarDragLayerController.b(this.f5115e);
                    return;
                default:
                    TaskbarDragLayerController.a(this.f5115e);
                    return;
            }
        }
    });
    private final AnimatedFloat mAssistantBgTaskbar = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.d0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarDragLayerController f5115e;

        {
            this.f5115e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 1:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 2:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 3:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 4:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 5:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 6:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 7:
                    TaskbarDragLayerController.b(this.f5115e);
                    return;
                default:
                    TaskbarDragLayerController.a(this.f5115e);
                    return;
            }
        }
    });
    private final AnimatedFloat mBgOverride = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.d0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarDragLayerController f5115e;

        {
            this.f5115e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 1:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 2:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 3:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 4:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 5:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 6:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 7:
                    TaskbarDragLayerController.b(this.f5115e);
                    return;
                default:
                    TaskbarDragLayerController.a(this.f5115e);
                    return;
            }
        }
    });
    private final AnimatedFloat mBgOffset = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.d0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarDragLayerController f5115e;

        {
            this.f5115e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 1:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 2:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 3:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 4:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 5:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 6:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 7:
                    TaskbarDragLayerController.b(this.f5115e);
                    return;
                default:
                    TaskbarDragLayerController.a(this.f5115e);
                    return;
            }
        }
    });
    private final AnimatedFloat mTaskbarAlpha = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.d0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarDragLayerController f5115e;

        {
            this.f5115e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 1:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 2:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 3:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 4:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 5:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 6:
                    this.f5115e.updateBackgroundAlpha();
                    return;
                case 7:
                    TaskbarDragLayerController.b(this.f5115e);
                    return;
                default:
                    TaskbarDragLayerController.a(this.f5115e);
                    return;
            }
        }
    });

    /* loaded from: classes.dex */
    public final class TaskbarDragLayerCallbacks {
        public TaskbarDragLayerCallbacks() {
            TaskbarDragLayerController.this = r1;
        }
    }

    public TaskbarDragLayerController(TaskbarActivityContext taskbarActivityContext, TaskbarDragLayer taskbarDragLayer) {
        this.mActivity = taskbarActivityContext;
        this.mTaskbarDragLayer = taskbarDragLayer;
        this.mBackgroundRendererAlpha = taskbarDragLayer.getBackgroundRendererAlpha();
        this.mFolderMargin = taskbarDragLayer.getResources().getDimensionPixelSize(R.dimen.taskbar_folder_margin);
    }

    public static void a(TaskbarDragLayerController taskbarDragLayerController) {
        taskbarDragLayerController.mTaskbarDragLayer.setAlpha(taskbarDragLayerController.mTaskbarAlpha.value);
    }

    public static void b(TaskbarDragLayerController taskbarDragLayerController) {
        taskbarDragLayerController.mTaskbarDragLayer.setTaskbarBackgroundOffset(taskbarDragLayerController.mBgOffset.value);
        taskbarDragLayerController.mOnBackgroundNavButtonColorIntensity.updateValue((1.0f - taskbarDragLayerController.mBgOffset.value) * taskbarDragLayerController.mLastSetBackgroundAlpha);
    }

    public void updateBackgroundAlpha() {
        float f4 = this.mBgNavbar.value;
        float f5 = this.mBgTaskbar.value * this.mKeyguardBgTaskbar.value * this.mNotificationShadeBgTaskbar.value * this.mImeBgTaskbar.value * this.mAssistantBgTaskbar.value;
        float max = Math.max(f4, f5) * this.mBgOverride.value;
        this.mLastSetBackgroundAlpha = max;
        this.mBackgroundRendererAlpha.setValue(max);
        this.mOnBackgroundNavButtonColorIntensity.updateValue((1.0f - this.mBgOffset.value) * this.mLastSetBackgroundAlpha);
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarDragLayerController:");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tmBgOffset=");
        StringBuilder a4 = C0410q.a(C0410q.a(C0410q.a(C0410q.a(C0410q.a(C0410q.a(C0410q.a(C0339g.a(C0410q.a(C0410q.a(sb, this.mBgOffset.value, printWriter, str, "\tmTaskbarAlpha="), this.mTaskbarAlpha.value, printWriter, str, "\tmFolderMargin="), this.mFolderMargin, printWriter, str, "\tmLastSetBackgroundAlpha="), this.mLastSetBackgroundAlpha, printWriter, str, "\t\tmBgOverride="), this.mBgOverride.value, printWriter, str, "\t\tmBgNavbar="), this.mBgNavbar.value, printWriter, str, "\t\tmBgTaskbar="), this.mBgTaskbar.value, printWriter, str, "\t\tmKeyguardBgTaskbar="), this.mKeyguardBgTaskbar.value, printWriter, str, "\t\tmNotificationShadeBgTaskbar="), this.mNotificationShadeBgTaskbar.value, printWriter, str, "\t\tmImeBgTaskbar="), this.mImeBgTaskbar.value, printWriter, str, "\t\tmAssistantBgTaskbar=");
        a4.append(this.mAssistantBgTaskbar.value);
        printWriter.println(a4.toString());
    }

    public final AnimatedFloat getAssistantBgTaskbar() {
        return this.mAssistantBgTaskbar;
    }

    public final MultiPropertyFactory.MultiProperty getBackgroundRendererAlphaForStash() {
        return this.mTaskbarDragLayer.getBackgroundRendererAlphaForStash();
    }

    public final Rect getFolderBoundingBox() {
        TaskbarDragLayer taskbarDragLayer = this.mTaskbarDragLayer;
        int width = taskbarDragLayer.getWidth();
        int height = taskbarDragLayer.getHeight();
        TaskbarActivityContext taskbarActivityContext = this.mActivity;
        Rect rect = new Rect(0, 0, width, (height - taskbarActivityContext.getDeviceProfile().taskbarHeight) - taskbarActivityContext.getDeviceProfile().taskbarBottomMargin);
        int i4 = this.mFolderMargin;
        rect.inset(i4, i4);
        return rect;
    }

    public final AnimatedFloat getImeBgTaskbar() {
        return this.mImeBgTaskbar;
    }

    public final AnimatedFloat getKeyguardBgTaskbar() {
        return this.mKeyguardBgTaskbar;
    }

    public final AnimatedFloat getNavbarBackgroundAlpha() {
        return this.mBgNavbar;
    }

    public final AnimatedFloat getNotificationShadeBgTaskbar() {
        return this.mNotificationShadeBgTaskbar;
    }

    public final AnimatedFloat getTaskbarAlpha() {
        return this.mTaskbarAlpha;
    }

    public final AnimatedFloat getTaskbarBackgroundAlpha() {
        return this.mBgTaskbar;
    }

    public final AnimatedFloat getTaskbarBackgroundOffset() {
        return this.mBgOffset;
    }

    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
        this.mTaskbarStashViaTouchController = new TaskbarStashViaTouchController(taskbarControllers);
        TaskbarDragLayerCallbacks taskbarDragLayerCallbacks = new TaskbarDragLayerCallbacks();
        TaskbarDragLayer taskbarDragLayer = this.mTaskbarDragLayer;
        taskbarDragLayer.init(taskbarDragLayerCallbacks);
        this.mOnBackgroundNavButtonColorIntensity = this.mControllers.navbarButtonsViewController.getOnTaskbarBackgroundNavButtonColorOverride();
        this.mBgTaskbar.value = 1.0f;
        this.mKeyguardBgTaskbar.value = 1.0f;
        this.mNotificationShadeBgTaskbar.value = 1.0f;
        this.mImeBgTaskbar.value = 1.0f;
        this.mAssistantBgTaskbar.value = 1.0f;
        this.mBgOverride.value = 1.0f;
        updateBackgroundAlpha();
        this.mTaskbarAlpha.value = 1.0f;
        taskbarDragLayer.setAlpha(1.0f);
    }

    public final void onConfigurationChanged() {
        this.mTaskbarStashViaTouchController.updateGestureHeight();
    }

    public final void onDestroy() {
        TaskbarDragLayer taskbarDragLayer = this.mTaskbarDragLayer;
        taskbarDragLayer.getClass();
        taskbarDragLayer.onDestroy(!TaskbarManager.FLAG_HIDE_NAVBAR_WINDOW);
    }

    public final void setBackgroundHorizontalInsets(float f4) {
        this.mTaskbarDragLayer.setBackgroundHorizontalInsets(f4);
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.BackgroundRendererController
    public final void setCornerRoundness(float f4) {
        this.mTaskbarDragLayer.setCornerRoundness(f4);
    }

    public final void setIsBackgroundDrawnElsewhere(boolean z4) {
        this.mBgOverride.updateValue(z4 ? 0.0f : 1.0f);
    }

    public final void setTranslationYForStash(float f4) {
        this.mTaskbarDragLayer.setBackgroundTranslationYForStash(f4);
    }

    public final void setTranslationYForSwipe(float f4) {
        this.mTaskbarDragLayer.setBackgroundTranslationYForSwipe(f4);
    }
}
