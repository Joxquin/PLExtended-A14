package com.android.launcher3.views;

import android.content.Context;
import android.graphics.Insets;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.util.window.RefreshRateTracker;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import java.io.PrintWriter;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class BaseDragLayer extends InsettableFrameLayout {
    public static final Property LAYOUT_X;
    public static final Property LAYOUT_Y;
    private static final int TOUCH_DISPATCHING_FROM_PROXY = 4;
    private static final int TOUCH_DISPATCHING_FROM_VIEW = 1;
    private static final int TOUCH_DISPATCHING_FROM_VIEW_GESTURE_REGION = 2;
    private static final int TOUCH_DISPATCHING_TO_VIEW_IN_PROGRESS = 8;
    protected TouchController mActiveController;
    protected final Context mActivity;
    protected TouchController[] mControllers;
    protected final Rect mHitRect;
    private final MultiValueAlpha mMultiValueAlpha;
    protected TouchController mProxyTouchController;
    @ViewDebug.ExportedProperty(category = "launcher")
    private final RectF mSystemGestureRegion;
    protected final float[] mTmpRectPoints;
    protected final float[] mTmpXY;
    private TouchCompleteListener mTouchCompleteListener;
    private int mTouchDispatchState;

    /* loaded from: classes.dex */
    public interface TouchCompleteListener {
    }

    static {
        Class cls = Integer.TYPE;
        LAYOUT_X = new Property(cls, "x") { // from class: com.android.launcher3.views.BaseDragLayer.1
            @Override // android.util.Property
            public final Object get(Object obj) {
                int i4 = r3;
                switch (i4) {
                    case 0:
                        LayoutParams layoutParams = (LayoutParams) obj;
                        switch (i4) {
                            case 0:
                                return Integer.valueOf(layoutParams.f5328x);
                            default:
                                return Integer.valueOf(layoutParams.f5329y);
                        }
                    default:
                        LayoutParams layoutParams2 = (LayoutParams) obj;
                        switch (i4) {
                            case 0:
                                return Integer.valueOf(layoutParams2.f5328x);
                            default:
                                return Integer.valueOf(layoutParams2.f5329y);
                        }
                }
            }

            @Override // android.util.Property
            public final void set(Object obj, Object obj2) {
                int i4 = r3;
                switch (i4) {
                    case 0:
                        LayoutParams layoutParams = (LayoutParams) obj;
                        Integer num = (Integer) obj2;
                        switch (i4) {
                            case 0:
                                layoutParams.f5328x = num.intValue();
                                return;
                            default:
                                layoutParams.f5329y = num.intValue();
                                return;
                        }
                    default:
                        LayoutParams layoutParams2 = (LayoutParams) obj;
                        Integer num2 = (Integer) obj2;
                        switch (i4) {
                            case 0:
                                layoutParams2.f5328x = num2.intValue();
                                return;
                            default:
                                layoutParams2.f5329y = num2.intValue();
                                return;
                        }
                }
            }
        };
        LAYOUT_Y = new Property(cls, "y") { // from class: com.android.launcher3.views.BaseDragLayer.1
            @Override // android.util.Property
            public final Object get(Object obj) {
                int i4 = r3;
                switch (i4) {
                    case 0:
                        LayoutParams layoutParams = (LayoutParams) obj;
                        switch (i4) {
                            case 0:
                                return Integer.valueOf(layoutParams.f5328x);
                            default:
                                return Integer.valueOf(layoutParams.f5329y);
                        }
                    default:
                        LayoutParams layoutParams2 = (LayoutParams) obj;
                        switch (i4) {
                            case 0:
                                return Integer.valueOf(layoutParams2.f5328x);
                            default:
                                return Integer.valueOf(layoutParams2.f5329y);
                        }
                }
            }

            @Override // android.util.Property
            public final void set(Object obj, Object obj2) {
                int i4 = r3;
                switch (i4) {
                    case 0:
                        LayoutParams layoutParams = (LayoutParams) obj;
                        Integer num = (Integer) obj2;
                        switch (i4) {
                            case 0:
                                layoutParams.f5328x = num.intValue();
                                return;
                            default:
                                layoutParams.f5329y = num.intValue();
                                return;
                        }
                    default:
                        LayoutParams layoutParams2 = (LayoutParams) obj;
                        Integer num2 = (Integer) obj2;
                        switch (i4) {
                            case 0:
                                layoutParams2.f5328x = num2.intValue();
                                return;
                            default:
                                layoutParams2.f5329y = num2.intValue();
                                return;
                        }
                }
            }
        };
    }

    public BaseDragLayer(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet);
        this.mTmpXY = new float[2];
        this.mTmpRectPoints = new float[4];
        this.mHitRect = new Rect();
        this.mSystemGestureRegion = new RectF();
        this.mTouchDispatchState = 0;
        this.mActivity = ActivityContext.lookupContext(context);
        this.mMultiValueAlpha = new MultiValueAlpha(i4, this, 4);
    }

    private TouchController findControllerToHandleTouch(MotionEvent motionEvent) {
        TouchController[] touchControllerArr;
        AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView((ActivityContext) this.mActivity);
        if (topOpenView == null || !((isEventInLauncher(motionEvent) || topOpenView.canInterceptEventsInSystemGestureRegion()) && topOpenView.onControllerInterceptTouchEvent(motionEvent))) {
            for (TouchController touchController : this.mControllers) {
                if (touchController.onControllerInterceptTouchEvent(motionEvent)) {
                    return touchController;
                }
            }
            return null;
        }
        return topOpenView;
    }

    private boolean isEventInLauncher(MotionEvent motionEvent) {
        float x4 = motionEvent.getX();
        float y4 = motionEvent.getY();
        if (x4 >= this.mSystemGestureRegion.left) {
            RectF rectF = this.mSystemGestureRegion;
            if (x4 < getWidth() - rectF.right && y4 >= rectF.top && y4 < getHeight() - this.mSystemGestureRegion.bottom) {
                return true;
            }
        }
        return false;
    }

    public void addAccessibleChildToList(View view, ArrayList arrayList) {
        if (view.isImportantForAccessibility()) {
            arrayList.add(view);
        } else {
            view.addChildrenForAccessibility(arrayList);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addChildrenForAccessibility(ArrayList arrayList) {
        AbstractFloatingView topOpenViewWithType = AbstractFloatingView.getTopOpenViewWithType((ActivityContext) this.mActivity, AbstractFloatingView.TYPE_ACCESSIBLE);
        if (topOpenViewWithType != null) {
            addAccessibleChildToList(topOpenViewWithType, arrayList);
        } else {
            super.addChildrenForAccessibility(arrayList);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList arrayList, int i4, int i5) {
        AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView((ActivityContext) this.mActivity);
        if (topOpenView != null) {
            topOpenView.addFocusables(arrayList, i4);
        } else {
            super.addFocusables(arrayList, i4, i5);
        }
    }

    public boolean canFindActiveController() {
        return (this.mTouchDispatchState & 6) == 0;
    }

    @Override // com.android.launcher3.InsettableFrameLayout, android.widget.FrameLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        if (Utilities.ATLEAST_Q) {
            Insets mandatorySystemGestureInsets = windowInsets.getMandatorySystemGestureInsets();
            int i4 = mandatorySystemGestureInsets.bottom;
            Insets insets = Utilities.ATLEAST_R ? windowInsets.getInsets(WindowInsets.Type.ime()) : Insets.NONE;
            DeviceProfile deviceProfile = ((ActivityContext) this.mActivity).getDeviceProfile();
            if (deviceProfile.isTaskbarPresent) {
                i4 = Math.max(0, i4 - deviceProfile.taskbarHeight);
            }
            this.mSystemGestureRegion.set(Math.max(mandatorySystemGestureInsets.left, insets.left), Math.max(mandatorySystemGestureInsets.top, insets.top), Math.max(mandatorySystemGestureInsets.right, insets.right), Math.max(i4, insets.bottom));
        }
        return super.dispatchApplyWindowInsets(windowInsets);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            if ((this.mTouchDispatchState & 8) != 0) {
                int action2 = motionEvent.getAction();
                motionEvent.setAction(3);
                super.dispatchTouchEvent(motionEvent);
                motionEvent.setAction(action2);
            }
            this.mTouchDispatchState |= 9;
            if (isEventInLauncher(motionEvent)) {
                this.mTouchDispatchState &= -3;
            } else {
                this.mTouchDispatchState |= 2;
            }
        } else if (action == 1 || action == 3) {
            this.mTouchDispatchState = this.mTouchDispatchState & (-3) & (-2) & (-9);
        }
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    public void dump(String str, PrintWriter printWriter) {
        printWriter.println(str + "DragLayer:");
        if (this.mActiveController != null) {
            StringBuilder a4 = t.j.a(str, "\tactiveController: ");
            a4.append(this.mActiveController);
            printWriter.println(a4.toString());
            TouchController touchController = this.mActiveController;
            touchController.dump(str + "\t", printWriter);
        }
        StringBuilder a5 = t.j.a(str, "\tdragLayerAlpha : ");
        a5.append(this.mMultiValueAlpha);
        printWriter.println(a5.toString());
    }

    public boolean findActiveController(MotionEvent motionEvent) {
        this.mActiveController = null;
        if (canFindActiveController()) {
            this.mActiveController = findControllerToHandleTouch(motionEvent);
        }
        return this.mActiveController != null;
    }

    public MultiPropertyFactory.MultiProperty getAlphaProperty(int i4) {
        return this.mMultiValueAlpha.get(i4);
    }

    public float getDescendantCoordRelativeToSelf(View view, float[] fArr, boolean z4) {
        return Utilities.getDescendantCoordRelativeToAncestor(view, this, fArr, z4, false);
    }

    public float getDescendantRectRelativeToSelf(View view, Rect rect) {
        float[] fArr = this.mTmpRectPoints;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = view.getWidth();
        this.mTmpRectPoints[3] = view.getHeight();
        float descendantCoordRelativeToSelf = getDescendantCoordRelativeToSelf(view, this.mTmpRectPoints);
        float[] fArr2 = this.mTmpRectPoints;
        rect.left = Math.round(Math.min(fArr2[0], fArr2[2]));
        float[] fArr3 = this.mTmpRectPoints;
        rect.top = Math.round(Math.min(fArr3[1], fArr3[3]));
        float[] fArr4 = this.mTmpRectPoints;
        rect.right = Math.round(Math.max(fArr4[0], fArr4[2]));
        float[] fArr5 = this.mTmpRectPoints;
        rect.bottom = Math.round(Math.max(fArr5[1], fArr5[3]));
        return descendantCoordRelativeToSelf;
    }

    public float getLocationInDragLayer(View view, int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        return getDescendantCoordRelativeToSelf(view, iArr);
    }

    public int[] getViewLocationRelativeToSelf(View view) {
        getLocationInWindow(r0);
        int i4 = r0[0];
        int i5 = r0[1];
        view.getLocationInWindow(r0);
        int[] iArr = {iArr[0] - i4, iArr[1] - i5};
        return iArr;
    }

    public void getViewRectRelativeToSelf(View view, Rect rect) {
        int[] viewLocationRelativeToSelf = getViewLocationRelativeToSelf(view);
        int i4 = viewLocationRelativeToSelf[0];
        rect.set(i4, viewLocationRelativeToSelf[1], view.getMeasuredWidth() + i4, view.getMeasuredHeight() + viewLocationRelativeToSelf[1]);
    }

    public boolean isEventOverView(View view, MotionEvent motionEvent) {
        getDescendantRectRelativeToSelf(view, this.mHitRect);
        return this.mHitRect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    public void mapCoordInSelfToDescendant(View view, float[] fArr) {
        Utilities.mapCoordInSelfToDescendant(view, this, fArr);
    }

    public void mapRectInSelfToDescendant(View view, Rect rect) {
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        float[] fArr = {rect.left, rect.top, rect.right, rect.bottom};
        Utilities.mapCoordInSelfToDescendant(view, this, fArr);
        rect.set((int) fArr[0], (int) fArr[1], (int) fArr[2], (int) fArr[3]);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            TouchCompleteListener touchCompleteListener = this.mTouchCompleteListener;
            if (touchCompleteListener != null) {
                ((LauncherAppWidgetHostView) touchCompleteListener).onTouchComplete();
            }
            this.mTouchCompleteListener = null;
        } else if (action == 0) {
            ((ActivityContext) this.mActivity).finishAutoCancelActionMode();
        }
        return findActiveController(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (layoutParams instanceof LayoutParams) {
                LayoutParams layoutParams2 = (LayoutParams) layoutParams;
                if (layoutParams2.customPosition) {
                    int i9 = layoutParams2.f5328x;
                    int i10 = layoutParams2.f5329y;
                    childAt.layout(i9, i10, ((FrameLayout.LayoutParams) layoutParams2).width + i9, ((FrameLayout.LayoutParams) layoutParams2).height + i10);
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i4, Rect rect) {
        AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView((ActivityContext) this.mActivity);
        return topOpenView != null ? topOpenView.requestFocus(i4, rect) : super.onRequestFocusInDescendants(i4, rect);
    }

    @Override // android.view.ViewGroup
    public boolean onRequestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        AbstractFloatingView topOpenViewWithType = AbstractFloatingView.getTopOpenViewWithType((ActivityContext) this.mActivity, AbstractFloatingView.TYPE_ACCESSIBLE);
        if (topOpenViewWithType == null || view == topOpenViewWithType) {
            return super.onRequestSendAccessibilityEvent(view, accessibilityEvent);
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            TouchCompleteListener touchCompleteListener = this.mTouchCompleteListener;
            if (touchCompleteListener != null) {
                ((LauncherAppWidgetHostView) touchCompleteListener).onTouchComplete();
            }
            this.mTouchCompleteListener = null;
        }
        return (this.mActiveController == null || motionEvent.getAction() == 4) ? findActiveController(motionEvent) : this.mActiveController.onControllerTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof AbstractFloatingView) {
            final AbstractFloatingView abstractFloatingView = (AbstractFloatingView) view;
            if (abstractFloatingView.isOpen()) {
                postDelayed(new Runnable() { // from class: com.android.launcher3.views.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractFloatingView.this.close(false);
                    }
                }, RefreshRateTracker.getSingleFrameMs(getContext()));
            }
        }
    }

    public boolean proxyTouchEvent(MotionEvent motionEvent, boolean z4) {
        boolean z5;
        int actionMasked = motionEvent.getActionMasked();
        int i4 = this.mTouchDispatchState;
        boolean z6 = (i4 & 1) != 0;
        if (z4 && !z6 && (actionMasked == 0 || (i4 & 8) != 0)) {
            this.mTouchDispatchState = i4 | 8;
            super.dispatchTouchEvent(motionEvent);
            if (actionMasked == 1 || actionMasked == 3) {
                this.mTouchDispatchState = this.mTouchDispatchState & (-9) & (-5);
            }
            return true;
        }
        TouchController touchController = this.mProxyTouchController;
        if (touchController != null) {
            z5 = touchController.onControllerTouchEvent(motionEvent);
        } else {
            if (actionMasked == 0) {
                if (!z6 || this.mActiveController == null) {
                    this.mTouchDispatchState = i4 | 4;
                } else {
                    this.mTouchDispatchState = i4 & (-5);
                }
            }
            if ((this.mTouchDispatchState & 4) != 0) {
                this.mProxyTouchController = findControllerToHandleTouch(motionEvent);
            }
            z5 = this.mProxyTouchController != null;
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.mProxyTouchController = null;
            this.mTouchDispatchState &= -5;
        }
        return z5;
    }

    public abstract void recreateControllers();

    public void setTouchCompleteListener(TouchCompleteListener touchCompleteListener) {
        this.mTouchCompleteListener = touchCompleteListener;
    }

    /* loaded from: classes.dex */
    public final class LayoutParams extends InsettableFrameLayout.LayoutParams {
        public boolean customPosition;

        /* renamed from: x  reason: collision with root package name */
        public int f5328x;

        /* renamed from: y  reason: collision with root package name */
        public int f5329y;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.customPosition = false;
        }

        public LayoutParams(int i4, int i5) {
            super(i4, i5);
            this.customPosition = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.customPosition = false;
        }
    }

    public float getDescendantCoordRelativeToSelf(View view, int[] iArr) {
        float[] fArr = this.mTmpXY;
        fArr[0] = iArr[0];
        fArr[1] = iArr[1];
        float descendantCoordRelativeToSelf = getDescendantCoordRelativeToSelf(view, fArr);
        float[] fArr2 = this.mTmpXY;
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        for (int i4 = 0; i4 < fArr2.length; i4++) {
            iArr[i4] = Math.round(fArr2[i4]);
        }
        return descendantCoordRelativeToSelf;
    }

    public void mapCoordInSelfToDescendant(View view, int[] iArr) {
        float[] fArr = this.mTmpXY;
        fArr[0] = iArr[0];
        fArr[1] = iArr[1];
        Utilities.mapCoordInSelfToDescendant(view, this, fArr);
        float[] fArr2 = this.mTmpXY;
        for (int i4 = 0; i4 < fArr2.length; i4++) {
            iArr[i4] = Math.round(fArr2[i4]);
        }
    }

    public boolean isEventOverView(View view, MotionEvent motionEvent, View view2) {
        int[] iArr = {(int) motionEvent.getX(), (int) motionEvent.getY()};
        getDescendantCoordRelativeToSelf(view2, iArr);
        getDescendantRectRelativeToSelf(view, this.mHitRect);
        return this.mHitRect.contains(iArr[0], iArr[1]);
    }

    @Override // com.android.launcher3.InsettableFrameLayout, android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // com.android.launcher3.InsettableFrameLayout, android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // com.android.launcher3.InsettableFrameLayout, android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public float getDescendantCoordRelativeToSelf(View view, float[] fArr) {
        return getDescendantCoordRelativeToSelf(view, fArr, false);
    }
}
