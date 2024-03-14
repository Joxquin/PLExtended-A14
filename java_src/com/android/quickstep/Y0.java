package com.android.quickstep;

import com.android.quickstep.RemoteTargetGluer;
import com.android.quickstep.util.TaskViewSimulator;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class Y0 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        TaskViewSimulator taskViewSimulator;
        taskViewSimulator = ((RemoteTargetGluer.RemoteTargetHandle) obj).getTaskViewSimulator();
        return taskViewSimulator;
    }
}
