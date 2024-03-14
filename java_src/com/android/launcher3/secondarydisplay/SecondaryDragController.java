package com.android.launcher3.secondarydisplay;

import J0.g;
import V0.k;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragDriver;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class SecondaryDragController extends DragController {
    public SecondaryDragController(SecondaryDisplayLauncher secondaryDisplayLauncher) {
        super(secondaryDisplayLauncher);
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final void exitDrag() {
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final DropTarget getDefaultDropTarget(int[] iArr) {
        return new DropTarget() { // from class: com.android.launcher3.secondarydisplay.SecondaryDragController.1
            @Override // com.android.launcher3.DropTarget
            public final boolean acceptDrop(DropTarget.DragObject dragObject) {
                return true;
            }

            @Override // com.android.launcher3.DropTarget
            public final void getHitRectRelativeToDragLayer(Rect rect) {
            }

            @Override // com.android.launcher3.DropTarget
            public final boolean isDropEnabled() {
                return true;
            }

            @Override // com.android.launcher3.DropTarget
            public final void onDragEnter(DropTarget.DragObject dragObject) {
                SecondaryDragController secondaryDragController = SecondaryDragController.this;
                if (secondaryDragController.getDistanceDragged() > ((SecondaryDisplayLauncher) ((DragController) secondaryDragController).mActivity).getResources().getDimensionPixelSize(R.dimen.drag_distanceThreshold)) {
                    ((SecondaryDisplayLauncher) ((DragController) secondaryDragController).mActivity).showAppDrawer(false);
                    AbstractFloatingView.closeAllOpenViews(((DragController) secondaryDragController).mActivity);
                }
            }

            @Override // com.android.launcher3.DropTarget
            public final void onDragExit(DropTarget.DragObject dragObject) {
            }

            @Override // com.android.launcher3.DropTarget
            public final void onDragOver(DropTarget.DragObject dragObject) {
            }

            @Override // com.android.launcher3.DropTarget
            public final void onDrop(DropTarget.DragObject dragObject, DragOptions dragOptions) {
                ((SecondaryDragLayer) ((SecondaryDisplayLauncher) ((DragController) SecondaryDragController.this).mActivity).getDragLayer()).getPinnedAppsAdapter().addPinnedApp(dragObject.dragInfo);
                dragObject.dragView.remove();
            }

            @Override // com.android.launcher3.DropTarget
            public final void prepareAccessibilityDrop() {
            }
        };
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final DragView startDrag(Drawable drawable, View view, DraggableView draggableView, int i4, int i5, DragSource dragSource, ItemInfo itemInfo, Rect rect, float f4, float f5, DragOptions dragOptions) {
        SecondaryDragView secondaryDragView;
        DropTarget.DragObject dragObject;
        Point point;
        Point point2;
        SecondaryDisplayLauncher secondaryDisplayLauncher = (SecondaryDisplayLauncher) this.mActivity;
        secondaryDisplayLauncher.hideKeyboard();
        this.mOptions = dragOptions;
        Point point3 = dragOptions.simulatedDndStartPoint;
        Point point4 = this.mLastTouch;
        Point point5 = this.mMotionDown;
        if (point3 != null) {
            int i6 = point3.x;
            point5.x = i6;
            point4.x = i6;
            int i7 = point3.y;
            point5.y = i7;
            point4.y = i7;
        }
        int i8 = point5.x - i4;
        int i9 = point5.y - i5;
        int i10 = rect == null ? 0 : rect.left;
        int i11 = rect == null ? 0 : rect.top;
        this.mLastDropTarget = null;
        DropTarget.DragObject dragObject2 = new DropTarget.DragObject(secondaryDisplayLauncher.getApplicationContext());
        this.mDragObject = dragObject2;
        dragObject2.originalView = draggableView;
        DragOptions.PreDragCondition preDragCondition = this.mOptions.preDragCondition;
        this.mIsInPreDrag = (preDragCondition == null || preDragCondition.shouldStartDrag(0.0d)) ? false : true;
        float dimensionPixelSize = this.mIsInPreDrag ? secondaryDisplayLauncher.getResources().getDimensionPixelSize(R.dimen.pre_drag_view_scale) : 0.0f;
        DropTarget.DragObject dragObject3 = this.mDragObject;
        if (drawable != null) {
            secondaryDragView = new SecondaryDragView(secondaryDisplayLauncher, drawable, i8, i9, f4, f5, dimensionPixelSize);
            dragObject = dragObject3;
            point = point4;
            point2 = point5;
        } else {
            dragObject = dragObject3;
            point = point4;
            point2 = point5;
            secondaryDragView = new SecondaryDragView(secondaryDisplayLauncher, view, view.getMeasuredWidth(), view.getMeasuredHeight(), i8, i9, f4, f5, dimensionPixelSize);
        }
        dragObject.dragView = secondaryDragView;
        Executors.MODEL_EXECUTOR.getHandler().postAtFrontOfQueue(new g(secondaryDragView, itemInfo));
        DropTarget.DragObject dragObject4 = this.mDragObject;
        dragObject4.dragComplete = false;
        dragObject4.xOffset = point2.x - (i4 + i10);
        dragObject4.yOffset = point2.y - (i5 + i11);
        this.mDragDriver = DragDriver.create(this, this.mOptions, new k());
        if (!this.mOptions.isAccessibleDrag) {
            this.mDragObject.stateAnnouncer = DragViewStateAnnouncer.createFor(secondaryDragView);
        }
        DropTarget.DragObject dragObject5 = this.mDragObject;
        dragObject5.dragSource = dragSource;
        dragObject5.dragInfo = itemInfo;
        dragObject5.originalDragInfo = itemInfo.makeShallowCopy();
        DragOptions.PreDragCondition preDragCondition2 = this.mOptions.preDragCondition;
        if (preDragCondition2 != null) {
            secondaryDragView.setHasDragOffset((preDragCondition2.getDragOffset().x == 0 && this.mOptions.preDragCondition.getDragOffset().y == 0) ? false : true);
        }
        if (rect != null) {
            secondaryDragView.setDragRegion(new Rect(rect));
        }
        secondaryDisplayLauncher.getDragLayer().performHapticFeedback(0);
        Point point6 = point;
        secondaryDragView.show(point6.x, point6.y);
        this.mDistanceSinceScroll = 0;
        if (this.mIsInPreDrag) {
            DragOptions.PreDragCondition preDragCondition3 = this.mOptions.preDragCondition;
            if (preDragCondition3 != null) {
                preDragCondition3.onPreDragStart(this.mDragObject);
            }
        } else {
            callOnDragStart();
        }
        handleMoveEvent(point6.x, point6.y);
        return secondaryDragView;
    }
}
