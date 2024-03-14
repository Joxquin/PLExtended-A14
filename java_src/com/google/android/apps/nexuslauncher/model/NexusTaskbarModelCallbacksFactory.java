package com.google.android.apps.nexuslauncher.model;

import T1.k;
import android.content.Context;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.launcher3.taskbar.TaskbarModelCallbacks;
import com.android.launcher3.taskbar.TaskbarModelCallbacksFactory;
import com.android.launcher3.taskbar.TaskbarView;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class NexusTaskbarModelCallbacksFactory extends TaskbarModelCallbacksFactory {
    public NexusTaskbarModelCallbacksFactory(Context context) {
        h.e(context, "context");
    }

    @Override // com.android.launcher3.taskbar.TaskbarModelCallbacksFactory
    public final TaskbarModelCallbacks create(TaskbarActivityContext activityContext, TaskbarView container) {
        h.e(activityContext, "activityContext");
        h.e(container, "container");
        return new k(activityContext, container);
    }
}
