package com.android.launcher3.dragndrop;

import J0.b;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.R0;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.DragDriver;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Optional;
import java.util.function.Predicate;
import y0.e;
/* loaded from: classes.dex */
public abstract class DragController implements DragDriver.EventListener, TouchController {
    protected final ActivityContext mActivity;
    protected DropTarget.DragObject mDragObject;
    protected boolean mIsInPreDrag;
    protected DropTarget mLastDropTarget;
    private int mLastTouchClassification;
    protected DragOptions mOptions;
    private final Rect mRectTemp = new Rect();
    private final int[] mCoordinatesTemp = new int[2];
    protected DragDriver mDragDriver = null;
    protected final Point mMotionDown = new Point();
    protected final Point mLastTouch = new Point();
    protected final Point mTmpPoint = new Point();
    private final ArrayList mDropTargets = new ArrayList();
    private final ArrayList mListeners = new ArrayList();
    protected int mDistanceSinceScroll = 0;

    /* loaded from: classes.dex */
    public interface DragListener {
        void onDragEnd();

        void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions);
    }

    public DragController(ActivityContext activityContext) {
        this.mActivity = activityContext;
    }

    private void checkTouchMove(DropTarget dropTarget) {
        if (dropTarget != null) {
            DropTarget dropTarget2 = this.mLastDropTarget;
            if (dropTarget2 != dropTarget) {
                if (dropTarget2 != null) {
                    dropTarget2.onDragExit(this.mDragObject);
                }
                dropTarget.onDragEnter(this.mDragObject);
            }
            dropTarget.onDragOver(this.mDragObject);
        } else {
            DropTarget dropTarget3 = this.mLastDropTarget;
            if (dropTarget3 != null) {
                dropTarget3.onDragExit(this.mDragObject);
            }
        }
        this.mLastDropTarget = dropTarget;
    }

    private DropTarget findDropTarget(int i4, int i5, int[] iArr) {
        DropTarget.DragObject dragObject = this.mDragObject;
        dragObject.f4429x = i4;
        dragObject.f4430y = i5;
        ArrayList arrayList = this.mDropTargets;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            DropTarget dropTarget = (DropTarget) arrayList.get(size);
            if (dropTarget.isDropEnabled()) {
                Rect rect = this.mRectTemp;
                dropTarget.getHitRectRelativeToDragLayer(rect);
                if (rect.contains(i4, i5)) {
                    iArr[0] = i4;
                    iArr[1] = i5;
                    this.mActivity.getDragLayer().mapCoordInSelfToDescendant((View) dropTarget, iArr);
                    return dropTarget;
                }
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
        return getDefaultDropTarget(iArr);
    }

    public final void addDragListener(DragListener dragListener) {
        this.mListeners.add(dragListener);
    }

    public void addDropTarget(DropTarget dropTarget) {
        this.mDropTargets.add(dropTarget);
    }

    public final void animateDragViewToOriginalPosition(final R0 r02, final View view, int i4) {
        Runnable runnable = new Runnable() { // from class: com.android.launcher3.dragndrop.DragController.1
            @Override // java.lang.Runnable
            public final void run() {
                View view2 = view;
                if (view2 != null) {
                    view2.setVisibility(0);
                }
                Runnable runnable2 = r02;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        DragView dragView = this.mDragObject.dragView;
        Point point = this.mMotionDown;
        dragView.animateTo(point.x, point.y, runnable, i4);
    }

    public void callOnDragEnd() {
        DragOptions.PreDragCondition preDragCondition;
        if (this.mIsInPreDrag && (preDragCondition = this.mOptions.preDragCondition) != null) {
            preDragCondition.onPreDragEnd(this.mDragObject, false);
        }
        this.mIsInPreDrag = false;
        this.mOptions = null;
        Iterator it = new ArrayList(this.mListeners).iterator();
        while (it.hasNext()) {
            ((DragListener) it.next()).onDragEnd();
        }
    }

    public void callOnDragStart() {
        DragOptions.PreDragCondition preDragCondition = this.mOptions.preDragCondition;
        if (preDragCondition != null) {
            preDragCondition.onPreDragEnd(this.mDragObject, true);
        }
        this.mIsInPreDrag = false;
        if (this.mOptions.preDragEndScale != 0.0f) {
            this.mDragObject.dragView.animate().scaleX(this.mOptions.preDragEndScale).scaleY(this.mOptions.preDragEndScale).setInterpolator(e.f12937a).setDuration(500L).start();
        }
        this.mDragObject.dragView.onDragStart();
        Iterator it = new ArrayList(this.mListeners).iterator();
        while (it.hasNext()) {
            ((DragListener) it.next()).onDragStart(this.mDragObject, this.mOptions);
        }
    }

    public final void cancelDrag() {
        if (isDragging()) {
            DropTarget dropTarget = this.mLastDropTarget;
            if (dropTarget != null) {
                dropTarget.onDragExit(this.mDragObject);
            }
            DropTarget.DragObject dragObject = this.mDragObject;
            dragObject.deferDragViewCleanupPostAnimation = false;
            dragObject.cancelled = true;
            dragObject.dragComplete = true;
            if (!this.mIsInPreDrag) {
                exitDrag();
                DropTarget.DragObject dragObject2 = this.mDragObject;
                dragObject2.deferDragViewCleanupPostAnimation = false;
                dragObject2.dragSource.onDropCompleted(null, dragObject2, false);
            }
        }
        endDrag();
    }

    public final void completeAccessibleDrag(int[] iArr) {
        int i4 = iArr[0];
        int i5 = iArr[1];
        int[] iArr2 = this.mCoordinatesTemp;
        DropTarget findDropTarget = findDropTarget(i4, i5, iArr2);
        DropTarget.DragObject dragObject = this.mDragObject;
        dragObject.f4429x = iArr2[0];
        dragObject.f4430y = iArr2[1];
        checkTouchMove(findDropTarget);
        findDropTarget.prepareAccessibilityDrop();
        drop(findDropTarget, null);
        endDrag();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drop(com.android.launcher3.DropTarget r5, com.android.launcher3.util.FlingAnimation r6) {
        /*
            r4 = this;
            com.android.launcher3.DropTarget$DragObject r0 = r4.mDragObject
            int[] r1 = r4.mCoordinatesTemp
            r2 = 0
            r3 = r1[r2]
            r0.f4429x = r3
            r3 = 1
            r1 = r1[r3]
            r0.f4430y = r1
            com.android.launcher3.DropTarget r1 = r4.mLastDropTarget
            if (r5 == r1) goto L20
            if (r1 == 0) goto L17
            r1.onDragExit(r0)
        L17:
            r4.mLastDropTarget = r5
            if (r5 == 0) goto L20
            com.android.launcher3.DropTarget$DragObject r0 = r4.mDragObject
            r5.onDragEnter(r0)
        L20:
            com.android.launcher3.DropTarget$DragObject r0 = r4.mDragObject
            r0.dragComplete = r3
            boolean r1 = r4.mIsInPreDrag
            if (r1 == 0) goto L2e
            if (r5 == 0) goto L2d
            r5.onDragExit(r0)
        L2d:
            return
        L2e:
            if (r5 == 0) goto L49
            r5.onDragExit(r0)
            com.android.launcher3.DropTarget$DragObject r0 = r4.mDragObject
            boolean r0 = r5.acceptDrop(r0)
            if (r0 == 0) goto L49
            if (r6 == 0) goto L41
            r6.run()
            goto L4a
        L41:
            com.android.launcher3.DropTarget$DragObject r6 = r4.mDragObject
            com.android.launcher3.dragndrop.DragOptions r0 = r4.mOptions
            r5.onDrop(r6, r0)
            goto L4a
        L49:
            r3 = r2
        L4a:
            boolean r6 = r5 instanceof android.view.View
            if (r6 == 0) goto L51
            android.view.View r5 = (android.view.View) r5
            goto L52
        L51:
            r5 = 0
        L52:
            if (r3 != 0) goto L5b
            r4.exitDrag()
            com.android.launcher3.DropTarget$DragObject r6 = r4.mDragObject
            r6.deferDragViewCleanupPostAnimation = r2
        L5b:
            com.android.launcher3.DropTarget$DragObject r4 = r4.mDragObject
            com.android.launcher3.DragSource r6 = r4.dragSource
            r6.onDropCompleted(r5, r4, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.dragndrop.DragController.drop(com.android.launcher3.DropTarget, com.android.launcher3.util.FlingAnimation):void");
    }

    public void endDrag() {
        boolean z4;
        if (isDragging()) {
            this.mDragDriver = null;
            DropTarget.DragObject dragObject = this.mDragObject;
            DragView dragView = dragObject.dragView;
            if (dragView != null) {
                z4 = dragObject.deferDragViewCleanupPostAnimation;
                if (!z4) {
                    dragView.remove();
                } else if (this.mIsInPreDrag) {
                    animateDragViewToOriginalPosition(null, null, -1);
                }
                this.mDragObject.dragView.clearAnimation();
                this.mDragObject.dragView = null;
            } else {
                z4 = false;
            }
            if (z4) {
                return;
            }
            callOnDragEnd();
        }
    }

    public boolean endWithFlingAnimation() {
        return false;
    }

    public abstract void exitDrag();

    public final void forceTouchMove() {
        Point point = this.mLastTouch;
        int i4 = point.x;
        int i5 = point.y;
        int[] iArr = this.mCoordinatesTemp;
        DropTarget findDropTarget = findDropTarget(i4, i5, iArr);
        DropTarget.DragObject dragObject = this.mDragObject;
        dragObject.f4429x = iArr[0];
        dragObject.f4430y = iArr[1];
        checkTouchMove(findDropTarget);
    }

    public Point getClampedDragLayerPos(float f4, float f5) {
        BaseDragLayer dragLayer = this.mActivity.getDragLayer();
        Rect rect = this.mRectTemp;
        dragLayer.getLocalVisibleRect(rect);
        Point point = this.mTmpPoint;
        point.x = (int) Math.max(rect.left, Math.min(f4, rect.right - 1));
        point.y = (int) Math.max(rect.top, Math.min(f5, rect.bottom - 1));
        return point;
    }

    public abstract DropTarget getDefaultDropTarget(int[] iArr);

    public final float getDistanceDragged() {
        return this.mDistanceSinceScroll;
    }

    public final Optional getLogInstanceId() {
        return Optional.ofNullable(this.mDragObject).map(new b());
    }

    public float getX(MotionEvent motionEvent) {
        return motionEvent.getX();
    }

    public float getY(MotionEvent motionEvent) {
        return motionEvent.getY();
    }

    public final void handleMoveEvent(int i4, int i5) {
        DragOptions.PreDragCondition preDragCondition;
        this.mDragObject.dragView.move(i4, i5);
        int[] iArr = this.mCoordinatesTemp;
        DropTarget findDropTarget = findDropTarget(i4, i5, iArr);
        DropTarget.DragObject dragObject = this.mDragObject;
        dragObject.f4429x = iArr[0];
        dragObject.f4430y = iArr[1];
        checkTouchMove(findDropTarget);
        Point point = this.mLastTouch;
        this.mDistanceSinceScroll = (int) (Math.hypot(point.x - i4, point.y - i5) + this.mDistanceSinceScroll);
        point.set(i4, i5);
        int i6 = this.mDistanceSinceScroll;
        if (Utilities.ATLEAST_Q && this.mLastTouchClassification == 2) {
            i6 /= 3;
        }
        if (this.mIsInPreDrag && (preDragCondition = this.mOptions.preDragCondition) != null && preDragCondition.shouldStartDrag(i6)) {
            callOnDragStart();
        }
    }

    public boolean isDragging() {
        DragOptions dragOptions;
        return this.mDragDriver != null || ((dragOptions = this.mOptions) != null && dragOptions.isAccessibleDrag);
    }

    public final void onAppsRemoved(Predicate predicate) {
        DropTarget.DragObject dragObject = this.mDragObject;
        if (dragObject != null) {
            ItemInfo itemInfo = dragObject.dragInfo;
            if ((itemInfo instanceof WorkspaceItemInfo) && predicate.test(itemInfo)) {
                cancelDrag();
            }
        }
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        DragOptions dragOptions = this.mOptions;
        if (dragOptions == null || !dragOptions.isAccessibleDrag) {
            Point clampedDragLayerPos = getClampedDragLayerPos(getX(motionEvent), getY(motionEvent));
            this.mLastTouch.set(clampedDragLayerPos.x, clampedDragLayerPos.y);
            if (motionEvent.getAction() == 0) {
                this.mMotionDown.set(clampedDragLayerPos.x, clampedDragLayerPos.y);
            }
            if (Utilities.ATLEAST_Q) {
                this.mLastTouchClassification = motionEvent.getClassification();
            }
            DragDriver dragDriver = this.mDragDriver;
            return dragDriver != null && dragDriver.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerTouchEvent(MotionEvent motionEvent) {
        DragDriver dragDriver = this.mDragDriver;
        return dragDriver != null && dragDriver.onTouchEvent(motionEvent);
    }

    public final void onDriverDragEnd(float f4, float f5) {
        if (!endWithFlingAnimation()) {
            drop(findDropTarget((int) f4, (int) f5, this.mCoordinatesTemp), null);
        }
        endDrag();
    }

    public final void removeDragListener(DragListener dragListener) {
        this.mListeners.remove(dragListener);
    }

    public final void removeDropTarget(DropTarget dropTarget) {
        this.mDropTargets.remove(dropTarget);
    }

    public abstract DragView startDrag(Drawable drawable, View view, DraggableView draggableView, int i4, int i5, DragSource dragSource, ItemInfo itemInfo, Rect rect, float f4, float f5, DragOptions dragOptions);

    public final DragView startDrag(Drawable drawable, DraggableView draggableView, int i4, int i5, DragSource dragSource, ItemInfo itemInfo, Rect rect, float f4, float f5, DragOptions dragOptions) {
        return startDrag(drawable, null, draggableView, i4, i5, dragSource, itemInfo, rect, f4, f5, dragOptions);
    }

    public final DragView startDrag(View view, DraggableView draggableView, int i4, int i5, DragSource dragSource, ItemInfo itemInfo, Rect rect, float f4, float f5, DragOptions dragOptions) {
        return startDrag(null, view, draggableView, i4, i5, dragSource, itemInfo, rect, f4, f5, dragOptions);
    }
}
