package com.android.launcher3.taskbar;

import com.android.launcher3.util.ResourceBasedOverride;
/* loaded from: classes.dex */
public class TaskbarModelCallbacksFactory implements ResourceBasedOverride {
    public TaskbarModelCallbacks create(TaskbarActivityContext activityContext, TaskbarView container) {
        kotlin.jvm.internal.h.e(activityContext, "activityContext");
        kotlin.jvm.internal.h.e(container, "container");
        return new TaskbarModelCallbacks(activityContext, container);
    }
}
