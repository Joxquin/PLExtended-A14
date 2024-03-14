package com.android.launcher3.taskbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.PendingIntent;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.util.Log;
import android.util.Pair;
import android.view.DragEvent;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewRootImpl;
import android.view.animation.Interpolator;
import android.window.SurfaceSyncGroup;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.C0339g;
import com.android.launcher3.C0410q;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragDriver;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.graphics.DragPreviewProvider;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.shortcuts.ShortcutDragPreviewProvider;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.util.C0481n;
import com.android.launcher3.util.C0482o;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BubbleTextHolder;
import com.android.quickstep.util.LogUtils;
import com.android.quickstep.util.MultiValueUpdateListener;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes.dex */
public final class TaskbarDragController extends DragController implements TaskbarControllers.LoggableTaskbarController {
    TaskbarControllers mControllers;
    private boolean mDisallowGlobalDrag;
    private boolean mDisallowLongClick;
    private final int mDragIconSize;
    private boolean mIsSystemDragInProgress;
    private int mRegistrationX;
    private int mRegistrationY;
    private ValueAnimator mReturnAnimator;
    private final int[] mTempXY;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface TaskbarReturnPropertiesListener {
        void updateDragShadow(float f4, float f5, float f6, float f7);
    }

    public TaskbarDragController(BaseTaskbarContext baseTaskbarContext) {
        super(baseTaskbarContext);
        this.mTempXY = new int[2];
        this.mDragIconSize = ((BaseTaskbarContext) this.mActivity).getResources().getDimensionPixelSize(R.dimen.taskbar_icon_drag_icon_size);
    }

    public static boolean a(TaskbarDragController taskbarDragController, BubbleTextView bubbleTextView, DragEvent dragEvent) {
        taskbarDragController.getClass();
        int action = dragEvent.getAction();
        if (action != 1) {
            if (action != 4) {
                return false;
            }
            taskbarDragController.mIsSystemDragInProgress = false;
            if (dragEvent.getResult()) {
                taskbarDragController.maybeOnDragEnd();
            } else {
                final SurfaceControl dragSurface = dragEvent.getDragSurface();
                View findTaskbarTargetForIconView = taskbarDragController.findTaskbarTargetForIconView(bubbleTextView);
                float x4 = dragEvent.getX() - dragEvent.getOffsetX();
                float y4 = dragEvent.getY() - dragEvent.getOffsetY();
                final ViewRootImpl viewRootImpl = findTaskbarTargetForIconView.getViewRootImpl();
                final SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                taskbarDragController.setupReturnDragAnimator(x4, y4, bubbleTextView, new TaskbarReturnPropertiesListener() { // from class: com.android.launcher3.taskbar.Y
                    @Override // com.android.launcher3.taskbar.TaskbarDragController.TaskbarReturnPropertiesListener
                    public final void updateDragShadow(float f4, float f5, float f6, float f7) {
                        SurfaceControl.Transaction transaction2 = transaction;
                        SurfaceControl surfaceControl = dragSurface;
                        transaction2.setPosition(surfaceControl, f4, f5);
                        transaction2.setScale(surfaceControl, f6, f6);
                        transaction2.setAlpha(surfaceControl, f7);
                        transaction2.apply();
                    }
                });
                taskbarDragController.mReturnAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.TaskbarDragController.4
                    private boolean mCanceled = false;

                    private void cleanUpSurface() {
                        transaction.close();
                        TaskbarDragController.this.maybeOnDragEnd();
                        SurfaceControl.Transaction transaction2 = new SurfaceControl.Transaction();
                        transaction2.remove(dragSurface);
                        SurfaceSyncGroup surfaceSyncGroup = new SurfaceSyncGroup("TaskBarController");
                        surfaceSyncGroup.addSyncCompleteCallback(((BaseTaskbarContext) ((DragController) TaskbarDragController.this).mActivity).getMainExecutor(), new RunnableC0418a0(1, transaction2));
                        surfaceSyncGroup.add(viewRootImpl, (Runnable) null);
                        surfaceSyncGroup.addTransaction(transaction2);
                        surfaceSyncGroup.markSyncReady();
                        TaskbarDragController.this.mReturnAnimator = null;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        cleanUpSurface();
                        this.mCanceled = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        if (this.mCanceled) {
                            return;
                        }
                        cleanUpSurface();
                    }
                });
                taskbarDragController.mReturnAnimator.start();
            }
            ((BaseTaskbarContext) taskbarDragController.mActivity).getDragLayer().setOnDragListener(null);
            return true;
        }
        return true;
    }

    public static void b(TaskbarDragController taskbarDragController, BubbleTextView bubbleTextView, DragPreviewProvider dragPreviewProvider, Point point) {
        PopupContainerWithArrow showForIcon;
        taskbarDragController.getClass();
        float animatedScale = bubbleTextView.getIcon().getAnimatedScale();
        bubbleTextView.clearFocus();
        bubbleTextView.setPressed(false);
        bubbleTextView.setPressed(false);
        bubbleTextView.setStayPressed(false);
        DragPreviewProvider dragPreviewProvider2 = dragPreviewProvider == null ? new DragPreviewProvider(bubbleTextView) : dragPreviewProvider;
        Drawable createDrawable = dragPreviewProvider2.createDrawable();
        int[] iArr = taskbarDragController.mTempXY;
        float scaleAndPosition = dragPreviewProvider2.getScaleAndPosition(createDrawable, iArr);
        int i4 = iArr[0];
        int i5 = iArr[1];
        Rect rect = new Rect();
        bubbleTextView.getSourceVisualDragBounds(rect);
        int i6 = i5 + rect.top;
        DragOptions dragOptions = new DragOptions();
        DragOptions.PreDragCondition createPreDragConditionForSearch = taskbarDragController.mControllers.taskbarAllAppsController.createPreDragConditionForSearch(bubbleTextView);
        dragOptions.preDragCondition = createPreDragConditionForSearch;
        if (createPreDragConditionForSearch == null && (showForIcon = taskbarDragController.mControllers.taskbarPopupController.showForIcon(bubbleTextView)) != null) {
            dragOptions.preDragCondition = showForIcon.createPreDragCondition(false);
        }
        if (dragOptions.preDragCondition == null) {
            dragOptions.preDragCondition = new DragOptions.PreDragCondition() { // from class: com.android.launcher3.taskbar.TaskbarDragController.1
                private DragView mDragView;

                @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
                public final void onPreDragEnd(DropTarget.DragObject dragObject, boolean z4) {
                    this.mDragView = null;
                }

                @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
                public final void onPreDragStart(DropTarget.DragObject dragObject) {
                    this.mDragView = dragObject.dragView;
                    if (shouldStartDrag(0.0d)) {
                        return;
                    }
                    this.mDragView.setOnScaleAnimEndCallback(new RunnableC0418a0(0, TaskbarDragController.this));
                }

                @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
                public final boolean shouldStartDrag(double d4) {
                    DragView dragView = this.mDragView;
                    return dragView != null && dragView.isScaleAnimationFinished();
                }
            };
        }
        Point dragOffset = dragOptions.preDragCondition.getDragOffset();
        DragView startDrag = taskbarDragController.startDrag(createDrawable, null, bubbleTextView, dragOffset.x + i4, i6 + dragOffset.y, new Z(), (ItemInfo) bubbleTextView.getTag(), rect, scaleAndPosition * animatedScale, scaleAndPosition, dragOptions);
        if (point != null) {
            startDrag.animateShift(-point.x, -point.y);
        }
        bubbleTextView.setIconDisabled(true);
        taskbarDragController.mControllers.taskbarAutohideSuspendController.updateFlag(2, true);
    }

    private View findTaskbarTargetForIconView(View view) {
        Object tag = view.getTag();
        TaskbarViewController taskbarViewController = this.mControllers.taskbarViewController;
        if (tag instanceof ItemInfo) {
            ItemInfo itemInfo = (ItemInfo) tag;
            int i4 = itemInfo.container;
            if (i4 == -104 || i4 == -102) {
                return this.mDisallowGlobalDrag ? view : taskbarViewController.getAllAppsButtonView();
            } else if (i4 >= 0) {
                IntSet wrap = IntSet.wrap(itemInfo.id);
                int i5 = ItemInfoMatcher.f5271a;
                return taskbarViewController.getFirstIconMatch(new C0481n(2, new C0481n(3, wrap)));
            } else if (itemInfo.itemType == 6) {
                Set singleton = Collections.singleton(itemInfo.getTargetPackage());
                UserHandle userHandle = itemInfo.user;
                int i6 = ItemInfoMatcher.f5271a;
                return taskbarViewController.getFirstIconMatch(new C0482o(userHandle, singleton, 1));
            }
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeOnDragEnd() {
        if (isDragging()) {
            return;
        }
        ((BubbleTextView) this.mDragObject.originalView).setIconDisabled(false);
        this.mControllers.taskbarAutohideSuspendController.updateFlag(2, false);
        ((BaseTaskbarContext) this.mActivity).onDragEnd();
        if (this.mReturnAnimator == null) {
            this.mControllers.taskbarStashController.updateAndAnimateTransientTaskbar(true, true);
        }
    }

    private void setupReturnDragAnimator(float f4, float f5, View view, TaskbarReturnPropertiesListener taskbarReturnPropertiesListener) {
        ValueAnimator valueAnimator = this.mReturnAnimator;
        if (valueAnimator != null) {
            valueAnimator.end();
        }
        View findTaskbarTargetForIconView = findTaskbarTargetForIconView(view);
        int[] locationOnScreen = findTaskbarTargetForIconView.getLocationOnScreen();
        float width = findTaskbarTargetForIconView.getWidth();
        if (findTaskbarTargetForIconView instanceof BubbleTextView) {
            Rect rect = new Rect();
            ((BubbleTextView) findTaskbarTargetForIconView).getSourceVisualDragBounds(rect);
            locationOnScreen[0] = locationOnScreen[0] + rect.left;
            locationOnScreen[1] = locationOnScreen[1] + rect.top;
            width = rect.width();
        }
        MultiValueUpdateListener multiValueUpdateListener = new MultiValueUpdateListener(f4, locationOnScreen, f5, width / this.mDragIconSize, findTaskbarTargetForIconView == view ? 1.0f : 0.0f, taskbarReturnPropertiesListener) { // from class: com.android.launcher3.taskbar.TaskbarDragController.5
            final MultiValueUpdateListener.FloatProp mAlpha;
            final MultiValueUpdateListener.FloatProp mDx;
            final MultiValueUpdateListener.FloatProp mDy;
            final MultiValueUpdateListener.FloatProp mScale;
            final /* synthetic */ TaskbarReturnPropertiesListener val$animListener;

            {
                this.val$animListener = taskbarReturnPropertiesListener;
                Interpolator interpolator = y0.e.f12950n;
                this.mDx = new MultiValueUpdateListener.FloatProp(f4, locationOnScreen[0], 0.0f, 300.0f, interpolator);
                this.mDy = new MultiValueUpdateListener.FloatProp(f5, locationOnScreen[1], 0.0f, 300.0f, interpolator);
                this.mScale = new MultiValueUpdateListener.FloatProp(1.0f, r17, 0.0f, 300.0f, interpolator);
                this.mAlpha = new MultiValueUpdateListener.FloatProp(1.0f, r18, 0.0f, 300.0f, y0.e.f12960x);
            }

            @Override // com.android.quickstep.util.MultiValueUpdateListener
            public final void onUpdate(float f6, boolean z4) {
                this.val$animListener.updateDragShadow(this.mDx.value, this.mDy.value, this.mScale.value, this.mAlpha.value);
            }
        };
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mReturnAnimator = ofFloat;
        ofFloat.setDuration(300L);
        this.mReturnAnimator.setInterpolator(y0.e.f12950n);
        this.mReturnAnimator.addUpdateListener(multiValueUpdateListener);
    }

    private void startSystemDrag(final BubbleTextView bubbleTextView) {
        ClipDescription clipDescription;
        Intent intent;
        View.DragShadowBuilder dragShadowBuilder = new View.DragShadowBuilder(bubbleTextView) { // from class: com.android.launcher3.taskbar.TaskbarDragController.2
            @Override // android.view.View.DragShadowBuilder
            public final void onDrawShadow(Canvas canvas) {
                canvas.save();
                float endScale = ((DragController) TaskbarDragController.this).mDragObject.dragView.getEndScale();
                canvas.scale(endScale, endScale);
                ((DragController) TaskbarDragController.this).mDragObject.dragView.draw(canvas);
                canvas.restore();
            }

            @Override // android.view.View.DragShadowBuilder
            public final void onProvideShadowMetrics(Point point, Point point2) {
                int max = Math.max(TaskbarDragController.this.mDragIconSize, bubbleTextView.getWidth());
                if (max > 0) {
                    point.set(max, max);
                } else {
                    Log.d("TaskbarDragController", "Invalid icon size, dragSize=" + TaskbarDragController.this.mDragIconSize + " viewWidth=" + bubbleTextView.getWidth());
                }
                int dragRegionWidth = (TaskbarDragController.this.mDragIconSize - ((DragController) TaskbarDragController.this).mDragObject.dragView.getDragRegionWidth()) / 2;
                int dragRegionHeight = (TaskbarDragController.this.mDragIconSize - ((DragController) TaskbarDragController.this).mDragObject.dragView.getDragRegionHeight()) / 2;
                int i4 = TaskbarDragController.this.mRegistrationX + dragRegionWidth;
                int i5 = TaskbarDragController.this.mRegistrationY + dragRegionHeight;
                if (i4 >= 0 && i5 >= 0) {
                    point2.set(i4, i5);
                    return;
                }
                Log.d("TaskbarDragController", "Invalid touch point, registrationXY=(" + TaskbarDragController.this.mRegistrationX + ", " + TaskbarDragController.this.mRegistrationY + ") offsetXY=(" + dragRegionWidth + ", " + dragRegionHeight + ")");
            }
        };
        Object tag = bubbleTextView.getTag();
        boolean z4 = tag instanceof ItemInfo;
        ActivityContext activityContext = this.mActivity;
        if (z4) {
            ItemInfo itemInfo = (ItemInfo) tag;
            LauncherApps launcherApps = (LauncherApps) ((BaseTaskbarContext) activityContext).getSystemService(LauncherApps.class);
            CharSequence charSequence = itemInfo.title;
            String[] strArr = new String[1];
            strArr[0] = itemInfo.itemType == 6 ? "application/vnd.android.shortcut" : "application/vnd.android.activity";
            clipDescription = new ClipDescription(charSequence, strArr);
            intent = new Intent();
            int i4 = itemInfo.itemType;
            if (i4 == 6) {
                String deepShortcutId = ((WorkspaceItemInfo) itemInfo).getDeepShortcutId();
                intent.putExtra("android.intent.extra.PENDING_INTENT", launcherApps.getShortcutIntent(itemInfo.getIntent().getPackage(), deepShortcutId, null, itemInfo.user));
                intent.putExtra("android.intent.extra.PACKAGE_NAME", itemInfo.getIntent().getPackage());
                intent.putExtra("android.intent.extra.shortcut.ID", deepShortcutId);
            } else if (i4 == 9) {
                intent.putExtra("android.intent.extra.PENDING_INTENT", PendingIntent.getActivityAsUser((Context) activityContext, 0, itemInfo.getIntent(), 167772160, null, itemInfo.user));
            } else {
                intent.putExtra("android.intent.extra.PENDING_INTENT", launcherApps.getMainActivityLaunchIntent(itemInfo.getIntent().getComponent(), null, itemInfo.user));
            }
            intent.putExtra("android.intent.extra.USER", itemInfo.user);
        } else if (tag instanceof Task) {
            Task task = (Task) tag;
            clipDescription = new ClipDescription(task.titleDescription, new String[]{"application/vnd.android.task"});
            intent = new Intent();
            intent.putExtra("android.intent.extra.TASK_ID", task.key.id);
            intent.putExtra("android.intent.extra.USER", UserHandle.of(task.key.userId));
        } else {
            clipDescription = null;
            intent = null;
        }
        if (clipDescription != null && intent != null) {
            Pair shellShareableInstanceId = LogUtils.getShellShareableInstanceId();
            InstanceId instanceId = (InstanceId) shellShareableInstanceId.second;
            intent.putExtra("android.intent.extra.LOGGING_INSTANCE_ID", (com.android.internal.logging.InstanceId) shellShareableInstanceId.first);
            if (DisplayController.isTransientTaskbar((Context) activityContext)) {
                TaskbarDragLayer dragLayer = this.mControllers.taskbarActivityContext.getDragLayer();
                int[] locationOnScreen = dragLayer.getLocationOnScreen();
                RectF rectF = new RectF(dragLayer.getLastDrawnTransientRect());
                rectF.offset(locationOnScreen[0], locationOnScreen[1]);
                intent.putExtra("DISALLOW_HIT_REGION", rectF);
            }
            if (bubbleTextView.startDragAndDrop(new ClipData(clipDescription, new ClipData.Item(intent)), dragShadowBuilder, null, 2816)) {
                this.mIsSystemDragInProgress = true;
                ((BaseTaskbarContext) activityContext).getDragLayer().setOnDragListener(new View.OnDragListener() { // from class: com.android.launcher3.taskbar.W
                    @Override // android.view.View.OnDragListener
                    public final boolean onDrag(View view, DragEvent dragEvent) {
                        return TaskbarDragController.a(TaskbarDragController.this, bubbleTextView, dragEvent);
                    }
                });
                ((BaseTaskbarContext) activityContext).getStatsLogManager().logger().withItemInfo(this.mDragObject.dragInfo).withInstanceId(instanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DRAG_STARTED);
            }
        }
        AbstractFloatingView.closeAllOpenViews(activityContext);
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final void addDropTarget(DropTarget dropTarget) {
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final void callOnDragEnd() {
        super.callOnDragEnd();
        maybeOnDragEnd();
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final void callOnDragStart() {
        super.callOnDragStart();
        if (this.mDisallowGlobalDrag) {
            AbstractFloatingView.closeAllOpenViewsExcept(this.mActivity, 262144);
        } else {
            startSystemDrag((BubbleTextView) this.mDragObject.originalView);
        }
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarDragController:");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tmDragIconSize=");
        StringBuilder a4 = C0339g.a(sb, this.mDragIconSize, printWriter, str, "\tmTempXY=");
        a4.append(Arrays.toString(this.mTempXY));
        printWriter.println(a4.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("\tmRegistrationX=");
        StringBuilder c4 = C0410q.c(C0410q.c(C0410q.c(C0339g.a(C0339g.a(sb2, this.mRegistrationX, printWriter, str, "\tmRegistrationY="), this.mRegistrationY, printWriter, str, "\tmIsSystemDragInProgress="), this.mIsSystemDragInProgress, printWriter, str, "\tisInternalDragInProgess="), super.isDragging(), printWriter, str, "\tmDisallowGlobalDrag="), this.mDisallowGlobalDrag, printWriter, str, "\tmDisallowLongClick=");
        c4.append(this.mDisallowLongClick);
        printWriter.println(c4.toString());
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final void endDrag() {
        if (this.mDisallowGlobalDrag) {
            DropTarget.DragObject dragObject = this.mDragObject;
            dragObject.deferDragViewCleanupPostAnimation = true;
            final DragView dragView = dragObject.dragView;
            setupReturnDragAnimator(dragObject.f4429x - dragObject.xOffset, dragObject.f4430y - dragObject.yOffset, (View) dragObject.originalView, new TaskbarReturnPropertiesListener() { // from class: com.android.launcher3.taskbar.X
                @Override // com.android.launcher3.taskbar.TaskbarDragController.TaskbarReturnPropertiesListener
                public final void updateDragShadow(float f4, float f5, float f6, float f7) {
                    DragView dragView2 = DragView.this;
                    dragView2.setTranslationX(f4);
                    dragView2.setTranslationY(f5);
                    dragView2.setScaleX(f6);
                    dragView2.setScaleY(f6);
                    dragView2.setAlpha(f7);
                }
            });
            this.mReturnAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.TaskbarDragController.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    TaskbarDragController.this.callOnDragEnd();
                    dragView.remove();
                    dragView.clearAnimation();
                    TaskbarDragController.this.mReturnAnimator = null;
                }
            });
            this.mReturnAnimator.start();
        }
        super.endDrag();
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final void exitDrag() {
        if (this.mDragObject == null || this.mDisallowGlobalDrag) {
            return;
        }
        ((BaseTaskbarContext) this.mActivity).getDragLayer().removeView(this.mDragObject.dragView);
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final Point getClampedDragLayerPos(float f4, float f5) {
        Point point = this.mTmpPoint;
        point.set(Math.round(f4), Math.round(f5));
        return point;
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final DropTarget getDefaultDropTarget(int[] iArr) {
        return null;
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final float getX(MotionEvent motionEvent) {
        return motionEvent.getRawX();
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final float getY(MotionEvent motionEvent) {
        return motionEvent.getRawY();
    }

    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final boolean isDragging() {
        return super.isDragging() || this.mIsSystemDragInProgress;
    }

    public final boolean isSystemDragInProgress() {
        return this.mIsSystemDragInProgress;
    }

    public final void onPreDragAnimationEnd() {
        if (this.mIsInPreDrag) {
            callOnDragStart();
        }
    }

    public final void setDisallowGlobalDrag(boolean z4) {
        this.mDisallowGlobalDrag = z4;
    }

    public final void setDisallowLongClick(boolean z4) {
        this.mDisallowLongClick = z4;
    }

    @Override // com.android.launcher3.dragndrop.DragController
    public final DragView startDrag(Drawable drawable, View view, DraggableView draggableView, int i4, int i5, DragSource dragSource, ItemInfo itemInfo, Rect rect, float f4, float f5, DragOptions dragOptions) {
        this.mOptions = dragOptions;
        Point point = this.mMotionDown;
        this.mRegistrationX = point.x - i4;
        this.mRegistrationY = point.y - i5;
        int i6 = rect == null ? 0 : rect.left;
        int i7 = rect == null ? 0 : rect.top;
        this.mLastDropTarget = null;
        BaseTaskbarContext baseTaskbarContext = (BaseTaskbarContext) this.mActivity;
        DropTarget.DragObject dragObject = new DropTarget.DragObject(baseTaskbarContext.getApplicationContext());
        this.mDragObject = dragObject;
        dragObject.originalView = draggableView;
        dragObject.deferDragViewCleanupPostAnimation = false;
        DragOptions.PreDragCondition preDragCondition = this.mOptions.preDragCondition;
        this.mIsInPreDrag = (preDragCondition == null || preDragCondition.shouldStartDrag(0.0d)) ? false : true;
        int width = rect.width();
        DropTarget.DragObject dragObject2 = this.mDragObject;
        TaskbarDragView taskbarDragView = new TaskbarDragView(baseTaskbarContext, drawable, this.mRegistrationX, this.mRegistrationY, f4, f5, this.mDragIconSize - width);
        dragObject2.dragView = taskbarDragView;
        Executors.MODEL_EXECUTOR.getHandler().postAtFrontOfQueue(new J0.g(taskbarDragView, itemInfo));
        DropTarget.DragObject dragObject3 = this.mDragObject;
        dragObject3.dragComplete = false;
        dragObject3.xOffset = point.x - (i4 + i6);
        dragObject3.yOffset = point.y - (i5 + i7);
        this.mDragDriver = DragDriver.create(this, this.mOptions, new V0.k());
        if (!this.mOptions.isAccessibleDrag) {
            this.mDragObject.stateAnnouncer = DragViewStateAnnouncer.createFor(taskbarDragView);
        }
        DropTarget.DragObject dragObject4 = this.mDragObject;
        dragObject4.dragSource = dragSource;
        dragObject4.dragInfo = itemInfo;
        dragObject4.originalDragInfo = itemInfo.makeShallowCopy();
        DragOptions.PreDragCondition preDragCondition2 = this.mOptions.preDragCondition;
        if (preDragCondition2 != null) {
            taskbarDragView.setHasDragOffset((preDragCondition2.getDragOffset().x == 0 && this.mOptions.preDragCondition.getDragOffset().y == 0) ? false : true);
        }
        taskbarDragView.setDragRegion(new Rect(rect));
        Point point2 = this.mLastTouch;
        taskbarDragView.show(point2.x, point2.y);
        this.mDistanceSinceScroll = 0;
        if (this.mIsInPreDrag) {
            DragOptions.PreDragCondition preDragCondition3 = this.mOptions.preDragCondition;
            if (preDragCondition3 != null) {
                preDragCondition3.onPreDragStart(this.mDragObject);
            }
        } else {
            callOnDragStart();
        }
        handleMoveEvent(point2.x, point2.y);
        return taskbarDragView;
    }

    public final boolean startDragOnLongClick(View view) {
        return startDragOnLongClick(view, null, null);
    }

    public final void startDragOnLongClick(DeepShortcutView deepShortcutView, Point point) {
        startDragOnLongClick(deepShortcutView.getBubbleText(), new ShortcutDragPreviewProvider(deepShortcutView.getIconView(), point), point);
    }

    private boolean startDragOnLongClick(View view, final ShortcutDragPreviewProvider shortcutDragPreviewProvider, final Point point) {
        if (view instanceof BubbleTextHolder) {
            view = ((BubbleTextHolder) view).getBubbleText();
        }
        if (!(view instanceof BubbleTextView) || this.mDisallowLongClick) {
            return false;
        }
        TestLogging.recordEvent("Main", "onTaskbarItemLongClick");
        final BubbleTextView bubbleTextView = (BubbleTextView) view;
        ((BaseTaskbarContext) this.mActivity).onDragStart();
        bubbleTextView.post(new Runnable() { // from class: com.android.launcher3.taskbar.V
            @Override // java.lang.Runnable
            public final void run() {
                TaskbarDragController.b(TaskbarDragController.this, bubbleTextView, shortcutDragPreviewProvider, point);
            }
        });
        return true;
    }
}
