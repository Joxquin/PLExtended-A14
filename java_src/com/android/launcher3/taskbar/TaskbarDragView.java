package com.android.launcher3.taskbar;

import android.graphics.drawable.Drawable;
import com.android.launcher3.dragndrop.DragView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class TaskbarDragView extends DragView {
    public TaskbarDragView(BaseTaskbarContext baseTaskbarContext, Drawable drawable, int i4, int i5, float f4, float f5, float f6) {
        super(baseTaskbarContext, drawable, i4, i5, f4, f5, f6);
    }

    public static /* synthetic */ void l(TaskbarDragView taskbarDragView, Runnable runnable) {
        if (runnable != null) {
            taskbarDragView.getClass();
            runnable.run();
        }
        ((BaseTaskbarContext) taskbarDragView.mActivity).getDragLayer().removeView(taskbarDragView);
    }

    @Override // com.android.launcher3.dragndrop.DragView
    public final void animateTo(int i4, int i5, final Runnable runnable, int i6) {
        animate().translationX(i4 - this.mRegistrationX).translationY(i5 - this.mRegistrationY).scaleX(this.mScaleOnDrop).scaleY(this.mScaleOnDrop).withEndAction(new Runnable() { // from class: com.android.launcher3.taskbar.e0
            @Override // java.lang.Runnable
            public final void run() {
                TaskbarDragView.l(TaskbarDragView.this, runnable);
            }
        }).setDuration(Math.max(i6, getResources().getInteger(R.integer.config_dropAnimMinDuration))).start();
    }
}
