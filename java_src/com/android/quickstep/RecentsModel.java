package com.android.quickstep;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.os.UserHandle;
import com.android.launcher3.icons.IconProvider;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.quickstep.util.GroupTask;
import com.android.quickstep.util.TaskVisualsChangeListener;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.function.Consumer;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public class RecentsModel implements IconProvider.IconChangeListener, TaskStackChangeListener, TaskVisualsChangeListener {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new M0());
    private static final Executor RECENTS_MODEL_EXECUTOR = Executors.newSingleThreadExecutor(new Executors.SimpleThreadFactory("TaskThumbnailIconCache-"));
    private final Context mContext;
    private final TaskIconCache mIconCache;
    private final RecentTasksList mTaskList;
    private final TaskThumbnailCache mThumbnailCache;
    private final List mThumbnailChangeListeners = new ArrayList();

    /* loaded from: classes.dex */
    public interface RunningTasksListener {
        void onRunningTasksChanged();
    }

    private RecentsModel(Context context) {
        this.mContext = context;
        LooperExecutor looperExecutor = com.android.launcher3.util.Executors.MAIN_EXECUTOR;
        this.mTaskList = new RecentTasksList(looperExecutor, (KeyguardManager) context.getSystemService(KeyguardManager.class), (SystemUiProxy) SystemUiProxy.INSTANCE.get(context));
        IconProvider iconProvider = new IconProvider(context);
        Executor executor = RECENTS_MODEL_EXECUTOR;
        TaskIconCache taskIconCache = new TaskIconCache(context, executor, iconProvider);
        this.mIconCache = taskIconCache;
        taskIconCache.registerTaskVisualsChangeListener(this);
        this.mThumbnailCache = new TaskThumbnailCache(context, executor);
        TaskStackChangeListeners.getInstance().registerTaskStackListener(this);
        iconProvider.registerIconChangeListener(this, looperExecutor.getHandler());
    }

    public static /* synthetic */ RecentsModel a(Context context) {
        return new RecentsModel(context);
    }

    public static /* synthetic */ void lambda$isTaskRemoved$0(int i4, Consumer consumer, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((GroupTask) it.next()).containsTask(i4)) {
                consumer.accept(Boolean.FALSE);
                return;
            }
        }
        consumer.accept(Boolean.TRUE);
    }

    public /* synthetic */ void lambda$onTaskStackChangedBackground$1(int i4, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            GroupTask groupTask = (GroupTask) it.next();
            if (!groupTask.containsTask(i4)) {
                this.mThumbnailCache.updateThumbnailInCache(groupTask.task1);
                this.mThumbnailCache.updateThumbnailInCache(groupTask.task2);
            }
        }
    }

    public void addThumbnailChangeListener(TaskVisualsChangeListener taskVisualsChangeListener) {
        this.mThumbnailChangeListeners.add(taskVisualsChangeListener);
    }

    public void dump(String str, PrintWriter printWriter) {
        printWriter.println(str + "RecentsModel:");
        this.mTaskList.dump("  ", printWriter);
    }

    public TaskIconCache getIconCache() {
        return this.mIconCache;
    }

    public ArrayList getRunningTasks() {
        return this.mTaskList.getRunningTasks();
    }

    public int getTasks(Consumer consumer) {
        return this.mTaskList.getTasks(false, consumer, RecentsFilterState.DEFAULT_FILTER);
    }

    public TaskThumbnailCache getThumbnailCache() {
        return this.mThumbnailCache;
    }

    public boolean isLoadingTasksInBackground() {
        return this.mTaskList.isLoadingTasksInBackground();
    }

    public boolean isTaskListValid(int i4) {
        return this.mTaskList.isTaskListValid(i4);
    }

    public void isTaskRemoved(int i4, Consumer consumer, Predicate predicate) {
        this.mTaskList.onRecentTasksChanged();
        this.mTaskList.getTasks(true, new N0(i4, consumer), predicate);
    }

    @Override // com.android.launcher3.icons.IconProvider.IconChangeListener
    public void onAppIconChanged(String str, UserHandle userHandle) {
        this.mIconCache.invalidateCacheEntries(str, userHandle);
        for (int size = this.mThumbnailChangeListeners.size() - 1; size >= 0; size--) {
            ((TaskVisualsChangeListener) this.mThumbnailChangeListeners.get(size)).onTaskIconChanged(str, userHandle);
        }
    }

    @Override // com.android.launcher3.icons.IconProvider.IconChangeListener
    public void onSystemIconStateChanged(String str) {
        this.mIconCache.clearCache();
    }

    @Override // com.android.quickstep.util.TaskVisualsChangeListener
    public void onTaskIconChanged(int i4) {
        for (TaskVisualsChangeListener taskVisualsChangeListener : this.mThumbnailChangeListeners) {
            taskVisualsChangeListener.onTaskIconChanged(i4);
        }
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public void onTaskRemoved(int i4) {
        Task.TaskKey taskKey = new Task.TaskKey(i4, 0, new Intent(), null, 0, 0L);
        this.mThumbnailCache.remove(taskKey);
        this.mIconCache.onTaskRemoved(taskKey);
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public boolean onTaskSnapshotChanged(int i4, ThumbnailData thumbnailData) {
        this.mThumbnailCache.updateTaskSnapShot(i4, thumbnailData);
        for (int size = this.mThumbnailChangeListeners.size() - 1; size >= 0; size--) {
            Task onTaskThumbnailChanged = ((TaskVisualsChangeListener) this.mThumbnailChangeListeners.get(size)).onTaskThumbnailChanged(i4, thumbnailData);
            if (onTaskThumbnailChanged != null) {
                onTaskThumbnailChanged.thumbnail = thumbnailData;
            }
        }
        return true;
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public void onTaskStackChangedBackground() {
        if (this.mThumbnailCache.isPreloadingEnabled() && TaskUtils.checkCurrentOrManagedUserId(Process.myUserHandle().getIdentifier(), this.mContext)) {
            ActivityManager.RunningTaskInfo runningTask = ActivityManagerWrapper.getInstance().getRunningTask();
            this.mTaskList.getTaskKeys(this.mThumbnailCache.getCacheSize(), new N0(this, runningTask != null ? runningTask.id : -1));
        }
    }

    public void onTrimMemory(int i4) {
        if (i4 == 20) {
            this.mThumbnailCache.getHighResLoadingState().setVisible(false);
        }
        if (i4 == 15) {
            this.mThumbnailCache.clear();
            this.mIconCache.clearCache();
        }
    }

    public void registerRunningTasksListener(RunningTasksListener runningTasksListener) {
        this.mTaskList.registerRunningTasksListener(runningTasksListener);
    }

    public void removeThumbnailChangeListener(TaskVisualsChangeListener taskVisualsChangeListener) {
        this.mThumbnailChangeListeners.remove(taskVisualsChangeListener);
    }

    public void unregisterRunningTasksListener() {
        this.mTaskList.unregisterRunningTasksListener();
    }

    public int getTasks(Consumer consumer, Predicate predicate) {
        return this.mTaskList.getTasks(false, consumer, predicate);
    }
}
