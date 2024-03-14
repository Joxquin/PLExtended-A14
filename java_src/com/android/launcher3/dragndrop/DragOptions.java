package com.android.launcher3.dragndrop;

import android.graphics.Point;
import com.android.launcher3.DropTarget;
/* loaded from: classes.dex */
public final class DragOptions {
    public boolean isFlingToDelete;
    public float preDragEndScale;
    public boolean isAccessibleDrag = false;
    public boolean isKeyboardDrag = false;
    public Point simulatedDndStartPoint = null;
    public PreDragCondition preDragCondition = null;

    /* loaded from: classes.dex */
    public interface PreDragCondition {
        default Point getDragOffset() {
            return new Point(0, 0);
        }

        void onPreDragEnd(DropTarget.DragObject dragObject, boolean z4);

        void onPreDragStart(DropTarget.DragObject dragObject);

        boolean shouldStartDrag(double d4);
    }
}
