package com.android.launcher3.taskbar.overlay;

import A0.d;
import A0.g;
import A0.l;
import A0.x;
import android.content.Context;
import android.graphics.Insets;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.taskbar.View$OnClickListenerC0445o;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public final class TaskbarOverlayDragLayer extends BaseDragLayer implements ViewTreeObserver.OnComputeInternalInsetsListener {
    private final TouchController mClickListenerTouchController;
    private final List mOnClickListeners;
    private l mViewCaptureCloseable;

    public TaskbarOverlayDragLayer(Context context) {
        super(context, null, 1);
        this.mOnClickListeners = new CopyOnWriteArrayList();
        this.mClickListenerTouchController = new TouchController() { // from class: com.android.launcher3.taskbar.overlay.TaskbarOverlayDragLayer.1
            @Override // com.android.launcher3.util.TouchController
            public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
                int i4 = 0;
                while (true) {
                    TaskbarOverlayDragLayer taskbarOverlayDragLayer = TaskbarOverlayDragLayer.this;
                    if (i4 >= taskbarOverlayDragLayer.getChildCount()) {
                        return true;
                    }
                    if (taskbarOverlayDragLayer.isEventOverView(taskbarOverlayDragLayer.getChildAt(i4), motionEvent)) {
                        return false;
                    }
                    i4++;
                }
            }

            @Override // com.android.launcher3.util.TouchController
            public final boolean onControllerTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getActionMasked() == 1) {
                    TaskbarOverlayDragLayer taskbarOverlayDragLayer = TaskbarOverlayDragLayer.this;
                    Iterator it = ((CopyOnWriteArrayList) taskbarOverlayDragLayer.mOnClickListeners).iterator();
                    while (it.hasNext()) {
                        ((View.OnClickListener) it.next()).onClick(taskbarOverlayDragLayer);
                    }
                    return false;
                }
                return false;
            }
        };
        setClipChildren(false);
        recreateControllers();
    }

    public static void c(TaskbarOverlayDragLayer taskbarOverlayDragLayer, View.OnClickListener onClickListener) {
        boolean isEmpty = ((CopyOnWriteArrayList) taskbarOverlayDragLayer.mOnClickListeners).isEmpty();
        ((CopyOnWriteArrayList) taskbarOverlayDragLayer.mOnClickListeners).remove(onClickListener);
        if (isEmpty || !((CopyOnWriteArrayList) taskbarOverlayDragLayer.mOnClickListeners).isEmpty()) {
            return;
        }
        taskbarOverlayDragLayer.recreateControllers();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        AbstractFloatingView topOpenView;
        if (keyEvent.getAction() == 1 && keyEvent.getKeyCode() == 4 && (topOpenView = AbstractFloatingView.getTopOpenView((ActivityContext) this.mActivity)) != null && topOpenView.canHandleBack()) {
            topOpenView.onBackInvoked();
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        TestLogging.recordMotionEvent("Main", "Touch event", motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (DisplayController.isTransientTaskbar(this.mActivity)) {
            WindowInsets.Builder builder = new WindowInsets.Builder(windowInsets);
            Insets insets = windowInsets.getInsets(WindowInsets.Type.navigationBars());
            builder.setInsets(WindowInsets.Type.navigationBars(), Insets.of(insets.left, insets.top, insets.right, ((TaskbarOverlayContext) this.mActivity).getStashedTaskbarHeight()));
            Insets insets2 = windowInsets.getInsets(WindowInsets.Type.tappableElement());
            builder.setInsets(WindowInsets.Type.tappableElement(), Insets.of(insets2.left, insets2.top, insets2.right, 0));
            windowInsets = builder.build();
        }
        setInsets(windowInsets.getInsets(WindowInsets.Type.systemBars()).toRect());
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnComputeInternalInsetsListener(this);
        Context context = getContext();
        x xVar = g.f12j;
        this.mViewCaptureCloseable = d.a(context).a(getRootView(), ".TaskbarOverlay");
    }

    public final void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
        if (((TaskbarOverlayContext) this.mActivity).isAnySystemDragInProgress()) {
            internalInsetsInfo.touchableRegion.setEmpty();
            internalInsetsInfo.setTouchableInsets(3);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnComputeInternalInsetsListener(this);
        this.mViewCaptureCloseable.close();
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ((TaskbarOverlayContext) this.mActivity).getOverlayController().maybeCloseWindow();
    }

    @Override // com.android.launcher3.views.BaseDragLayer
    public final void recreateControllers() {
        this.mControllers = this.mOnClickListeners.isEmpty() ? new TouchController[]{((TaskbarOverlayContext) this.mActivity).getDragController()} : new TouchController[]{((TaskbarOverlayContext) this.mActivity).getDragController(), this.mClickListenerTouchController};
    }

    public final void runOnClickOnce(final View$OnClickListenerC0445o view$OnClickListenerC0445o) {
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.android.launcher3.taskbar.overlay.TaskbarOverlayDragLayer.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                view$OnClickListenerC0445o.onClick(view);
                TaskbarOverlayDragLayer.c(TaskbarOverlayDragLayer.this, this);
            }
        };
        boolean isEmpty = ((CopyOnWriteArrayList) this.mOnClickListeners).isEmpty();
        ((CopyOnWriteArrayList) this.mOnClickListeners).add(onClickListener);
        if (isEmpty) {
            recreateControllers();
        }
    }
}
