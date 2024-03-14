package com.android.quickstep.util;

import com.android.launcher3.util.SplitConfigurationOptions$SplitBounds;
import com.android.systemui.shared.recents.model.Task;
/* loaded from: classes.dex */
public class GroupTask {
    public final SplitConfigurationOptions$SplitBounds mSplitBounds;
    public final Task task1;
    public final Task task2;
    public final int taskViewType;

    public GroupTask(Task task) {
        this(task, null, null);
    }

    public boolean containsTask(int i4) {
        Task task;
        return this.task1.key.id == i4 || ((task = this.task2) != null && task.key.id == i4);
    }

    public GroupTask copy() {
        Task task = new Task(this.task1);
        Task task2 = this.task2;
        return new GroupTask(task, task2 != null ? new Task(task2) : null, this.mSplitBounds);
    }

    public boolean hasMultipleTasks() {
        return this.task2 != null;
    }

    public GroupTask(Task task, Task task2, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds) {
        this(task, task2, splitConfigurationOptions$SplitBounds, task2 != null ? 2 : 1);
    }

    public GroupTask(Task task, Task task2, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds, int i4) {
        this.task1 = task;
        this.task2 = task2;
        this.mSplitBounds = splitConfigurationOptions$SplitBounds;
        this.taskViewType = i4;
    }
}
