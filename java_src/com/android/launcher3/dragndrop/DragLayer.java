package com.android.launcher3.dragndrop;

import J0.d;
import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DropTargetBar;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.SpringProperty;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.graphics.Scrim;
import com.android.launcher3.keyboard.ViewGroupFocusHelper;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import q1.InterfaceC1363c;
import y0.e;
/* loaded from: classes.dex */
public class DragLayer extends BaseDragLayer implements InterfaceC1363c {

    /* renamed from: d */
    public static final /* synthetic */ int f4581d = 0;
    private int mChildCountOnLastUpdate;
    private DragController mDragController;
    private Animator mDropAnim;
    private DragView mDropView;
    private final ViewGroupFocusHelper mFocusIndicatorHelper;
    private boolean mHoverPointClosesFolder;
    private final boolean mIsRtl;
    private int mTopViewIndex;
    private Scrim mWorkspaceDragScrim;

    public DragLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 1);
        this.mDropAnim = null;
        this.mDropView = null;
        this.mHoverPointClosesFolder = false;
        this.mChildCountOnLastUpdate = -1;
        setMotionEventSplittingEnabled(false);
        setChildrenDrawingOrderEnabled(true);
        this.mFocusIndicatorHelper = new ViewGroupFocusHelper(this);
        this.mIsRtl = Utilities.isRtl(getResources());
    }

    private void updateChildIndices() {
        this.mTopViewIndex = -1;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            if (getChildAt(i4) instanceof DragView) {
                this.mTopViewIndex = i4;
            }
        }
        this.mChildCountOnLastUpdate = childCount;
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup, android.view.View
    public final void addChildrenForAccessibility(ArrayList arrayList) {
        AbstractFloatingView topOpenViewWithType = AbstractFloatingView.getTopOpenViewWithType((ActivityContext) this.mActivity, AbstractFloatingView.TYPE_ACCESSIBLE);
        if (topOpenViewWithType == null) {
            super.addChildrenForAccessibility(arrayList);
            return;
        }
        addAccessibleChildToList(topOpenViewWithType, arrayList);
        if (((Launcher) this.mActivity).getAccessibilityDelegate().isInAccessibleDrag()) {
            addAccessibleChildToList(((Launcher) this.mActivity).getDropTargetBar(), arrayList);
        }
    }

    public final void animateView(DragView dragView, Rect rect, float f4, float f5, float f6, int i4, Interpolator interpolator, Runnable runnable, int i5, final View view) {
        int i6;
        dragView.cancelAnimation();
        dragView.requestLayout();
        int[] viewLocationRelativeToSelf = getViewLocationRelativeToSelf(dragView);
        float hypot = (float) Math.hypot(rect.left - viewLocationRelativeToSelf[0], rect.top - viewLocationRelativeToSelf[1]);
        Resources resources = getResources();
        float integer = resources.getInteger(R.integer.config_dropAnimMaxDist);
        if (i4 < 0) {
            int integer2 = resources.getInteger(R.integer.config_dropAnimMaxDuration);
            if (hypot < integer) {
                integer2 = (int) (((DecelerateInterpolator) e.f12927A).getInterpolation(hypot / integer) * integer2);
            }
            i6 = Math.max(integer2, resources.getInteger(R.integer.config_dropAnimMinDuration));
        } else {
            i6 = i4;
        }
        Interpolator interpolator2 = interpolator == null ? e.f12927A : interpolator;
        PendingAnimation pendingAnimation = new PendingAnimation(i6);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(dragView, View.SCALE_X, f5);
        SpringProperty springProperty = SpringProperty.DEFAULT;
        ofFloat.setInterpolator(interpolator2);
        pendingAnimation.add(ofFloat, springProperty);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(dragView, View.SCALE_Y, f6);
        ofFloat2.setInterpolator(interpolator2);
        pendingAnimation.add(ofFloat2, springProperty);
        pendingAnimation.setViewAlpha(dragView, f4, interpolator2);
        pendingAnimation.setFloat(dragView, LauncherAnimUtils.VIEW_TRANSLATE_Y, rect.top, interpolator2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(dragView, LauncherAnimUtils.VIEW_TRANSLATE_X, rect.left);
        if (view != null) {
            final int scrollX = view.getScrollX();
            ofFloat3.setEvaluator(new TypeEvaluator() { // from class: J0.c
                @Override // android.animation.TypeEvaluator
                public final Object evaluate(float f7, Object obj, Object obj2) {
                    View view2 = view;
                    int i7 = scrollX;
                    int i8 = DragLayer.f4581d;
                    float floatValue = ((Float) obj).floatValue();
                    float floatValue2 = ((Float) obj2).floatValue();
                    String[] strArr = Utilities.EMPTY_STRING_ARRAY;
                    return Float.valueOf((view2.getScaleX() * (i7 - view2.getScrollX())) + w.f.a(floatValue2, floatValue, f7, floatValue));
                }
            });
        }
        ofFloat3.setInterpolator(interpolator2);
        pendingAnimation.add(ofFloat3, springProperty);
        if (runnable != null) {
            pendingAnimation.addListener(AnimatorListeners.forEndCallback(runnable));
        }
        playDropAnimation(dragView, pendingAnimation.buildAnim(), i5);
    }

    public final void animateViewIntoPosition(DragView dragView, View view, int i4, View view2) {
        int i5;
        int i6;
        float f4;
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = (ShortcutAndWidgetContainer) view.getParent();
        CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) view.getLayoutParams();
        shortcutAndWidgetContainer.measureChild(view);
        shortcutAndWidgetContainer.layoutChild(view);
        float scaleX = view.getScaleX();
        float f5 = 1.0f - scaleX;
        float[] fArr = {((view.getMeasuredWidth() * f5) / 2.0f) + cellLayoutLayoutParams.f4575x, ((view.getMeasuredHeight() * f5) / 2.0f) + cellLayoutLayoutParams.f4576y};
        float descendantCoordRelativeToSelf = getDescendantCoordRelativeToSelf((View) view.getParent(), fArr) * scaleX;
        int round = Math.round(fArr[0]);
        int round2 = Math.round(fArr[1]);
        if (view instanceof DraggableView) {
            Rect rect = new Rect();
            ((DraggableView) view).getWorkspaceVisualDragBounds(rect);
            float width = ((rect.width() * 1.0f) / (dragView.getMeasuredWidth() - dragView.getBlurSizeOutline())) * descendantCoordRelativeToSelf;
            float f6 = 1.0f - width;
            float blurSizeOutline = ((rect.left * descendantCoordRelativeToSelf) - ((dragView.getBlurSizeOutline() * width) / 2.0f)) - ((dragView.getMeasuredWidth() * f6) / 2.0f);
            i5 = (int) ((((descendantCoordRelativeToSelf * rect.top) - ((dragView.getBlurSizeOutline() * width) / 2.0f)) - ((dragView.getMeasuredHeight() * f6) / 2.0f)) + round2);
            f4 = width;
            i6 = (int) (blurSizeOutline + round);
        } else {
            i5 = round2;
            i6 = round;
            f4 = descendantCoordRelativeToSelf;
        }
        view.setVisibility(4);
        animateViewIntoPosition(dragView, i6, i5, 1.0f, f4, f4, new d(view, 2), 0, i4, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        updateChildIndices();
    }

    public final void clearAnimatedView() {
        Animator animator = this.mDropAnim;
        if (animator != null) {
            animator.cancel();
        }
        this.mDropAnim = null;
        DragView dragView = this.mDropView;
        if (dragView != null) {
            DragController dragController = this.mDragController;
            dragController.getClass();
            dragView.remove();
            if (dragController.mDragObject.deferDragViewCleanupPostAnimation) {
                dragController.callOnDragEnd();
            }
        }
        this.mDropView = null;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        this.mWorkspaceDragScrim.draw(canvas);
        this.mFocusIndicatorHelper.draw(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return (this.mDragController.mDragDriver != null) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        motionEvent.offsetLocation(getTranslationX(), 0.0f);
        try {
            return super.dispatchTouchEvent(motionEvent);
        } finally {
            motionEvent.offsetLocation(-getTranslationX(), 0.0f);
        }
    }

    public final DragView getAnimatedView() {
        return this.mDropView;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i4, int i5) {
        if (this.mChildCountOnLastUpdate != i4) {
            updateChildIndices();
        }
        int i6 = this.mTopViewIndex;
        return i6 == -1 ? i5 : i5 == i4 + (-1) ? i6 : i5 < i6 ? i5 : i5 + 1;
    }

    public final ViewGroupFocusHelper getFocusIndicatorHelper() {
        return this.mFocusIndicatorHelper;
    }

    public final Scrim getWorkspaceDragScrim() {
        return this.mWorkspaceDragScrim;
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x00d6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x008a  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onInterceptHoverEvent(android.view.MotionEvent r10) {
        /*
            r9 = this;
            android.content.Context r0 = r9.mActivity
            r1 = 0
            if (r0 == 0) goto Ld9
            com.android.launcher3.Launcher r0 = (com.android.launcher3.Launcher) r0
            com.android.launcher3.Workspace r0 = r0.getWorkspace()
            if (r0 != 0) goto Lf
            goto Ld9
        Lf:
            android.content.Context r0 = r9.mActivity
            com.android.launcher3.views.ActivityContext r0 = (com.android.launcher3.views.ActivityContext) r0
            com.android.launcher3.AbstractFloatingView r0 = com.android.launcher3.AbstractFloatingView.getTopOpenView(r0)
            boolean r2 = r0 instanceof com.android.launcher3.folder.Folder
            if (r2 != 0) goto L1c
            return r1
        L1c:
            android.content.Context r2 = r9.getContext()
            java.lang.String r3 = "accessibility"
            java.lang.Object r2 = r2.getSystemService(r3)
            android.view.accessibility.AccessibilityManager r2 = (android.view.accessibility.AccessibilityManager) r2
            boolean r2 = r2.isTouchExplorationEnabled()
            if (r2 == 0) goto Ld9
            r2 = r0
            com.android.launcher3.folder.Folder r2 = (com.android.launcher3.folder.Folder) r2
            int r3 = r10.getAction()
            r4 = 7
            r5 = 8
            r6 = 2131951808(0x7f1300c0, float:1.954004E38)
            r7 = 2131951807(0x7f1300bf, float:1.9540039E38)
            r8 = 1
            if (r3 == r4) goto L8d
            r4 = 9
            if (r3 == r4) goto L47
            goto Ld9
        L47:
            boolean r0 = r9.isEventOverView(r0, r10)
            if (r0 != 0) goto L71
            android.content.Context r0 = r9.mActivity
            com.android.launcher3.Launcher r0 = (com.android.launcher3.Launcher) r0
            com.android.launcher3.accessibility.LauncherAccessibilityDelegate r0 = r0.getAccessibilityDelegate()
            boolean r0 = r0.isInAccessibleDrag()
            if (r0 == 0) goto L6b
            android.content.Context r0 = r9.mActivity
            com.android.launcher3.Launcher r0 = (com.android.launcher3.Launcher) r0
            com.android.launcher3.DropTargetBar r0 = r0.getDropTargetBar()
            boolean r10 = r9.isEventOverView(r0, r10)
            if (r10 == 0) goto L6b
            r10 = r8
            goto L6c
        L6b:
            r10 = r1
        L6c:
            if (r10 == 0) goto L6f
            goto L71
        L6f:
            r10 = r1
            goto L72
        L71:
            r10 = r8
        L72:
            if (r10 != 0) goto L8a
            boolean r10 = r2.isEditingName()
            if (r10 == 0) goto L7b
            goto L7c
        L7b:
            r6 = r7
        L7c:
            android.content.Context r10 = r9.getContext()
            java.lang.String r10 = r10.getString(r6)
            com.android.launcher3.compat.AccessibilityManagerCompat.sendCustomAccessibilityEvent(r9, r5, r10)
            r9.mHoverPointClosesFolder = r8
            return r8
        L8a:
            r9.mHoverPointClosesFolder = r1
            goto Ld9
        L8d:
            boolean r0 = r9.isEventOverView(r0, r10)
            if (r0 != 0) goto Lb7
            android.content.Context r0 = r9.mActivity
            com.android.launcher3.Launcher r0 = (com.android.launcher3.Launcher) r0
            com.android.launcher3.accessibility.LauncherAccessibilityDelegate r0 = r0.getAccessibilityDelegate()
            boolean r0 = r0.isInAccessibleDrag()
            if (r0 == 0) goto Lb1
            android.content.Context r0 = r9.mActivity
            com.android.launcher3.Launcher r0 = (com.android.launcher3.Launcher) r0
            com.android.launcher3.DropTargetBar r0 = r0.getDropTargetBar()
            boolean r10 = r9.isEventOverView(r0, r10)
            if (r10 == 0) goto Lb1
            r10 = r8
            goto Lb2
        Lb1:
            r10 = r1
        Lb2:
            if (r10 == 0) goto Lb5
            goto Lb7
        Lb5:
            r10 = r1
            goto Lb8
        Lb7:
            r10 = r8
        Lb8:
            if (r10 != 0) goto Ld4
            boolean r0 = r9.mHoverPointClosesFolder
            if (r0 != 0) goto Ld4
            boolean r10 = r2.isEditingName()
            if (r10 == 0) goto Lc5
            goto Lc6
        Lc5:
            r6 = r7
        Lc6:
            android.content.Context r10 = r9.getContext()
            java.lang.String r10 = r10.getString(r6)
            com.android.launcher3.compat.AccessibilityManagerCompat.sendCustomAccessibilityEvent(r9, r5, r10)
            r9.mHoverPointClosesFolder = r8
            return r8
        Ld4:
            if (r10 != 0) goto Ld7
            return r8
        Ld7:
            r9.mHoverPointClosesFolder = r1
        Ld9:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.dragndrop.DragLayer.onInterceptHoverEvent(android.view.MotionEvent):boolean");
    }

    @Override // q1.InterfaceC1363c
    public final void onOverlayScrollChanged(float f4) {
        float interpolation = 1.0f - ((DecelerateInterpolator) e.f12931E).getInterpolation(f4);
        float measuredWidth = getMeasuredWidth() * f4;
        if (this.mIsRtl) {
            measuredWidth = -measuredWidth;
        }
        setTranslationX(measuredWidth);
        getAlphaProperty(0).setValue(interpolation);
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup
    public final boolean onRequestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        if (((Launcher) this.mActivity).getAccessibilityDelegate().isInAccessibleDrag() && (view instanceof DropTargetBar)) {
            return true;
        }
        return super.onRequestSendAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // com.android.launcher3.InsettableFrameLayout, android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        updateChildIndices();
        ((Launcher) this.mActivity).onDragLayerHierarchyChanged();
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        updateChildIndices();
        ((Launcher) this.mActivity).onDragLayerHierarchyChanged();
    }

    public final void playDropAnimation(DragView dragView, Animator animator, int i4) {
        Animator animator2 = this.mDropAnim;
        if (animator2 != null) {
            animator2.cancel();
        }
        this.mDropView = dragView;
        this.mDropAnim = animator;
        animator.addListener(AnimatorListeners.forEndCallback(new d(this, 0)));
        if (i4 == 0) {
            this.mDropAnim.addListener(AnimatorListeners.forEndCallback(new d(this, 1)));
        }
        this.mDropAnim.start();
    }

    @Override // com.android.launcher3.views.BaseDragLayer
    public final void recreateControllers() {
        this.mControllers = ((Launcher) this.mActivity).createTouchControllers();
    }

    public final void setup(LauncherDragController launcherDragController, Workspace workspace) {
        this.mDragController = launcherDragController;
        recreateControllers();
        this.mWorkspaceDragScrim = new Scrim(this);
        workspace.addOverlayCallback(this);
    }

    public final void animateViewIntoPosition(DragView dragView, int i4, int i5, float f4, float f5, float f6, Runnable runnable, int i6, int i7, View view) {
        animateView(dragView, new Rect(i4, i5, dragView.getMeasuredWidth() + i4, dragView.getMeasuredHeight() + i5), f4, f5, f6, i7, null, runnable, i6, view);
    }
}
