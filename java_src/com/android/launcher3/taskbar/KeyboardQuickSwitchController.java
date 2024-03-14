package com.android.launcher3.taskbar;

import android.content.ComponentName;
import android.view.ViewGroup;
import com.android.launcher3.C0339g;
import com.android.launcher3.C0410q;
import com.android.launcher3.statehandlers.DesktopVisibilityController;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayContext;
import com.android.quickstep.LauncherActivityInterface;
import com.android.quickstep.RecentsModel;
import com.android.quickstep.util.DesktopTask;
import com.android.quickstep.util.GroupTask;
import com.android.quickstep.views.DesktopTaskView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class KeyboardQuickSwitchController implements TaskbarControllers.LoggableTaskbarController {
    private TaskbarControllers mControllers;
    private RecentsModel mModel;
    private KeyboardQuickSwitchViewController mQuickSwitchViewController;
    private final ControllerCallbacks mControllerCallbacks = new ControllerCallbacks();
    private int mTaskListChangeId = -1;
    private List mTasks = new ArrayList();
    private int mNumHiddenTasks = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class ControllerCallbacks {
        public ControllerCallbacks() {
        }
    }

    public static void a(KeyboardQuickSwitchController keyboardQuickSwitchController, boolean z4, int i4, ArrayList arrayList) {
        int i5;
        DesktopTask desktopTask;
        keyboardQuickSwitchController.getClass();
        if (z4) {
            DesktopTask desktopTask2 = (DesktopTask) arrayList.stream().filter(new Predicate() { // from class: com.android.launcher3.taskbar.d
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    switch (r1) {
                        case 0:
                            return !(((GroupTask) obj) instanceof DesktopTask);
                        default:
                            return ((GroupTask) obj) instanceof DesktopTask;
                    }
                }
            }).findFirst().orElse(null);
            if (desktopTask2 != null) {
                keyboardQuickSwitchController.mTasks = (List) desktopTask2.tasks.stream().map(new C0425e()).collect(Collectors.toList());
                keyboardQuickSwitchController.mNumHiddenTasks = Math.max(0, arrayList.size() - 1);
            } else {
                keyboardQuickSwitchController.mTasks = Collections.emptyList();
                keyboardQuickSwitchController.mNumHiddenTasks = arrayList.size();
            }
        } else {
            Collections.reverse(arrayList);
            if (!DesktopTaskView.DESKTOP_IS_PROTO2_ENABLED || (desktopTask = (DesktopTask) arrayList.stream().filter(new Predicate() { // from class: com.android.launcher3.taskbar.d
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    switch (r1) {
                        case 0:
                            return !(((GroupTask) obj) instanceof DesktopTask);
                        default:
                            return ((GroupTask) obj) instanceof DesktopTask;
                    }
                }
            }).findFirst().orElse(null)) == null) {
                i5 = 0;
            } else {
                i5 = desktopTask.tasks.size();
                arrayList = (ArrayList) arrayList.stream().filter(new Predicate() { // from class: com.android.launcher3.taskbar.d
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        switch (r1) {
                            case 0:
                                return !(((GroupTask) obj) instanceof DesktopTask);
                            default:
                                return ((GroupTask) obj) instanceof DesktopTask;
                        }
                    }
                }).collect(Collectors.toCollection(new com.android.launcher3.model.W0()));
            }
            keyboardQuickSwitchController.mTasks = (List) arrayList.stream().limit(6L).collect(Collectors.toList());
            keyboardQuickSwitchController.mNumHiddenTasks = Math.max(0, arrayList.size() - 6) + i5;
        }
        keyboardQuickSwitchController.mQuickSwitchViewController.openQuickSwitchView(keyboardQuickSwitchController.mTasks, keyboardQuickSwitchController.mNumHiddenTasks, true, i4, z4);
    }

    public final void closeQuickSwitchView() {
        KeyboardQuickSwitchViewController keyboardQuickSwitchViewController = this.mQuickSwitchViewController;
        if (keyboardQuickSwitchViewController == null) {
            return;
        }
        keyboardQuickSwitchViewController.closeQuickSwitchView(true);
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "KeyboardQuickSwitchController:");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tisOpen=");
        StringBuilder a4 = C0339g.a(C0410q.c(sb, this.mQuickSwitchViewController != null, printWriter, str, "\tmNumHiddenTasks="), this.mNumHiddenTasks, printWriter, str, "\tmTaskListChangeId=");
        a4.append(this.mTaskListChangeId);
        printWriter.println(a4.toString());
        printWriter.println(str + "\tmTasks=[");
        for (GroupTask groupTask : this.mTasks) {
            Task task = groupTask.task1;
            Task task2 = groupTask.task2;
            ComponentName topComponent = task.getTopComponent();
            ComponentName topComponent2 = task2 != null ? task2.getTopComponent() : null;
            StringBuilder a5 = t.j.a(str, "\t\tt1: (id=");
            a5.append(task.key.id);
            a5.append("; package=");
            String str2 = "no package)";
            a5.append(topComponent != null ? topComponent.getPackageName() + ")" : "no package)");
            a5.append(" t2: (id=");
            a5.append(task2 != null ? Integer.valueOf(task2.key.id) : "-1");
            a5.append("; package=");
            if (topComponent2 != null) {
                str2 = topComponent2.getPackageName() + ")";
            }
            a5.append(str2);
            printWriter.println(a5.toString());
        }
        printWriter.println(str + "\t]");
        KeyboardQuickSwitchViewController keyboardQuickSwitchViewController = this.mQuickSwitchViewController;
        if (keyboardQuickSwitchViewController != null) {
            keyboardQuickSwitchViewController.dumpLogs(str + '\t', printWriter);
        }
    }

    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
        this.mModel = (RecentsModel) RecentsModel.INSTANCE.get(taskbarControllers.taskbarActivityContext);
    }

    public final int launchFocusedTask() {
        if (this.mQuickSwitchViewController == null || this.mTasks.isEmpty()) {
            return -1;
        }
        return this.mQuickSwitchViewController.launchFocusedTask();
    }

    public final void onConfigurationChanged(int i4) {
        KeyboardQuickSwitchViewController keyboardQuickSwitchViewController = this.mQuickSwitchViewController;
        if (keyboardQuickSwitchViewController == null) {
            return;
        }
        if ((i4 & 48) != 0) {
            keyboardQuickSwitchViewController.closeQuickSwitchView(true);
            return;
        }
        final int currentFocusedIndex = keyboardQuickSwitchViewController.getCurrentFocusedIndex();
        onDestroy();
        if (currentFocusedIndex != -1) {
            this.mControllers.taskbarActivityContext.getMainThreadHandler().post(new Runnable() { // from class: com.android.launcher3.taskbar.f
                @Override // java.lang.Runnable
                public final void run() {
                    KeyboardQuickSwitchController.this.openQuickSwitchView(currentFocusedIndex);
                }
            });
        }
    }

    public final void onDestroy() {
        KeyboardQuickSwitchViewController keyboardQuickSwitchViewController = this.mQuickSwitchViewController;
        if (keyboardQuickSwitchViewController != null) {
            keyboardQuickSwitchViewController.closeQuickSwitchView(false);
        }
    }

    public final void openQuickSwitchView() {
        openQuickSwitchView(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openQuickSwitchView(final int i4) {
        if (this.mQuickSwitchViewController != null) {
            return;
        }
        TaskbarOverlayContext requestWindow = this.mControllers.taskbarOverlayController.requestWindow();
        boolean z4 = false;
        this.mQuickSwitchViewController = new KeyboardQuickSwitchViewController(this.mControllers, requestWindow, (KeyboardQuickSwitchView) requestWindow.mLayoutInflater.inflate(R.layout.keyboard_quick_switch_view, (ViewGroup) requestWindow.getDragLayer(), false), this.mControllerCallbacks);
        DesktopVisibilityController desktopVisibilityController = LauncherActivityInterface.INSTANCE.getDesktopVisibilityController();
        if (DesktopTaskView.DESKTOP_IS_PROTO2_ENABLED && desktopVisibilityController != null && desktopVisibilityController.areFreeformTasksVisible()) {
            z4 = true;
        }
        final boolean z5 = z4;
        if (this.mModel.isTaskListValid(this.mTaskListChangeId)) {
            this.mQuickSwitchViewController.openQuickSwitchView(this.mTasks, this.mNumHiddenTasks, false, i4, z5);
        } else {
            this.mTaskListChangeId = this.mModel.getTasks(new Consumer() { // from class: com.android.launcher3.taskbar.c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    KeyboardQuickSwitchController.a(KeyboardQuickSwitchController.this, z5, i4, (ArrayList) obj);
                }
            });
        }
    }
}
