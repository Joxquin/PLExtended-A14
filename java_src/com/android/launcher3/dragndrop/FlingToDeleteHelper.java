package com.android.launcher3.dragndrop;

import android.view.MotionEvent;
import android.view.VelocityTracker;
import com.android.launcher3.ButtonDropTarget;
import com.android.launcher3.Launcher;
/* loaded from: classes.dex */
public final class FlingToDeleteHelper {
    private ButtonDropTarget mDropTarget;
    private final Launcher mLauncher;
    private VelocityTracker mVelocityTracker;

    public FlingToDeleteHelper(Launcher launcher) {
        this.mLauncher = launcher;
    }

    public final ButtonDropTarget getDropTarget() {
        return this.mDropTarget;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.launcher3.util.FlingAnimation getFlingAnimation(com.android.launcher3.DropTarget.DragObject r10, com.android.launcher3.dragndrop.DragOptions r11) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.dragndrop.FlingToDeleteHelper.getFlingAnimation(com.android.launcher3.DropTarget$DragObject, com.android.launcher3.dragndrop.DragOptions):com.android.launcher3.util.FlingAnimation");
    }

    public final void recordMotionEvent(MotionEvent motionEvent) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
    }

    public final void releaseVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }
}
