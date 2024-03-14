package com.android.quickstep;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.TaskInfo;
import android.content.ComponentName;
import android.os.Process;
import android.util.SparseBooleanArray;
import com.android.launcher3.C0339g;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.SplitConfigurationOptions$SplitBounds;
import com.android.quickstep.RecentsModel;
import com.android.quickstep.util.DesktopTask;
import com.android.quickstep.util.GroupTask;
import com.android.quickstep.views.DesktopTaskView;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.wm.shell.recents.IRecentTasksListener;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public class RecentTasksList {
    private static final TaskLoadResult INVALID_RESULT = new TaskLoadResult(-1, false, 0);
    private int mChangeId;
    private final KeyguardManager mKeyguardManager;
    private boolean mLoadingTasksInBackground;
    private final LooperExecutor mMainThreadExecutor;
    private TaskLoadResult mResultsBg;
    private TaskLoadResult mResultsUi;
    private ArrayList mRunningTasks;
    private RecentsModel.RunningTasksListener mRunningTasksListener;
    private final SystemUiProxy mSysUiProxy;

    /* renamed from: com.android.quickstep.RecentTasksList$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends IRecentTasksListener.Stub {
        public AnonymousClass1() {
            RecentTasksList.this = r1;
        }

        public /* synthetic */ void lambda$onRunningTaskAppeared$0(ActivityManager.RunningTaskInfo runningTaskInfo) {
            RecentTasksList.this.onRunningTaskAppeared(runningTaskInfo);
        }

        public /* synthetic */ void lambda$onRunningTaskVanished$1(ActivityManager.RunningTaskInfo runningTaskInfo) {
            RecentTasksList.this.onRunningTaskVanished(runningTaskInfo);
        }

        @Override // com.android.wm.shell.recents.IRecentTasksListener
        public void onRecentTasksChanged() {
            RecentTasksList.this.mMainThreadExecutor.execute(new RunnableC0521j0(RecentTasksList.this, 1));
        }

        @Override // com.android.wm.shell.recents.IRecentTasksListener
        public void onRunningTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo) {
            RecentTasksList.this.mMainThreadExecutor.execute(new RunnableC0539p0(this, runningTaskInfo, 0));
        }

        @Override // com.android.wm.shell.recents.IRecentTasksListener
        public void onRunningTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) {
            RecentTasksList.this.mMainThreadExecutor.execute(new RunnableC0539p0(this, runningTaskInfo, 1));
        }
    }

    /* loaded from: classes.dex */
    public class TaskLoadResult extends ArrayList {
        final boolean mKeysOnly;
        final int mRequestId;

        public TaskLoadResult(int i4, boolean z4, int i5) {
            super(i5);
            this.mRequestId = i4;
            this.mKeysOnly = z4;
        }

        public boolean isValidForRequest(int i4, boolean z4) {
            return this.mRequestId == i4 && (!this.mKeysOnly || z4);
        }
    }

    public RecentTasksList(LooperExecutor looperExecutor, KeyguardManager keyguardManager, SystemUiProxy systemUiProxy) {
        TaskLoadResult taskLoadResult = INVALID_RESULT;
        this.mResultsBg = taskLoadResult;
        this.mResultsUi = taskLoadResult;
        this.mMainThreadExecutor = looperExecutor;
        this.mKeyguardManager = keyguardManager;
        this.mChangeId = 1;
        this.mSysUiProxy = systemUiProxy;
        systemUiProxy.registerRecentTasksListener(new AnonymousClass1());
        initRunningTasks(systemUiProxy.getRunningTasks(Integer.MAX_VALUE));
    }

    private SplitConfigurationOptions$SplitBounds convertSplitBounds(H1.e eVar) {
        if (eVar == null) {
            return null;
        }
        return new SplitConfigurationOptions$SplitBounds(eVar.f536d, eVar.f537e, eVar.f544l, eVar.f545m);
    }

    private ArrayList copyOf(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            arrayList2.add(((GroupTask) arrayList.get(i4)).copy());
        }
        return arrayList2;
    }

    private DesktopTask createDesktopTask(H1.c cVar) {
        ArrayList arrayList = new ArrayList(Arrays.asList(cVar.f533d).size());
        for (ActivityManager.RecentTaskInfo recentTaskInfo : Arrays.asList(cVar.f533d)) {
            Task from = Task.from(new Task.TaskKey(recentTaskInfo), recentTaskInfo, false);
            from.setLastSnapshotData(recentTaskInfo);
            from.positionInParent = recentTaskInfo.positionInParent;
            from.appBounds = recentTaskInfo.configuration.windowConfiguration.getAppBounds();
            arrayList.add(from);
        }
        return new DesktopTask(arrayList);
    }

    private void initRunningTasks(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList);
        this.mRunningTasks = arrayList2;
        Collections.reverse(arrayList2);
    }

    private synchronized void invalidateLoadedTasks() {
        Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0521j0(this, 0));
        this.mResultsUi = INVALID_RESULT;
        this.mChangeId++;
    }

    public /* synthetic */ void lambda$getTaskKeys$1(int i4, Consumer consumer) {
        this.mMainThreadExecutor.execute(new RunnableC0530m0(1, consumer, loadTasksInBackground(i4, -1, true)));
    }

    public /* synthetic */ void lambda$getTasks$3(TaskLoadResult taskLoadResult, Consumer consumer, Predicate predicate) {
        this.mLoadingTasksInBackground = false;
        this.mResultsUi = taskLoadResult;
        if (consumer != null) {
            consumer.accept((ArrayList) taskLoadResult.stream().filter(predicate).map(new C0524k0(1)).collect(Collectors.toCollection(new C0527l0(1))));
        }
    }

    public /* synthetic */ void lambda$getTasks$4(int i4, boolean z4, final Consumer consumer, final Predicate predicate) {
        if (!this.mResultsBg.isValidForRequest(i4, z4)) {
            this.mResultsBg = loadTasksInBackground(Integer.MAX_VALUE, i4, z4);
        }
        final TaskLoadResult taskLoadResult = this.mResultsBg;
        this.mMainThreadExecutor.execute(new Runnable() { // from class: com.android.quickstep.o0
            @Override // java.lang.Runnable
            public final void run() {
                RecentTasksList.this.lambda$getTasks$3(taskLoadResult, consumer, predicate);
            }
        });
    }

    public /* synthetic */ void lambda$invalidateLoadedTasks$5() {
        this.mResultsBg = INVALID_RESULT;
    }

    public void onRunningTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo) {
        Iterator it = this.mRunningTasks.iterator();
        while (it.hasNext()) {
            if (runningTaskInfo.taskId == ((ActivityManager.RunningTaskInfo) it.next()).taskId) {
                return;
            }
        }
        this.mRunningTasks.add(runningTaskInfo);
        RecentsModel.RunningTasksListener runningTasksListener = this.mRunningTasksListener;
        if (runningTasksListener != null) {
            runningTasksListener.onRunningTasksChanged();
        }
    }

    public void onRunningTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) {
        Iterator it = this.mRunningTasks.iterator();
        while (it.hasNext()) {
            ActivityManager.RunningTaskInfo runningTaskInfo2 = (ActivityManager.RunningTaskInfo) it.next();
            if (runningTaskInfo2.taskId == runningTaskInfo.taskId) {
                this.mRunningTasks.remove(runningTaskInfo2);
                RecentsModel.RunningTasksListener runningTasksListener = this.mRunningTasksListener;
                if (runningTasksListener != null) {
                    runningTasksListener.onRunningTasksChanged();
                    return;
                }
                return;
            }
        }
    }

    public void dump(String str, PrintWriter printWriter) {
        String str2;
        String str3;
        String str4;
        printWriter.println(str + "RecentTasksList:");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("  mChangeId=");
        StringBuilder a4 = C0339g.a(sb, this.mChangeId, printWriter, str, "  mResultsUi=[id=");
        a4.append(this.mResultsUi.mRequestId);
        a4.append(", tasks=");
        printWriter.println(a4.toString());
        Iterator it = this.mResultsUi.iterator();
        while (true) {
            String str5 = "no package)";
            if (!it.hasNext()) {
                break;
            }
            GroupTask groupTask = (GroupTask) it.next();
            Task task = groupTask.task1;
            Task task2 = groupTask.task2;
            ComponentName topComponent = task.getTopComponent();
            ComponentName topComponent2 = task2 != null ? task2.getTopComponent() : null;
            StringBuilder a5 = t.j.a(str, "    t1: (id=");
            a5.append(task.key.id);
            a5.append("; package=");
            if (topComponent != null) {
                str4 = topComponent.getPackageName() + ")";
            } else {
                str4 = "no package)";
            }
            a5.append(str4);
            a5.append(" t2: (id=");
            a5.append(task2 != null ? Integer.valueOf(task2.key.id) : "-1");
            a5.append("; package=");
            if (topComponent2 != null) {
                str5 = topComponent2.getPackageName() + ")";
            }
            a5.append(str5);
            printWriter.println(a5.toString());
        }
        printWriter.println(str + "  ]");
        ArrayList recentTasks = this.mSysUiProxy.getRecentTasks(Integer.MAX_VALUE, Process.myUserHandle().getIdentifier());
        printWriter.println(str + "  rawTasks=[");
        Iterator it2 = recentTasks.iterator();
        while (it2.hasNext()) {
            ActivityManager.RecentTaskInfo[] recentTaskInfoArr = ((H1.c) it2.next()).f533d;
            ActivityManager.RecentTaskInfo recentTaskInfo = recentTaskInfoArr[0];
            ActivityManager.RecentTaskInfo recentTaskInfo2 = recentTaskInfoArr.length > 1 ? recentTaskInfoArr[1] : null;
            ComponentName componentName = ((TaskInfo) recentTaskInfo).topActivity;
            ComponentName componentName2 = recentTaskInfo2 != null ? ((TaskInfo) recentTaskInfo2).topActivity : null;
            StringBuilder a6 = t.j.a(str, "    t1: (id=");
            a6.append(((TaskInfo) recentTaskInfo).taskId);
            a6.append("; package=");
            if (componentName != null) {
                str2 = componentName.getPackageName() + ")";
            } else {
                str2 = "no package)";
            }
            a6.append(str2);
            a6.append(" t2: (id=");
            a6.append(recentTaskInfo2 != null ? Integer.valueOf(((TaskInfo) recentTaskInfo2).taskId) : "-1");
            a6.append("; package=");
            if (componentName2 != null) {
                str3 = componentName2.getPackageName() + ")";
            } else {
                str3 = "no package)";
            }
            a6.append(str3);
            printWriter.println(a6.toString());
        }
        printWriter.println(str + "  ]");
    }

    public ArrayList getRunningTasks() {
        return this.mRunningTasks;
    }

    public void getTaskKeys(final int i4, final Consumer consumer) {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.i0
            @Override // java.lang.Runnable
            public final void run() {
                RecentTasksList.this.lambda$getTaskKeys$1(i4, consumer);
            }
        });
    }

    public synchronized int getTasks(final boolean z4, final Consumer consumer, final Predicate predicate) {
        final int i4 = this.mChangeId;
        if (this.mResultsUi.isValidForRequest(i4, z4)) {
            if (consumer != null) {
                this.mMainThreadExecutor.post(new RunnableC0530m0(0, consumer, (ArrayList) this.mResultsUi.stream().filter(predicate).map(new C0524k0(0)).collect(Collectors.toCollection(new C0527l0(0)))));
            }
            return i4;
        }
        this.mLoadingTasksInBackground = true;
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.n0
            @Override // java.lang.Runnable
            public final void run() {
                RecentTasksList.this.lambda$getTasks$4(i4, z4, consumer, predicate);
            }
        });
        return i4;
    }

    public boolean isLoadingTasksInBackground() {
        return this.mLoadingTasksInBackground;
    }

    public synchronized boolean isTaskListValid(int i4) {
        return this.mChangeId == i4;
    }

    public TaskLoadResult loadTasksInBackground(int i4, int i5, boolean z4) {
        ArrayList recentTasks = this.mSysUiProxy.getRecentTasks(i4, Process.myUserHandle().getIdentifier());
        Collections.reverse(recentTasks);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray() { // from class: com.android.quickstep.RecentTasksList.2
            {
                RecentTasksList.this = this;
            }

            @Override // android.util.SparseBooleanArray
            public boolean get(int i6) {
                if (indexOfKey(i6) < 0) {
                    put(i6, RecentTasksList.this.mKeyguardManager.isDeviceLocked(i6));
                }
                return super.get(i6);
            }
        };
        TaskLoadResult taskLoadResult = new TaskLoadResult(i5, z4, recentTasks.size());
        Iterator it = recentTasks.iterator();
        int i6 = 0;
        while (it.hasNext()) {
            H1.c cVar = (H1.c) it.next();
            if (DesktopTaskView.DESKTOP_IS_PROTO2_ENABLED && cVar.f535f == 3) {
                taskLoadResult.add(createDesktopTask(cVar));
            } else {
                ActivityManager.RecentTaskInfo[] recentTaskInfoArr = cVar.f533d;
                ActivityManager.RecentTaskInfo recentTaskInfo = recentTaskInfoArr[0];
                Task task = null;
                ActivityManager.RecentTaskInfo recentTaskInfo2 = recentTaskInfoArr.length > 1 ? recentTaskInfoArr[1] : null;
                Task.TaskKey taskKey = new Task.TaskKey(recentTaskInfo);
                Task task2 = z4 ? new Task(taskKey) : Task.from(taskKey, recentTaskInfo, sparseBooleanArray.get(taskKey.userId));
                task2.setLastSnapshotData(recentTaskInfo);
                if (recentTaskInfo2 != null) {
                    Task.TaskKey taskKey2 = new Task.TaskKey(recentTaskInfo2);
                    task = z4 ? new Task(taskKey2) : Task.from(taskKey2, recentTaskInfo2, sparseBooleanArray.get(taskKey2.userId));
                    task.setLastSnapshotData(recentTaskInfo2);
                } else if (i6 > 0) {
                    boolean z5 = (recentTaskInfo.baseIntent.getFlags() & QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED) != 0;
                    if (recentTaskInfo.isTopActivityTransparent && z5) {
                    }
                }
                if (recentTaskInfo.isVisible) {
                    i6++;
                }
                taskLoadResult.add(new GroupTask(task2, task, convertSplitBounds(cVar.f534e)));
            }
        }
        return taskLoadResult;
    }

    public void onRecentTasksChanged() {
        invalidateLoadedTasks();
    }

    public void registerRunningTasksListener(RecentsModel.RunningTasksListener runningTasksListener) {
        this.mRunningTasksListener = runningTasksListener;
    }

    public void unregisterRunningTasksListener() {
        this.mRunningTasksListener = null;
    }
}
