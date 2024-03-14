package com.android.launcher3.taskbar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.taskbar.TaskbarDragLayerController;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.util.DimensionUtils;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
/* loaded from: classes.dex */
public class TaskbarDragLayer extends BaseDragLayer {
    private static final FloatProperty BG_ALPHA = new FloatProperty() { // from class: com.android.launcher3.taskbar.TaskbarDragLayer.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((TaskbarDragLayer) obj).mBackgroundRenderer.getPaint().getAlpha() / 255.0f);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            TaskbarDragLayer taskbarDragLayer = (TaskbarDragLayer) obj;
            taskbarDragLayer.mBackgroundRenderer.getPaint().setAlpha((int) (f4 * 255.0f));
            taskbarDragLayer.invalidate();
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f5071d = 0;
    private final TaskbarBackgroundRenderer mBackgroundRenderer;
    private TaskbarDragLayerController.TaskbarDragLayerCallbacks mControllerCallbacks;
    private final MultiPropertyFactory mTaskbarBackgroundAlpha;
    private float mTaskbarBackgroundOffset;
    private final ViewTreeObserver$OnComputeInternalInsetsListenerC0420b0 mTaskbarInsetsComputer;
    private A0.l mViewCaptureCloseable;

    public TaskbarDragLayer(Context context) {
        this(context, null);
    }

    public static void b(TaskbarDragLayer taskbarDragLayer, ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
        TaskbarDragLayerController.TaskbarDragLayerCallbacks taskbarDragLayerCallbacks = taskbarDragLayer.mControllerCallbacks;
        if (taskbarDragLayerCallbacks != null) {
            TaskbarDragLayerController.e(TaskbarDragLayerController.this).taskbarInsetsController.updateInsetsTouchability(internalInsetsInfo);
        }
    }

    @Override // com.android.launcher3.views.BaseDragLayer
    public final boolean canFindActiveController() {
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        int i4;
        TaskbarDragLayerController taskbarDragLayerController = TaskbarDragLayerController.this;
        DeviceProfile deviceProfile = TaskbarDragLayerController.d(taskbarDragLayerController).getDeviceProfile();
        if (TaskbarManager.isPhoneMode(deviceProfile)) {
            i4 = DimensionUtils.getTaskbarPhoneDimensions(deviceProfile, TaskbarDragLayerController.d(taskbarDragLayerController).getResources(), TaskbarManager.isPhoneMode(deviceProfile)).y;
            if (i4 == -1) {
                i4 = deviceProfile.getDisplayInfo().currentSize.y;
            }
        } else {
            i4 = deviceProfile.taskbarHeight;
        }
        this.mBackgroundRenderer.setBackgroundHeight((1.0f - this.mTaskbarBackgroundOffset) * i4);
        this.mBackgroundRenderer.draw(canvas);
        super.dispatchDraw(canvas);
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

    public final MultiPropertyFactory.MultiProperty getBackgroundRendererAlpha() {
        return this.mTaskbarBackgroundAlpha.get(0);
    }

    public final MultiPropertyFactory.MultiProperty getBackgroundRendererAlphaForStash() {
        return this.mTaskbarBackgroundAlpha.get(1);
    }

    public final RectF getLastDrawnTransientRect() {
        return this.mBackgroundRenderer.getLastDrawnTransientRect();
    }

    public final void init(TaskbarDragLayerController.TaskbarDragLayerCallbacks taskbarDragLayerCallbacks) {
        this.mControllerCallbacks = taskbarDragLayerCallbacks;
        this.mBackgroundRenderer.updateStashedHandleWidth(getResources(), ((TaskbarActivityContext) this.mActivity).getDeviceProfile());
        recreateControllers();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnComputeInternalInsetsListener(this.mTaskbarInsetsComputer);
        Context context = getContext();
        A0.x xVar = A0.g.f12j;
        this.mViewCaptureCloseable = A0.d.a(context).a(getRootView(), ".Taskbar");
    }

    public final void onDestroy(boolean z4) {
        if (z4) {
            getViewTreeObserver().removeOnComputeInternalInsetsListener(this.mTaskbarInsetsComputer);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mViewCaptureCloseable.close();
        onDestroy(true);
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        TaskbarDragLayerController.TaskbarDragLayerCallbacks taskbarDragLayerCallbacks = this.mControllerCallbacks;
        if (taskbarDragLayerCallbacks != null) {
            TaskbarDragLayerController.d(TaskbarDragLayerController.this).onDragEndOrViewRemoved();
        }
    }

    @Override // com.android.launcher3.views.BaseDragLayer
    public final void recreateControllers() {
        TaskbarDragLayerController taskbarDragLayerController = TaskbarDragLayerController.this;
        this.mControllers = new TouchController[]{TaskbarDragLayerController.d(taskbarDragLayerController).getDragController(), TaskbarDragLayerController.e(taskbarDragLayerController).taskbarForceVisibleImmersiveController, TaskbarDragLayerController.e(taskbarDragLayerController).navbarButtonsViewController.getTouchController(), TaskbarDragLayerController.f(taskbarDragLayerController)};
    }

    public final void setBackgroundHorizontalInsets(float f4) {
        this.mBackgroundRenderer.setBackgroundHorizontalInsets(f4);
        invalidate();
    }

    public final void setBackgroundTranslationYForStash(float f4) {
        this.mBackgroundRenderer.setTranslationYForStash(f4);
        invalidate();
    }

    public final void setBackgroundTranslationYForSwipe(float f4) {
        this.mBackgroundRenderer.setTranslationYForSwipe(f4);
        invalidate();
    }

    public final void setCornerRoundness(float f4) {
        this.mBackgroundRenderer.setCornerRoundness(f4);
        invalidate();
    }

    public final void setTaskbarBackgroundOffset(float f4) {
        this.mTaskbarBackgroundOffset = f4;
        invalidate();
    }

    public TaskbarDragLayer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TaskbarDragLayer(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    /* JADX WARN: Type inference failed for: r7v1, types: [com.android.launcher3.taskbar.b0] */
    public TaskbarDragLayer(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, 1);
        this.mTaskbarInsetsComputer = new ViewTreeObserver.OnComputeInternalInsetsListener() { // from class: com.android.launcher3.taskbar.b0
            public final void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
                TaskbarDragLayer.b(TaskbarDragLayer.this, internalInsetsInfo);
            }
        };
        this.mBackgroundRenderer = new TaskbarBackgroundRenderer((TaskbarActivityContext) this.mActivity);
        MultiPropertyFactory multiPropertyFactory = new MultiPropertyFactory(this, BG_ALPHA, 2, new C0422c0(), 1.0f);
        this.mTaskbarBackgroundAlpha = multiPropertyFactory;
        multiPropertyFactory.get(0).setValue(0.0f);
        multiPropertyFactory.get(1).setValue(1.0f);
    }
}
