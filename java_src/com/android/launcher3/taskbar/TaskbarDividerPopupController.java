package com.android.launcher3.taskbar;

import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.ConstantItem;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public final class TaskbarDividerPopupController implements TaskbarControllers.LoggableTaskbarController {
    private final TaskbarActivityContext context;
    private final LauncherPrefs launcherPrefs;

    public TaskbarDividerPopupController(TaskbarActivityContext context) {
        kotlin.jvm.internal.h.e(context, "context");
        this.context = context;
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        this.launcherPrefs = LauncherPrefs.Companion.get(context);
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String prefix, PrintWriter pw) {
        kotlin.jvm.internal.h.e(prefix, "prefix");
        kotlin.jvm.internal.h.e(pw, "pw");
        pw.println(prefix.concat("TaskbarPinningController:"));
    }

    public final void showPinningView(final View view) {
        kotlin.jvm.internal.h.e(view, "view");
        this.context.setTaskbarWindowFullscreen(true);
        view.post(new Runnable() { // from class: com.android.launcher3.taskbar.TaskbarDividerPopupController$showPinningView$1
            @Override // java.lang.Runnable
            public final void run() {
                TaskbarActivityContext taskbarActivityContext;
                TaskbarActivityContext taskbarActivityContext2;
                int i4 = TaskbarDividerPopupView.f5070d;
                View view2 = view;
                taskbarActivityContext = this.context;
                kotlin.jvm.internal.h.e(view2, "view");
                kotlin.jvm.internal.h.e(taskbarActivityContext, "taskbarActivityContext");
                View inflate = taskbarActivityContext.mLayoutInflater.inflate(R.layout.taskbar_divider_popup_menu, (ViewGroup) taskbarActivityContext.getDragLayer(), false);
                kotlin.jvm.internal.h.c(inflate, "null cannot be cast to non-null type com.android.launcher3.taskbar.TaskbarDividerPopupView<*>");
                TaskbarDividerPopupView taskbarDividerPopupView = (TaskbarDividerPopupView) inflate;
                TaskbarDividerPopupView.access$populateForView(taskbarDividerPopupView, view2);
                taskbarDividerPopupView.requestFocus();
                final TaskbarDividerPopupController taskbarDividerPopupController = this;
                taskbarDividerPopupView.setOnCloseCallback(new m3.l() { // from class: com.android.launcher3.taskbar.TaskbarDividerPopupController$showPinningView$1.1
                    {
                        super(1);
                    }

                    @Override // m3.l
                    public final Object invoke(Object obj) {
                        TaskbarActivityContext taskbarActivityContext3;
                        LauncherPrefs launcherPrefs;
                        boolean booleanValue = ((Boolean) obj).booleanValue();
                        taskbarActivityContext3 = TaskbarDividerPopupController.this.context;
                        TaskbarDragLayer dragLayer = taskbarActivityContext3.getDragLayer();
                        final TaskbarDividerPopupController taskbarDividerPopupController2 = TaskbarDividerPopupController.this;
                        dragLayer.post(new Runnable() { // from class: com.android.launcher3.taskbar.TaskbarDividerPopupController.showPinningView.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                TaskbarActivityContext taskbarActivityContext4;
                                taskbarActivityContext4 = TaskbarDividerPopupController.this.context;
                                taskbarActivityContext4.setTaskbarWindowFocusable(false);
                            }
                        });
                        if (booleanValue) {
                            launcherPrefs = TaskbarDividerPopupController.this.launcherPrefs;
                            if (((Boolean) launcherPrefs.get(LauncherPrefs.TASKBAR_PINNING)).booleanValue()) {
                                TaskbarDividerPopupController.this.getClass();
                            } else {
                                TaskbarDividerPopupController.this.getClass();
                            }
                        }
                        return e3.f.f9037a;
                    }
                });
                final TaskbarDividerPopupController taskbarDividerPopupController2 = this;
                taskbarDividerPopupView.setChangePreference(new m3.a() { // from class: com.android.launcher3.taskbar.TaskbarDividerPopupController$showPinningView$1.2
                    {
                        super(0);
                    }

                    @Override // m3.a
                    public final Object invoke() {
                        LauncherPrefs launcherPrefs;
                        LauncherPrefs launcherPrefs2;
                        launcherPrefs = TaskbarDividerPopupController.this.launcherPrefs;
                        ConstantItem constantItem = LauncherPrefs.TASKBAR_PINNING;
                        launcherPrefs2 = TaskbarDividerPopupController.this.launcherPrefs;
                        launcherPrefs.put(constantItem, Boolean.valueOf(!((Boolean) launcherPrefs2.get(constantItem)).booleanValue()));
                        return e3.f.f9037a;
                    }
                });
                taskbarActivityContext2 = this.context;
                taskbarActivityContext2.setTaskbarWindowFocusable(true);
                taskbarDividerPopupView.show();
            }
        });
    }
}
