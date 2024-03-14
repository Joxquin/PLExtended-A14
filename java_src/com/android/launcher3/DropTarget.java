package com.android.launcher3;

import android.content.Context;
import android.graphics.Rect;
import com.android.launcher3.DropTarget;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.folder.FolderNameProvider;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;
/* loaded from: classes.dex */
public interface DropTarget {

    /* loaded from: classes.dex */
    public final class DragObject {
        public FolderNameProvider folderNameProvider;
        public DragViewStateAnnouncer stateAnnouncer;

        /* renamed from: x  reason: collision with root package name */
        public int f4429x = -1;

        /* renamed from: y  reason: collision with root package name */
        public int f4430y = -1;
        public int xOffset = -1;
        public int yOffset = -1;
        public boolean dragComplete = false;
        public DragView dragView = null;
        public ItemInfo dragInfo = null;
        public ItemInfo originalDragInfo = null;
        public DragSource dragSource = null;
        public boolean cancelled = false;
        public boolean deferDragViewCleanupPostAnimation = true;
        public DraggableView originalView = null;
        public final InstanceId logInstanceId = new InstanceIdSequence().newInstanceId();

        public DragObject(final Context context) {
            Executors.MODEL_EXECUTOR.post(new Runnable() { // from class: com.android.launcher3.t
                @Override // java.lang.Runnable
                public final void run() {
                    DropTarget.DragObject dragObject = DropTarget.DragObject.this;
                    Context context2 = context;
                    dragObject.getClass();
                    dragObject.folderNameProvider = FolderNameProvider.newInstance(context2);
                }
            });
        }

        public final float[] getVisualCenter(float[] fArr) {
            if (fArr == null) {
                fArr = new float[2];
            }
            Rect dragRegion = this.dragView.getDragRegion();
            int i4 = (this.f4429x - this.xOffset) - dragRegion.left;
            int i5 = (this.f4430y - this.yOffset) - dragRegion.top;
            fArr[0] = (dragRegion.width() / 2) + i4;
            fArr[1] = (dragRegion.height() / 2) + i5;
            return fArr;
        }
    }

    boolean acceptDrop(DragObject dragObject);

    void getHitRectRelativeToDragLayer(Rect rect);

    boolean isDropEnabled();

    void onDragEnter(DragObject dragObject);

    void onDragExit(DragObject dragObject);

    void onDragOver(DragObject dragObject);

    void onDrop(DragObject dragObject, DragOptions dragOptions);

    void prepareAccessibilityDrop();
}
