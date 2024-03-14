package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import com.android.launcher3.FirstFrameAnimatorHelper;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.keyboard.ViewGroupFocusHelper;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.PendingRequestArgs;
import com.android.launcher3.views.ArrowTipView;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.util.WidgetSizes;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class AppWidgetResizeFrame extends AbstractFloatingView implements View.OnKeyListener {

    /* renamed from: d */
    public static final /* synthetic */ int f4410d = 0;
    private static final Rect sTmpRect = new Rect();
    private static final Rect sTmpRect2 = new Rect();
    private final InstanceId logInstanceId;
    private final int mBackgroundPadding;
    private final IntRange mBaselineX;
    private final IntRange mBaselineY;
    private boolean mBottomBorderActive;
    private int mBottomTouchRegionAdjustment;
    private CellLayout mCellLayout;
    private int mDeltaX;
    private int mDeltaXAddOn;
    private final IntRange mDeltaXRange;
    private int mDeltaY;
    private int mDeltaYAddOn;
    private final IntRange mDeltaYRange;
    private final int[] mDirectionVector;
    private final float mDragAcrossTwoPanelOpacityMargin;
    private final View[] mDragHandles;
    private DragLayer mDragLayer;
    private final ViewGroupFocusHelper mDragLayerRelativeCoordinateHelper;
    private final FirstFrameAnimatorHelper mFirstFrameAnimatorHelper;
    private boolean mHorizontalResizeActive;
    private final int[] mLastDirectionVector;
    private final Launcher mLauncher;
    private boolean mLeftBorderActive;
    private int mMaxHSpan;
    private int mMaxVSpan;
    private int mMinHSpan;
    private int mMinVSpan;
    private ImageButton mReconfigureButton;
    private boolean mRightBorderActive;
    private int mRunningHInc;
    private int mRunningVInc;
    private final DragViewStateAnnouncer mStateAnnouncer;
    private final List mSystemGestureExclusionRects;
    private final IntRange mTempRange1;
    private final IntRange mTempRange2;
    private boolean mTopBorderActive;
    private int mTopTouchRegionAdjustment;
    private final int mTouchTargetWidth;
    private boolean mVerticalResizeActive;
    private LauncherAppWidgetHostView mWidgetView;
    private int mXDown;
    private int mYDown;

    /* loaded from: classes.dex */
    public final class IntRange {
        public int end;
        public int start;

        public final void applyDelta(boolean z4, boolean z5, int i4, IntRange intRange) {
            intRange.start = z4 ? this.start + i4 : this.start;
            int i5 = this.end;
            if (z5) {
                i5 += i4;
            }
            intRange.end = i5;
        }

        public final int applyDeltaAndBound(boolean z4, boolean z5, int i4, int i5, int i6, int i7, IntRange intRange) {
            applyDelta(z4, z5, i4, intRange);
            if (intRange.start < 0) {
                intRange.start = 0;
            }
            if (intRange.end > i7) {
                intRange.end = i7;
            }
            int i8 = intRange.end;
            int i9 = intRange.start;
            if (i8 - i9 < i5) {
                if (z4) {
                    intRange.start = i8 - i5;
                } else if (z5) {
                    intRange.end = i9 + i5;
                }
            }
            int i10 = intRange.end;
            int i11 = intRange.start;
            if (i10 - i11 > i6) {
                if (z4) {
                    intRange.start = i10 - i6;
                } else if (z5) {
                    intRange.end = i11 + i6;
                }
            }
            return z5 ? (intRange.end - intRange.start) - (this.end - this.start) : (this.end - this.start) - (intRange.end - intRange.start);
        }
    }

    public AppWidgetResizeFrame(Context context) {
        this(context, null);
    }

    public static /* synthetic */ void b(AppWidgetResizeFrame appWidgetResizeFrame) {
        appWidgetResizeFrame.mLauncher.setWaitingForResult(PendingRequestArgs.forWidgetInfo(appWidgetResizeFrame.mWidgetView.getAppWidgetId(), null, (ItemInfo) appWidgetResizeFrame.mWidgetView.getTag()));
        appWidgetResizeFrame.mLauncher.getAppWidgetHolder().startConfigActivity(appWidgetResizeFrame.mLauncher, appWidgetResizeFrame.mWidgetView.getAppWidgetId(), 13);
    }

    public static void c(AppWidgetResizeFrame appWidgetResizeFrame) {
        ArrowTipView showAroundRect;
        appWidgetResizeFrame.getClass();
        Rect rect = new Rect();
        if (appWidgetResizeFrame.mReconfigureButton.getGlobalVisibleRect(rect)) {
            int dimensionPixelSize = appWidgetResizeFrame.mLauncher.getResources().getDimensionPixelSize(R.dimen.widget_reconfigure_tip_top_margin);
            showAroundRect = new ArrowTipView(appWidgetResizeFrame.mLauncher, true).showAroundRect(appWidgetResizeFrame.getContext().getString(R.string.reconfigurable_widget_education_tip), (appWidgetResizeFrame.mReconfigureButton.getWidth() / 2) + rect.left, rect, dimensionPixelSize);
        } else {
            showAroundRect = null;
        }
        if (showAroundRect != null) {
            appWidgetResizeFrame.mLauncher.getSharedPrefs().edit().putBoolean("launcher.reconfigurable_widget_education_tip_seen", true).apply();
        }
    }

    private void getSnappedRectRelativeToDragLayer(Rect rect) {
        float scaleToFit = this.mWidgetView.getScaleToFit();
        this.mDragLayer.getViewRectRelativeToSelf(this.mWidgetView, rect);
        int round = Math.round(rect.width() * scaleToFit) + (this.mBackgroundPadding * 2);
        int round2 = Math.round(scaleToFit * rect.height()) + (this.mBackgroundPadding * 2);
        int i4 = rect.left;
        int i5 = this.mBackgroundPadding;
        int i6 = i4 - i5;
        int i7 = rect.top - i5;
        rect.left = i6;
        rect.top = i7;
        rect.right = i6 + round;
        rect.bottom = i7 + round2;
    }

    private boolean handleTouchDown(MotionEvent motionEvent) {
        Rect rect = new Rect();
        int x4 = (int) motionEvent.getX();
        int y4 = (int) motionEvent.getY();
        getHitRect(rect);
        if (rect.contains(x4, y4)) {
            int left = x4 - getLeft();
            int top = y4 - getTop();
            this.mLeftBorderActive = left < this.mTouchTargetWidth && this.mHorizontalResizeActive;
            int width = getWidth();
            int i4 = this.mTouchTargetWidth;
            this.mRightBorderActive = left > width - i4 && this.mHorizontalResizeActive;
            this.mTopBorderActive = top < i4 + this.mTopTouchRegionAdjustment && this.mVerticalResizeActive;
            boolean z4 = top > (getHeight() - this.mTouchTargetWidth) + this.mBottomTouchRegionAdjustment && this.mVerticalResizeActive;
            this.mBottomBorderActive = z4;
            boolean z5 = this.mLeftBorderActive;
            boolean z6 = z5 || this.mRightBorderActive || this.mTopBorderActive || z4;
            if (z6) {
                this.mDragHandles[0].setAlpha(z5 ? 1.0f : 0.0f);
                this.mDragHandles[2].setAlpha(this.mRightBorderActive ? 1.0f : 0.0f);
                this.mDragHandles[1].setAlpha(this.mTopBorderActive ? 1.0f : 0.0f);
                this.mDragHandles[3].setAlpha(this.mBottomBorderActive ? 1.0f : 0.0f);
            }
            if (this.mLeftBorderActive) {
                IntRange intRange = this.mDeltaXRange;
                intRange.start = -getLeft();
                intRange.end = getWidth() - (this.mTouchTargetWidth * 2);
            } else if (this.mRightBorderActive) {
                IntRange intRange2 = this.mDeltaXRange;
                intRange2.start = (this.mTouchTargetWidth * 2) - getWidth();
                intRange2.end = this.mDragLayer.getWidth() - getRight();
            } else {
                IntRange intRange3 = this.mDeltaXRange;
                intRange3.start = 0;
                intRange3.end = 0;
            }
            IntRange intRange4 = this.mBaselineX;
            int left2 = getLeft();
            int right = getRight();
            intRange4.start = left2;
            intRange4.end = right;
            if (this.mTopBorderActive) {
                IntRange intRange5 = this.mDeltaYRange;
                intRange5.start = -getTop();
                intRange5.end = getHeight() - (this.mTouchTargetWidth * 2);
            } else if (this.mBottomBorderActive) {
                IntRange intRange6 = this.mDeltaYRange;
                intRange6.start = (this.mTouchTargetWidth * 2) - getHeight();
                intRange6.end = this.mDragLayer.getHeight() - getBottom();
            } else {
                IntRange intRange7 = this.mDeltaYRange;
                intRange7.start = 0;
                intRange7.end = 0;
            }
            IntRange intRange8 = this.mBaselineY;
            int top2 = getTop();
            int bottom = getBottom();
            intRange8.start = top2;
            intRange8.end = bottom;
            if (z6) {
                this.mXDown = x4;
                this.mYDown = y4;
                return true;
            }
        }
        return false;
    }

    private void resizeWidgetIfNeeded(boolean z4) {
        Point point;
        ViewGroup.LayoutParams layoutParams = this.mWidgetView.getLayoutParams();
        if (layoutParams instanceof CellLayoutLayoutParams) {
            DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
            CellLayout cellLayout = this.mCellLayout;
            int i4 = cellLayout.mCellWidth;
            float f4 = cellLayout.mCellHeight + deviceProfile.cellLayoutBorderSpacePx.y;
            float f5 = ((this.mDeltaX + this.mDeltaXAddOn) / (i4 + point.x)) - this.mRunningHInc;
            int round = Math.abs(f5) > 0.66f ? Math.round(f5) : 0;
            float f6 = ((this.mDeltaY + this.mDeltaYAddOn) / f4) - this.mRunningVInc;
            int round2 = Math.abs(f6) > 0.66f ? Math.round(f6) : 0;
            if (!z4 && round == 0 && round2 == 0) {
                return;
            }
            int[] iArr = this.mDirectionVector;
            iArr[0] = 0;
            iArr[1] = 0;
            CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) layoutParams;
            int i5 = cellLayoutLayoutParams.cellHSpan;
            int i6 = cellLayoutLayoutParams.cellVSpan;
            int tmpCellX = cellLayoutLayoutParams.useTmpCoords ? cellLayoutLayoutParams.getTmpCellX() : cellLayoutLayoutParams.getCellX();
            int tmpCellY = cellLayoutLayoutParams.useTmpCoords ? cellLayoutLayoutParams.getTmpCellY() : cellLayoutLayoutParams.getCellY();
            IntRange intRange = this.mTempRange1;
            intRange.start = tmpCellX;
            intRange.end = i5 + tmpCellX;
            int applyDeltaAndBound = intRange.applyDeltaAndBound(this.mLeftBorderActive, this.mRightBorderActive, round, this.mMinHSpan, this.mMaxHSpan, this.mCellLayout.mCountX, this.mTempRange2);
            IntRange intRange2 = this.mTempRange2;
            int i7 = intRange2.start;
            int i8 = intRange2.end - i7;
            if (applyDeltaAndBound != 0) {
                this.mDirectionVector[0] = this.mLeftBorderActive ? -1 : 1;
            }
            IntRange intRange3 = this.mTempRange1;
            intRange3.start = tmpCellY;
            intRange3.end = i6 + tmpCellY;
            int applyDeltaAndBound2 = intRange3.applyDeltaAndBound(this.mTopBorderActive, this.mBottomBorderActive, round2, this.mMinVSpan, this.mMaxVSpan, this.mCellLayout.mCountY, intRange2);
            IntRange intRange4 = this.mTempRange2;
            int i9 = intRange4.start;
            int i10 = intRange4.end - i9;
            if (applyDeltaAndBound2 != 0) {
                this.mDirectionVector[1] = this.mTopBorderActive ? -1 : 1;
            }
            if (!z4 && applyDeltaAndBound2 == 0 && applyDeltaAndBound == 0) {
                return;
            }
            if (z4) {
                int[] iArr2 = this.mDirectionVector;
                int[] iArr3 = this.mLastDirectionVector;
                iArr2[0] = iArr3[0];
                iArr2[1] = iArr3[1];
            } else {
                int[] iArr4 = this.mLastDirectionVector;
                int[] iArr5 = this.mDirectionVector;
                iArr4[0] = iArr5[0];
                iArr4[1] = iArr5[1];
            }
            if (this.mCellLayout.createAreaForResize(i7, i9, i8, i10, this.mWidgetView, this.mDirectionVector, z4)) {
                DragViewStateAnnouncer dragViewStateAnnouncer = this.mStateAnnouncer;
                if (dragViewStateAnnouncer != null && (cellLayoutLayoutParams.cellHSpan != i8 || cellLayoutLayoutParams.cellVSpan != i10)) {
                    dragViewStateAnnouncer.announce(this.mLauncher.getString(R.string.widget_resized, new Object[]{Integer.valueOf(i8), Integer.valueOf(i10)}));
                }
                cellLayoutLayoutParams.setTmpCellX(i7);
                cellLayoutLayoutParams.setTmpCellY(i9);
                cellLayoutLayoutParams.cellHSpan = i8;
                cellLayoutLayoutParams.cellVSpan = i10;
                this.mRunningVInc += applyDeltaAndBound2;
                this.mRunningHInc += applyDeltaAndBound;
                if (!z4) {
                    WidgetSizes.updateWidgetSizeRanges(this.mWidgetView, this.mLauncher, i8, i10);
                }
            }
            this.mWidgetView.requestLayout();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:93:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void showForWidget(com.android.launcher3.widget.LauncherAppWidgetHostView r8, com.android.launcher3.CellLayout r9) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.AppWidgetResizeFrame.showForWidget(com.android.launcher3.widget.LauncherAppWidgetHostView, com.android.launcher3.CellLayout):void");
    }

    public void snapToWidget(boolean z4) {
        Rect rect = sTmpRect;
        getSnappedRectRelativeToDragLayer(rect);
        int width = rect.width();
        int height = rect.height();
        int i4 = rect.left;
        int i5 = rect.top;
        if (i5 < 0) {
            this.mTopTouchRegionAdjustment = -i5;
        } else {
            this.mTopTouchRegionAdjustment = 0;
        }
        int i6 = i5 + height;
        if (i6 > this.mDragLayer.getHeight()) {
            this.mBottomTouchRegionAdjustment = -(i6 - this.mDragLayer.getHeight());
        } else {
            this.mBottomTouchRegionAdjustment = 0;
        }
        BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) getLayoutParams();
        CellLayout screenPair = this.mCellLayout.getParent() instanceof Workspace ? ((Workspace) this.mCellLayout.getParent()).getScreenPair(this.mCellLayout) : null;
        if (z4) {
            ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(layoutParams, PropertyValuesHolder.ofInt(LauncherAnimUtils.LAYOUT_WIDTH, ((FrameLayout.LayoutParams) layoutParams).width, width), PropertyValuesHolder.ofInt(LauncherAnimUtils.LAYOUT_HEIGHT, ((FrameLayout.LayoutParams) layoutParams).height, height), PropertyValuesHolder.ofInt(BaseDragLayer.LAYOUT_X, layoutParams.f5328x, i4), PropertyValuesHolder.ofInt(BaseDragLayer.LAYOUT_Y, layoutParams.f5329y, i5));
            FirstFrameAnimatorHelper firstFrameAnimatorHelper = this.mFirstFrameAnimatorHelper;
            firstFrameAnimatorHelper.getClass();
            ofPropertyValuesHolder.addUpdateListener(new FirstFrameAnimatorHelper.MyListener());
            ofPropertyValuesHolder.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.c
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    AppWidgetResizeFrame appWidgetResizeFrame = AppWidgetResizeFrame.this;
                    int i7 = AppWidgetResizeFrame.f4410d;
                    appWidgetResizeFrame.requestLayout();
                }
            });
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(ofPropertyValuesHolder);
            for (int i7 = 0; i7 < 4; i7++) {
                FirstFrameAnimatorHelper firstFrameAnimatorHelper2 = this.mFirstFrameAnimatorHelper;
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mDragHandles[i7], LinearLayout.ALPHA, 1.0f);
                firstFrameAnimatorHelper2.getClass();
                ofFloat.addUpdateListener(new FirstFrameAnimatorHelper.MyListener());
                animatorSet.play(ofFloat);
            }
            if (screenPair != null) {
                updateInvalidResizeEffect(this.mCellLayout, screenPair, 1.0f, 0.0f, animatorSet);
            }
            animatorSet.setDuration(150L);
            animatorSet.start();
        } else {
            ((FrameLayout.LayoutParams) layoutParams).width = width;
            ((FrameLayout.LayoutParams) layoutParams).height = height;
            layoutParams.f5328x = i4;
            layoutParams.f5329y = i5;
            for (int i8 = 0; i8 < 4; i8++) {
                this.mDragHandles[i8].setAlpha(1.0f);
            }
            if (screenPair != null) {
                updateInvalidResizeEffect(this.mCellLayout, screenPair, 1.0f, 0.0f, null);
            }
            requestLayout();
        }
        setFocusableInTouchMode(true);
        requestFocus();
    }

    private void updateInvalidResizeEffect(final CellLayout cellLayout, final CellLayout cellLayout2, float f4, float f5, AnimatorSet animatorSet) {
        int childCount = cellLayout2.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = cellLayout2.getChildAt(i4);
            if (animatorSet != null) {
                FirstFrameAnimatorHelper firstFrameAnimatorHelper = this.mFirstFrameAnimatorHelper;
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(childAt, LinearLayout.ALPHA, f4);
                firstFrameAnimatorHelper.getClass();
                ofFloat.addUpdateListener(new FirstFrameAnimatorHelper.MyListener());
                animatorSet.play(ofFloat);
            } else {
                childAt.setAlpha(f4);
            }
        }
        if (animatorSet != null) {
            FirstFrameAnimatorHelper firstFrameAnimatorHelper2 = this.mFirstFrameAnimatorHelper;
            FloatProperty floatProperty = CellLayout.SPRING_LOADED_PROGRESS;
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(cellLayout, floatProperty, f5);
            firstFrameAnimatorHelper2.getClass();
            ofFloat2.addUpdateListener(new FirstFrameAnimatorHelper.MyListener());
            animatorSet.play(ofFloat2);
            FirstFrameAnimatorHelper firstFrameAnimatorHelper3 = this.mFirstFrameAnimatorHelper;
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(cellLayout2, floatProperty, f5);
            firstFrameAnimatorHelper3.getClass();
            ofFloat3.addUpdateListener(new FirstFrameAnimatorHelper.MyListener());
            animatorSet.play(ofFloat3);
        } else {
            cellLayout.setSpringLoadedProgress(f5);
            cellLayout2.setSpringLoadedProgress(f5);
        }
        final boolean z4 = f5 > 0.0f;
        if (animatorSet != null) {
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.AppWidgetResizeFrame.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    cellLayout.setIsDragOverlapping(z4);
                    cellLayout2.setIsDragOverlapping(z4);
                }
            });
            return;
        }
        cellLayout.setIsDragOverlapping(z4);
        cellLayout2.setIsDragOverlapping(z4);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        this.mDragLayer.removeView(this);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 8) != 0;
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && handleTouchDown(motionEvent)) {
            return true;
        }
        int x4 = ((int) motionEvent.getX()) - getLeft();
        int y4 = ((int) motionEvent.getY()) - getTop();
        ImageButton imageButton = this.mReconfigureButton;
        Rect rect = sTmpRect;
        imageButton.getHitRect(rect);
        if (rect.contains(x4, y4)) {
            return false;
        }
        close(false);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0017, code lost:
        if (r0 != 3) goto L9;
     */
    @Override // com.android.launcher3.AbstractFloatingView, com.android.launcher3.util.TouchController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onControllerTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            int r0 = r5.getAction()
            float r1 = r5.getX()
            int r1 = (int) r1
            float r2 = r5.getY()
            int r2 = (int) r2
            if (r0 == 0) goto L5d
            r5 = 1
            if (r0 == r5) goto L24
            r3 = 2
            if (r0 == r3) goto L1a
            r3 = 3
            if (r0 == r3) goto L24
            goto L5c
        L1a:
            int r0 = r4.mXDown
            int r1 = r1 - r0
            int r0 = r4.mYDown
            int r2 = r2 - r0
            r4.visualizeResizeForDelta(r1, r2)
            goto L5c
        L24:
            int r0 = r4.mXDown
            int r1 = r1 - r0
            int r0 = r4.mYDown
            int r2 = r2 - r0
            r4.visualizeResizeForDelta(r1, r2)
            com.android.launcher3.Launcher r0 = r4.mLauncher
            com.android.launcher3.DeviceProfile r0 = r0.getDeviceProfile()
            com.android.launcher3.CellLayout r1 = r4.mCellLayout
            int r2 = r1.mCellWidth
            android.graphics.Point r0 = r0.cellLayoutBorderSpacePx
            int r3 = r0.x
            int r2 = r2 + r3
            int r1 = r1.mCellHeight
            int r0 = r0.y
            int r1 = r1 + r0
            int r0 = r4.mRunningHInc
            int r0 = r0 * r2
            r4.mDeltaXAddOn = r0
            int r0 = r4.mRunningVInc
            int r0 = r0 * r1
            r4.mDeltaYAddOn = r0
            r0 = 0
            r4.mDeltaX = r0
            r4.mDeltaY = r0
            com.android.launcher3.b r1 = new com.android.launcher3.b
            r1.<init>(r4, r0)
            r4.post(r1)
            r4.mYDown = r0
            r4.mXDown = r0
        L5c:
            return r5
        L5d:
            boolean r4 = r4.handleTouchDown(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.AppWidgetResizeFrame.onControllerTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        resizeWidgetIfNeeded(true);
        this.mLauncher.getStatsLogManager().logger().withInstanceId(this.logInstanceId).withItemInfo((ItemInfo) this.mWidgetView.getTag()).log(StatsLogManager.LauncherEvent.LAUNCHER_WIDGET_RESIZE_COMPLETED);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mDragHandles[0] = findViewById(R.id.widget_resize_left_handle);
        this.mDragHandles[1] = findViewById(R.id.widget_resize_top_handle);
        this.mDragHandles[2] = findViewById(R.id.widget_resize_right_handle);
        this.mDragHandles[3] = findViewById(R.id.widget_resize_bottom_handle);
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i4, KeyEvent keyEvent) {
        if (i4 == 21 || i4 == 22 || i4 == 19 || i4 == 20 || i4 == 122 || i4 == 123 || i4 == 92 || i4 == 93) {
            close(false);
            this.mWidgetView.requestFocus();
            return true;
        }
        return false;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        if (Utilities.ATLEAST_Q) {
            for (int i8 = 0; i8 < 4; i8++) {
                View view = this.mDragHandles[i8];
                ((Rect) ((ArrayList) this.mSystemGestureExclusionRects).get(i8)).set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            setSystemGestureExclusionRects(this.mSystemGestureExclusionRects);
        }
    }

    public final void visualizeResizeForDelta(int i4, int i5) {
        Workspace workspace;
        CellLayout screenPair;
        float f4;
        int i6;
        float f5;
        float f6;
        int i7;
        IntRange intRange = this.mDeltaXRange;
        this.mDeltaX = Utilities.boundToRange(i4, intRange.start, intRange.end);
        IntRange intRange2 = this.mDeltaYRange;
        this.mDeltaY = Utilities.boundToRange(i5, intRange2.start, intRange2.end);
        BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) getLayoutParams();
        IntRange intRange3 = this.mDeltaXRange;
        int boundToRange = Utilities.boundToRange(i4, intRange3.start, intRange3.end);
        this.mDeltaX = boundToRange;
        this.mBaselineX.applyDelta(this.mLeftBorderActive, this.mRightBorderActive, boundToRange, this.mTempRange1);
        IntRange intRange4 = this.mTempRange1;
        int i8 = intRange4.start;
        layoutParams.f5328x = i8;
        ((FrameLayout.LayoutParams) layoutParams).width = intRange4.end - i8;
        IntRange intRange5 = this.mDeltaYRange;
        int boundToRange2 = Utilities.boundToRange(i5, intRange5.start, intRange5.end);
        this.mDeltaY = boundToRange2;
        this.mBaselineY.applyDelta(this.mTopBorderActive, this.mBottomBorderActive, boundToRange2, this.mTempRange1);
        IntRange intRange6 = this.mTempRange1;
        int i9 = intRange6.start;
        layoutParams.f5329y = i9;
        ((FrameLayout.LayoutParams) layoutParams).height = intRange6.end - i9;
        resizeWidgetIfNeeded(false);
        Rect rect = sTmpRect;
        getSnappedRectRelativeToDragLayer(rect);
        if (this.mLeftBorderActive) {
            ((FrameLayout.LayoutParams) layoutParams).width = (rect.width() + rect.left) - layoutParams.f5328x;
        }
        if (this.mTopBorderActive) {
            ((FrameLayout.LayoutParams) layoutParams).height = (rect.height() + rect.top) - layoutParams.f5329y;
        }
        if (this.mRightBorderActive) {
            layoutParams.f5328x = rect.left;
        }
        if (this.mBottomBorderActive) {
            layoutParams.f5329y = rect.top;
        }
        if ((this.mCellLayout.getParent() instanceof Workspace) && (screenPair = (workspace = (Workspace) this.mCellLayout.getParent()).getScreenPair(this.mCellLayout)) != null) {
            this.mDragLayerRelativeCoordinateHelper.viewToRect((View) this.mCellLayout, rect);
            Rect rect2 = sTmpRect2;
            findViewById(R.id.widget_resize_frame).getGlobalVisibleRect(rect2);
            if (workspace.indexOfChild(screenPair) < workspace.indexOfChild(this.mCellLayout) && (i7 = this.mDeltaX) < 0 && rect2.left < rect.left) {
                f5 = this.mDragAcrossTwoPanelOpacityMargin;
                f6 = i7 + f5;
            } else if (workspace.indexOfChild(screenPair) <= workspace.indexOfChild(this.mCellLayout) || (i6 = this.mDeltaX) <= 0 || rect2.right <= rect.right) {
                f4 = 1.0f;
                updateInvalidResizeEffect(this.mCellLayout, screenPair, Math.max(0.5f, f4), Math.min(1.0f, 1.0f - f4), null);
            } else {
                f5 = this.mDragAcrossTwoPanelOpacityMargin;
                f6 = f5 - i6;
            }
            f4 = f6 / f5;
            updateInvalidResizeEffect(this.mCellLayout, screenPair, Math.max(0.5f, f4), Math.min(1.0f, 1.0f - f4), null);
        }
        requestLayout();
    }

    public AppWidgetResizeFrame(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppWidgetResizeFrame(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mDragHandles = new View[4];
        this.mSystemGestureExclusionRects = new ArrayList(4);
        this.mDirectionVector = new int[2];
        this.mLastDirectionVector = new int[2];
        this.mTempRange1 = new IntRange();
        this.mTempRange2 = new IntRange();
        this.mDeltaXRange = new IntRange();
        this.mBaselineX = new IntRange();
        this.mDeltaYRange = new IntRange();
        this.mBaselineY = new IntRange();
        this.logInstanceId = new InstanceIdSequence().newInstanceId();
        this.mTopTouchRegionAdjustment = 0;
        this.mBottomTouchRegionAdjustment = 0;
        this.mLauncher = Launcher.getLauncher(context);
        this.mStateAnnouncer = DragViewStateAnnouncer.createFor(this);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.resize_frame_background_padding);
        this.mBackgroundPadding = dimensionPixelSize;
        this.mTouchTargetWidth = dimensionPixelSize * 2;
        this.mFirstFrameAnimatorHelper = new FirstFrameAnimatorHelper(this);
        for (int i5 = 0; i5 < 4; i5++) {
            ((ArrayList) this.mSystemGestureExclusionRects).add(new Rect());
        }
        this.mDragAcrossTwoPanelOpacityMargin = this.mLauncher.getResources().getDimensionPixelSize(R.dimen.resize_frame_invalid_drag_across_two_panel_opacity_margin);
        this.mDragLayerRelativeCoordinateHelper = new ViewGroupFocusHelper(this.mLauncher.mDragLayer);
    }
}
