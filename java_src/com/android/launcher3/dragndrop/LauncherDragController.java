package com.android.launcher3.dragndrop;

import J0.g;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.FlingToDeleteHelper;
import com.android.launcher3.dragndrop.LauncherDragController;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.FlingAnimation;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import java.util.Objects;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class LauncherDragController extends DragController {
    private final FlingToDeleteHelper mFlingToDeleteHelper;

    public LauncherDragController(Launcher launcher) {
        super(launcher);
        this.mFlingToDeleteHelper = new FlingToDeleteHelper(launcher);
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final void endDrag() {
        super.endDrag();
        this.mFlingToDeleteHelper.releaseVelocityTracker();
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final boolean endWithFlingAnimation() {
        DropTarget.DragObject dragObject = this.mDragObject;
        DragOptions dragOptions = this.mOptions;
        FlingToDeleteHelper flingToDeleteHelper = this.mFlingToDeleteHelper;
        FlingAnimation flingAnimation = flingToDeleteHelper.getFlingAnimation(dragObject, dragOptions);
        if (flingAnimation != null) {
            drop(flingToDeleteHelper.getDropTarget(), flingAnimation);
            return true;
        }
        return false;
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final void exitDrag() {
        Launcher launcher = (Launcher) this.mActivity;
        if (launcher.isInState(LauncherState.EDIT_MODE)) {
            return;
        }
        launcher.getStateManager().goToState$1(LauncherState.NORMAL);
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final DropTarget getDefaultDropTarget(int[] iArr) {
        ActivityContext activityContext = this.mActivity;
        ((Launcher) activityContext).getDragLayer().mapCoordInSelfToDescendant((View) ((Launcher) activityContext).getWorkspace(), iArr);
        return ((Launcher) activityContext).getWorkspace();
    }

    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v4 */
    @Override // com.android.launcher3.dragndrop.DragController
    public final DragView startDrag(Drawable drawable, View view, DraggableView draggableView, int i4, int i5, DragSource dragSource, ItemInfo itemInfo, Rect rect, float f4, float f5, DragOptions dragOptions) {
        DropTarget.DragObject dragObject;
        Point point;
        LauncherDragView launcherDragView;
        Point point2;
        Launcher launcher;
        ?? r15;
        ActivityContext activityContext = this.mActivity;
        Launcher launcher2 = (Launcher) activityContext;
        launcher2.hideKeyboard();
        AbstractFloatingView.closeOpenViews(activityContext, false, 64);
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
        DropTarget.DragObject dragObject2 = new DropTarget.DragObject(launcher2.getApplicationContext());
        this.mDragObject = dragObject2;
        dragObject2.originalView = draggableView;
        DragOptions.PreDragCondition preDragCondition = this.mOptions.preDragCondition;
        this.mIsInPreDrag = (preDragCondition == null || preDragCondition.shouldStartDrag(0.0d)) ? false : true;
        float dimensionPixelSize = this.mIsInPreDrag ? launcher2.getResources().getDimensionPixelSize(R.dimen.pre_drag_view_scale) : 0.0f;
        DropTarget.DragObject dragObject3 = this.mDragObject;
        if (drawable != null) {
            dragObject = dragObject3;
            point = point5;
            launcherDragView = new LauncherDragView(launcher2, drawable, i8, i9, f4, f5, dimensionPixelSize);
            point2 = point4;
            launcher = launcher2;
            r15 = 0;
        } else {
            dragObject = dragObject3;
            point = point5;
            point2 = point4;
            launcher = launcher2;
            r15 = 0;
            launcherDragView = new LauncherDragView(launcher2, view, view.getMeasuredWidth(), view.getMeasuredHeight(), i8, i9, f4, f5, dimensionPixelSize);
        }
        dragObject.dragView = launcherDragView;
        Executors.MODEL_EXECUTOR.getHandler().postAtFrontOfQueue(new g(launcherDragView, itemInfo));
        DropTarget.DragObject dragObject4 = this.mDragObject;
        dragObject4.dragComplete = r15;
        dragObject4.xOffset = point.x - (i4 + i10);
        dragObject4.yOffset = point.y - (i5 + i11);
        DragOptions dragOptions2 = this.mOptions;
        final FlingToDeleteHelper flingToDeleteHelper = this.mFlingToDeleteHelper;
        Objects.requireNonNull(flingToDeleteHelper);
        this.mDragDriver = DragDriver.create(this, dragOptions2, new Consumer() { // from class: J0.n
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FlingToDeleteHelper.this.recordMotionEvent((MotionEvent) obj);
            }
        });
        if (!this.mOptions.isAccessibleDrag) {
            this.mDragObject.stateAnnouncer = DragViewStateAnnouncer.createFor(launcherDragView);
        }
        DropTarget.DragObject dragObject5 = this.mDragObject;
        dragObject5.dragSource = dragSource;
        dragObject5.dragInfo = itemInfo;
        dragObject5.originalDragInfo = itemInfo.makeShallowCopy();
        DragOptions.PreDragCondition preDragCondition2 = this.mOptions.preDragCondition;
        if (preDragCondition2 != null) {
            launcherDragView.setHasDragOffset((preDragCondition2.getDragOffset().x == 0 && this.mOptions.preDragCondition.getDragOffset().y == 0) ? r15 : true);
        }
        if (rect != null) {
            launcherDragView.setDragRegion(new Rect(rect));
        }
        launcher.getDragLayer().performHapticFeedback(r15);
        Point point6 = point2;
        launcherDragView.show(point6.x, point6.y);
        this.mDistanceSinceScroll = r15;
        if (this.mIsInPreDrag) {
            DragOptions.PreDragCondition preDragCondition3 = this.mOptions.preDragCondition;
            if (preDragCondition3 != null) {
                preDragCondition3.onPreDragStart(this.mDragObject);
            }
        } else {
            callOnDragStart();
        }
        handleMoveEvent(point6.x, point6.y);
        if (!launcher.isTouchInProgress() && dragOptions.simulatedDndStartPoint == null) {
            Executors.MAIN_EXECUTOR.submit(new Runnable() { // from class: J0.o
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherDragController.this.cancelDrag();
                }
            });
        }
        return launcherDragView;
    }
}
