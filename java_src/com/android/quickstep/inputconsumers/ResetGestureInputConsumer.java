package com.android.quickstep.inputconsumers;

import android.view.MotionEvent;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.TaskAnimationManager;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class ResetGestureInputConsumer implements InputConsumer {
    private final Supplier mActivityContextSupplier;
    private final TaskAnimationManager mTaskAnimationManager;

    public ResetGestureInputConsumer(TaskAnimationManager taskAnimationManager, Supplier supplier) {
        this.mTaskAnimationManager = taskAnimationManager;
        this.mActivityContextSupplier = supplier;
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return 256;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && this.mTaskAnimationManager.isRecentsAnimationRunning()) {
            TaskbarActivityContext taskbarActivityContext = (TaskbarActivityContext) this.mActivityContextSupplier.get();
            this.mTaskAnimationManager.finishRunningRecentsAnimation((taskbarActivityContext == null || taskbarActivityContext.isInApp()) ? false : true);
        }
    }
}
