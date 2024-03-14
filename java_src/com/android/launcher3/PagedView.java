package com.android.launcher3;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.OverScroller;
import android.widget.ScrollView;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.pageindicators.PageIndicator;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.C0480m;
import com.android.launcher3.util.EdgeEffectCompat;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public abstract class PagedView extends ViewGroup {
    public static final int ACTION_MOVE_ALLOW_EASY_FLING = 254;
    private static final boolean DEBUG = false;
    public static final boolean DEBUG_FAILED_QUICKSWITCH = false;
    public static final int INVALID_PAGE = -1;
    protected static final int INVALID_POINTER = -1;
    private static final float MAX_SCROLL_PROGRESS = 1.0f;
    private static final float RETURN_TO_ORIGINAL_PAGE_THRESHOLD = 0.33f;
    private static final float SIGNIFICANT_MOVE_THRESHOLD = 0.4f;
    protected static final ComputePageScrollsLogic SIMPLE_SCROLL_LOGIC = new C0486v0();
    private static final String TAG = "PagedView";
    protected int mActivePointerId;
    private boolean mAllowEasyFling;
    protected boolean mAllowOverScroll;
    @ViewDebug.ExportedProperty(category = "launcher")
    protected int mCurrentPage;
    protected int mCurrentPageScrollDiff;
    protected int mCurrentScrollOverPage;
    private float mDownMotionPrimary;
    private float mDownMotionX;
    private float mDownMotionY;
    private int mEasyFlingThresholdVelocity;
    protected EdgeEffectCompat mEdgeGlowLeft;
    protected EdgeEffectCompat mEdgeGlowRight;
    protected boolean mFirstLayout;
    private int mFlingThresholdVelocity;
    private boolean mFreeScroll;
    protected final Rect mInsets;
    private boolean mIsBeingDragged;
    protected boolean mIsLayoutValid;
    protected boolean mIsPageInTransition;
    protected boolean mIsRtl;
    private int mLastMotion;
    protected int mMaxScroll;
    private int mMaximumVelocity;
    private int mMinFlingVelocity;
    protected int mMinScroll;
    private int mMinSnapVelocity;
    @ViewDebug.ExportedProperty(category = "launcher")
    protected int mNextPage;
    private final ArrayList mOnPageScrollsInitializedCallbacks;
    private Runnable mOnPageTransitionEndCallback;
    protected PagedOrientationHandler mOrientationHandler;
    protected View mPageIndicator;
    int mPageIndicatorViewId;
    protected int[] mPageScrolls;
    protected int mPageSlop;
    private int mPageSnapAnimationDuration;
    protected int mPageSpacing;
    protected OverScroller mScroller;
    private int[] mTmpIntPair;
    private float mTotalMotion;
    protected int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    /* loaded from: classes.dex */
    public interface ComputePageScrollsLogic {
        boolean shouldIncludeView(View view);
    }

    public PagedView(Context context) {
        this(context, null);
    }

    private void acquireVelocityTrackerAndAddMovement(MotionEvent motionEvent) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
    }

    private void dispatchPageCountChanged() {
        View view = this.mPageIndicator;
        if (view != null) {
            ((PageIndicator) view).setMarkersCount(getChildCount() / getPanelCount());
        }
        invalidate();
    }

    private float distanceInfluenceForSnapDuration(float f4) {
        return (float) Math.sin((float) ((f4 - 0.5f) * 0.4712389167638204d));
    }

    private int ensureWithinScrollBounds(int i4) {
        int i5 = !this.mIsRtl ? 1 : -1;
        int scrollForPage = getScrollForPage(i4);
        while (true) {
            if (scrollForPage >= this.mMinScroll) {
                break;
            }
            i4 += i5;
            int scrollForPage2 = getScrollForPage(i4);
            if (scrollForPage2 <= scrollForPage) {
                Log.e(TAG, "validateNewPage: failed to find a page > mMinScrollX");
                scrollForPage = scrollForPage2;
                break;
            }
            scrollForPage = scrollForPage2;
        }
        while (true) {
            if (scrollForPage <= this.mMaxScroll) {
                break;
            }
            i4 -= i5;
            int scrollForPage3 = getScrollForPage(i4);
            if (scrollForPage3 >= scrollForPage) {
                Log.e(TAG, "validateNewPage: failed to find a page < mMaxScrollX");
                break;
            }
            scrollForPage = scrollForPage3;
        }
        return i4;
    }

    private int getDisplacementFromScreenCenter(int i4, int i5) {
        return (getChildOffset(i4) + (getChildVisibleSize(i4) / 2)) - i5;
    }

    private IntSet getNeighbourPageIndices(int i4) {
        int i5;
        int panelCount = getPanelCount();
        int nextPage = getNextPage();
        if (i4 == 17) {
            i5 = nextPage - panelCount;
        } else if (i4 != 66) {
            return new IntSet();
        } else {
            i5 = nextPage + panelCount;
        }
        int validateNewPage = validateNewPage(i5);
        return validateNewPage == nextPage ? new IntSet() : getPageIndices(validateNewPage);
    }

    private IntSet getPageIndices(int i4) {
        int leftmostVisiblePageForIndex = getLeftmostVisiblePageForIndex(i4);
        IntSet intSet = new IntSet();
        int panelCount = getPanelCount();
        int pageCount = getPageCount();
        for (int i5 = leftmostVisiblePageForIndex; i5 < leftmostVisiblePageForIndex + panelCount && i5 < pageCount; i5++) {
            intSet.add(i5);
        }
        return intSet;
    }

    private int getPageWidthSize(int i4) {
        Rect rect = this.mInsets;
        int paddingLeft = ((((i4 - rect.left) - rect.right) - getPaddingLeft()) - getPaddingRight()) / getPanelCount();
        return getPaddingRight() + getPaddingLeft() + paddingLeft;
    }

    public /* synthetic */ void lambda$addFocusables$3(ArrayList arrayList, int i4, int i5, Integer num) {
        getPageAt(num.intValue()).addFocusables(arrayList, i4, i5);
    }

    public /* synthetic */ void lambda$forEachVisiblePage$1(Consumer consumer, Integer num) {
        View pageAt = getPageAt(num.intValue());
        if (pageAt != null) {
            consumer.accept(pageAt);
        }
    }

    public /* synthetic */ void lambda$onViewRemoved$2() {
        int validateNewPage = validateNewPage(this.mCurrentPage);
        this.mCurrentPage = validateNewPage;
        this.mCurrentScrollOverPage = validateNewPage;
    }

    public static /* synthetic */ boolean lambda$static$0(View view) {
        return view.getVisibility() != 8;
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
            int i4 = actionIndex == 0 ? 1 : 0;
            float primaryDirection = this.mOrientationHandler.getPrimaryDirection(motionEvent, i4);
            this.mDownMotionPrimary = primaryDirection;
            this.mLastMotion = (int) primaryDirection;
            this.mActivePointerId = motionEvent.getPointerId(i4);
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void releaseVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void sendScrollAccessibilityEvent() {
        if (!AccessibilityManagerCompat.isAccessibilityEnabled(getContext()) || this.mCurrentPage == getNextPage()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain(4096);
        obtain.setScrollable(true);
        obtain.setScrollX(getScrollX());
        obtain.setScrollY(getScrollY());
        this.mOrientationHandler.setMaxScroll(obtain, this.mMaxScroll);
        sendAccessibilityEventUnchecked(obtain);
    }

    private void updatePageIndicator() {
        View view = this.mPageIndicator;
        if (view != null) {
            ((PageIndicator) view).setActiveMarker(getNextPage());
        }
    }

    private void updateVelocityValues() {
        Resources resources = getResources();
        this.mFlingThresholdVelocity = resources.getDimensionPixelSize(R.dimen.fling_threshold_velocity);
        this.mEasyFlingThresholdVelocity = resources.getDimensionPixelSize(R.dimen.easy_fling_threshold_velocity);
        this.mMinFlingVelocity = resources.getDimensionPixelSize(R.dimen.min_fling_velocity);
        this.mMinSnapVelocity = resources.getDimensionPixelSize(R.dimen.min_page_snap_velocity);
        this.mPageSnapAnimationDuration = resources.getInteger(R.integer.config_pageSnapAnimationDuration);
    }

    private int validateNewPage(int i4) {
        int boundToRange = Utilities.boundToRange(ensureWithinScrollBounds(i4), 0, getPageCount() - 1);
        return getPanelCount() > 1 ? getLeftmostVisiblePageForIndex(boundToRange) : boundToRange;
    }

    public void abortScrollerAnimation() {
        this.mEdgeGlowLeft.finish();
        this.mEdgeGlowRight.finish();
        abortScrollerAnimation(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(final ArrayList arrayList, final int i4, final int i5) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        IntSet pageIndices = getPageIndices(getNextPage());
        IntSet neighbourPageIndices = getNeighbourPageIndices(i4);
        pageIndices.getClass();
        neighbourPageIndices.forEach(new C0480m(pageIndices, 0));
        pageIndices.forEach(new Consumer() { // from class: com.android.launcher3.A0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                PagedView.this.lambda$addFocusables$3(arrayList, i4, i5, (Integer) obj);
            }
        });
    }

    public void announcePageForAccessibility() {
        if (AccessibilityManagerCompat.isAccessibilityEnabled(getContext())) {
            announceForAccessibility(getCurrentPageDescription());
        }
    }

    public boolean canAnnouncePageDescription() {
        return true;
    }

    public boolean canScroll(float f4, float f5) {
        return AbstractFloatingView.getTopOpenView((ActivityContext) ActivityContext.lookupContext(getContext())) == null;
    }

    public void cancelCurrentPageLongPress() {
        forEachVisiblePage(new C0488w0());
    }

    public int computeMaxScroll() {
        int childCount = getChildCount();
        if (childCount > 0) {
            return getScrollForPage(this.mIsRtl ? 0 : childCount - 1);
        }
        return 0;
    }

    public int computeMinScroll() {
        return 0;
    }

    @Override // android.view.View
    public void computeScroll() {
        computeScrollHelper();
    }

    public boolean computeScrollHelper() {
        if (!this.mScroller.computeScrollOffset()) {
            if (this.mNextPage != -1) {
                sendScrollAccessibilityEvent();
                int i4 = this.mCurrentPage;
                int validateNewPage = validateNewPage(this.mNextPage);
                this.mCurrentPage = validateNewPage;
                this.mCurrentScrollOverPage = validateNewPage;
                this.mNextPage = -1;
                notifyPageSwitchListener(i4);
                if (!this.mIsBeingDragged) {
                    pageEndTransition();
                }
                if (canAnnouncePageDescription()) {
                    announcePageForAccessibility();
                }
            }
            return false;
        }
        int primaryScroll = this.mOrientationHandler.getPrimaryScroll(this);
        int currX = this.mScroller.getCurrX();
        if (primaryScroll != currX) {
            this.mOrientationHandler.setPrimary((Object) this, PagedOrientationHandler.VIEW_SCROLL_TO, this.mScroller.getCurrX());
        }
        if (this.mAllowOverScroll) {
            int i5 = this.mMinScroll;
            if (currX >= i5 || primaryScroll < i5) {
                int i6 = this.mMaxScroll;
                if (currX > i6 && primaryScroll <= i6) {
                    this.mEdgeGlowRight.onAbsorb((int) this.mScroller.getCurrVelocity());
                    abortScrollerAnimation(false);
                    onEdgeAbsorbingScroll();
                }
            } else {
                this.mEdgeGlowLeft.onAbsorb((int) this.mScroller.getCurrVelocity());
                abortScrollerAnimation(false);
                onEdgeAbsorbingScroll();
            }
        }
        if (currX == this.mOrientationHandler.getPrimaryValue(this.mScroller.getFinalX(), this.mScroller.getFinalY()) && this.mEdgeGlowLeft.isFinished() && this.mEdgeGlowRight.isFinished()) {
            abortScrollerAnimation(false);
        }
        invalidate();
        return true;
    }

    public void determineScrollingStart(MotionEvent motionEvent) {
        determineScrollingStart(motionEvent, 1.0f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i4) {
        if (super.dispatchUnhandledMove(view, i4)) {
            return true;
        }
        if (this.mIsRtl) {
            if (i4 == 17) {
                i4 = 66;
            } else if (i4 == 66) {
                i4 = 17;
            }
        }
        int nextPage = getNextPage();
        Iterator it = getNeighbourPageIndices(i4).iterator();
        int i5 = Integer.MAX_VALUE;
        int i6 = -1;
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            int abs = Math.abs(intValue - nextPage);
            if (i5 > abs) {
                i6 = intValue;
                i5 = abs;
            }
        }
        if (i6 != -1) {
            View pageAt = getPageAt(i6);
            snapToPage(i6);
            pageAt.requestFocus(i4);
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        drawEdgeEffect(canvas);
        pageEndTransition();
    }

    public void drawEdgeEffect(Canvas canvas) {
        if (this.mAllowOverScroll) {
            if (this.mEdgeGlowRight.isFinished() && this.mEdgeGlowLeft.isFinished()) {
                return;
            }
            int width = getWidth();
            int height = getHeight();
            if (!this.mEdgeGlowLeft.isFinished()) {
                int save = canvas.save();
                canvas.rotate(-90.0f);
                canvas.translate(-height, Math.min(this.mMinScroll, getScrollX()));
                this.mEdgeGlowLeft.setSize(height, width);
                if (this.mEdgeGlowLeft.draw(canvas)) {
                    postInvalidateOnAnimation();
                }
                canvas.restoreToCount(save);
            }
            if (this.mEdgeGlowRight.isFinished()) {
                return;
            }
            int save2 = canvas.save();
            float f4 = width;
            canvas.rotate(90.0f, f4, 0.0f);
            canvas.translate(f4, -Math.max(this.mMaxScroll, getScrollX()));
            this.mEdgeGlowRight.setSize(height, width);
            if (this.mEdgeGlowRight.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(save2);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void focusableViewAvailable(View view) {
        View pageAt = getPageAt(this.mCurrentPage);
        for (View view2 = view; view2 != pageAt; view2 = (View) view2.getParent()) {
            if (view2 == this || !(view2.getParent() instanceof View)) {
                return;
            }
        }
        super.focusableViewAvailable(view);
    }

    public void forEachVisiblePage(final Consumer consumer) {
        getVisiblePageIndices().forEach(new Consumer() { // from class: com.android.launcher3.x0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                PagedView.this.lambda$forEachVisiblePage$1(consumer, (Integer) obj);
            }
        });
    }

    public void forceFinishScroller() {
        this.mScroller.forceFinished(true);
        this.mNextPage = -1;
        pageEndTransition();
    }

    @Override // android.view.View
    public void forceLayout() {
        this.mIsLayoutValid = false;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ScrollView.class.getName();
    }

    public int getChildGap(int i4, int i5) {
        return 0;
    }

    public int getChildOffset(int i4) {
        if (i4 < 0 || i4 > getChildCount() - 1) {
            return 0;
        }
        return this.mOrientationHandler.getChildStart(getPageAt(i4));
    }

    public int getChildVisibleSize(int i4) {
        return this.mOrientationHandler.getMeasuredSize(getPageAt(i4));
    }

    public int getCurrentPage() {
        return this.mCurrentPage;
    }

    public String getCurrentPageDescription() {
        return getContext().getString(R.string.default_scroll_format, Integer.valueOf(getNextPage() + 1), Integer.valueOf(getChildCount()));
    }

    public int getDestinationPage() {
        return getDestinationPage(this.mOrientationHandler.getPrimaryScroll(this));
    }

    public float getDownMotionX() {
        return this.mDownMotionX;
    }

    public float getDownMotionY() {
        return this.mDownMotionY;
    }

    public int getExpectedHeight() {
        return getMeasuredHeight();
    }

    public int getExpectedWidth() {
        return getMeasuredWidth();
    }

    public int getLayoutTransitionOffsetForPage(int i4) {
        if (!isPageScrollsInitialized() || i4 >= this.mPageScrolls.length || i4 < 0) {
            return 0;
        }
        return (int) (getChildAt(i4).getX() - (this.mPageScrolls[i4] + (this.mIsRtl ? getPaddingRight() : getPaddingLeft())));
    }

    public int getLeftmostVisiblePageForIndex(int i4) {
        return i4 - (i4 % getPanelCount());
    }

    public int getNextPage() {
        int i4 = this.mNextPage;
        return i4 != -1 ? i4 : this.mCurrentPage;
    }

    public int getNormalChildHeight() {
        Rect rect = this.mInsets;
        return (((getExpectedHeight() - getPaddingTop()) - getPaddingBottom()) - rect.top) - rect.bottom;
    }

    public int getNormalChildWidth() {
        Rect rect = this.mInsets;
        return (((getExpectedWidth() - getPaddingLeft()) - getPaddingRight()) - rect.left) - rect.right;
    }

    public View getPageAt(int i4) {
        return getChildAt(i4);
    }

    public int getPageCount() {
        return getChildCount();
    }

    public View getPageIndicator() {
        return this.mPageIndicator;
    }

    public int getPageNearestToCenterOfScreen() {
        return getPageNearestToCenterOfScreen(this.mOrientationHandler.getPrimaryScroll(this));
    }

    public boolean getPageScrolls(int[] iArr, boolean z4, ComputePageScrollsLogic computePageScrollsLogic) {
        int childCount = getChildCount();
        boolean z5 = this.mIsRtl;
        int i4 = z5 ? -1 : childCount;
        int i5 = z5 ? -1 : 1;
        int centerForPage = this.mOrientationHandler.getCenterForPage(this, this.mInsets);
        int scrollOffsetStart = this.mOrientationHandler.getScrollOffsetStart(this, this.mInsets);
        int scrollOffsetEnd = this.mOrientationHandler.getScrollOffsetEnd(this, this.mInsets);
        int panelCount = getPanelCount();
        int i6 = scrollOffsetStart;
        boolean z6 = false;
        for (int i7 = z5 ? childCount - 1 : 0; i7 != i4; i7 += i5) {
            View pageAt = getPageAt(i7);
            if (computePageScrollsLogic.shouldIncludeView(pageAt)) {
                PagedOrientationHandler.ChildBounds childBounds = this.mOrientationHandler.getChildBounds(pageAt, i6, centerForPage, z4);
                int i8 = childBounds.primaryDimension;
                int i9 = this.mIsRtl ? childBounds.childPrimaryEnd - scrollOffsetEnd : i6 - scrollOffsetStart;
                if (iArr[i7] != i9) {
                    iArr[i7] = i9;
                    z6 = true;
                }
                i6 += getChildGap(i7, i7 + i5) + i8;
                if (i7 % panelCount == (this.mIsRtl ? 0 : panelCount - 1)) {
                    i6 += this.mPageSpacing;
                }
            }
        }
        if (panelCount > 1) {
            for (int i10 = 0; i10 < childCount; i10++) {
                int i11 = iArr[getLeftmostVisiblePageForIndex(i10)];
                if (iArr[i10] != i11) {
                    iArr[i10] = i11;
                    z6 = true;
                }
            }
        }
        return z6;
    }

    public int getPageSpacing() {
        return this.mPageSpacing;
    }

    public int getPanelCount() {
        return 1;
    }

    public int getScreenCenter(int i4) {
        float primaryScale = this.mOrientationHandler.getPrimaryScale(this);
        float primaryValue = this.mOrientationHandler.getPrimaryValue(getPivotX(), getPivotY());
        return Math.round((((this.mOrientationHandler.getMeasuredSize(this) / 2.0f) - primaryValue) / primaryScale) + i4 + primaryValue);
    }

    public int getScrollForPage(int i4) {
        if (isPageScrollsInitialized()) {
            int[] iArr = this.mPageScrolls;
            if (i4 >= iArr.length || i4 < 0) {
                return 0;
            }
            return iArr[i4];
        }
        return 0;
    }

    public float getScrollProgress(int i4, View view, int i5) {
        int scrollForPage = i4 - (getScrollForPage(i5) + (getMeasuredWidth() / 2));
        int panelCount = getPanelCount();
        int childCount = getChildCount();
        int i6 = i5 + panelCount;
        if ((scrollForPage < 0 && !this.mIsRtl) || (scrollForPage > 0 && this.mIsRtl)) {
            i6 = i5 - panelCount;
        }
        return Math.max(Math.min(scrollForPage / (((i6 < 0 || i6 > childCount + (-1)) ? (view.getMeasuredWidth() + this.mPageSpacing) * panelCount : Math.abs(getScrollForPage(i6) - getScrollForPage(i5))) * 1.0f), 1.0f), -1.0f);
    }

    public int[] getVisibleChildrenRange() {
        View pageAt;
        float f4 = 0.0f;
        float measuredWidth = getMeasuredWidth() + 0.0f;
        float scaleX = getScaleX();
        if (scaleX < 1.0f && scaleX > 0.0f) {
            float measuredWidth2 = getMeasuredWidth() / 2;
            f4 = measuredWidth2 - ((measuredWidth2 - 0.0f) / scaleX);
            measuredWidth = ((measuredWidth - measuredWidth2) / scaleX) + measuredWidth2;
        }
        int childCount = getChildCount();
        int i4 = -1;
        int i5 = -1;
        for (int i6 = 0; i6 < childCount; i6++) {
            float translationX = (getPageAt(i6).getTranslationX() + pageAt.getLeft()) - getScrollX();
            if (translationX <= measuredWidth && translationX + pageAt.getMeasuredWidth() >= f4) {
                if (i4 == -1) {
                    i4 = i6;
                }
                i5 = i6;
            }
        }
        int[] iArr = this.mTmpIntPair;
        iArr[0] = i4;
        iArr[1] = i5;
        return iArr;
    }

    public IntSet getVisiblePageIndices() {
        return getPageIndices(this.mCurrentPage);
    }

    public void initEdgeEffect() {
        this.mEdgeGlowLeft = new EdgeEffectCompat(getContext());
        this.mEdgeGlowRight = new EdgeEffectCompat(getContext());
    }

    public void initParentViews(View view) {
        int i4 = this.mPageIndicatorViewId;
        if (i4 > -1) {
            View findViewById = view.findViewById(i4);
            this.mPageIndicator = findViewById;
            ((PageIndicator) findViewById).setMarkersCount(getChildCount() / getPanelCount());
        }
    }

    public boolean isHandlingTouch() {
        return this.mIsBeingDragged;
    }

    public boolean isPageInTransition() {
        return this.mIsPageInTransition;
    }

    public boolean isPageOrderFlipped() {
        return false;
    }

    public boolean isPageScrollsInitialized() {
        int[] iArr = this.mPageScrolls;
        return iArr != null && iArr.length == getChildCount();
    }

    public boolean isSignificantMove(float f4, int i4) {
        return f4 > ((float) i4) * 0.4f;
    }

    public boolean isVisible(View view) {
        return isVisible(indexOfChild(view));
    }

    public void notifyPageSwitchListener(int i4) {
        updatePageIndicator();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateVelocityValues();
    }

    public void onEdgeAbsorbingScroll() {
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f4;
        float axisValue;
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8) {
            if ((motionEvent.getMetaState() & 1) != 0) {
                axisValue = motionEvent.getAxisValue(9);
                f4 = 0.0f;
            } else {
                f4 = -motionEvent.getAxisValue(9);
                axisValue = motionEvent.getAxisValue(10);
            }
            boolean z4 = false;
            if (!canScroll(Math.abs(f4), Math.abs(axisValue))) {
                return false;
            }
            int i4 = (axisValue > 0.0f ? 1 : (axisValue == 0.0f ? 0 : -1));
            if (i4 != 0 || f4 != 0.0f) {
                if (!this.mIsRtl ? i4 > 0 || f4 > 0.0f : axisValue < 0.0f || f4 < 0.0f) {
                    z4 = true;
                }
                if (z4) {
                    scrollRight();
                } else {
                    scrollLeft();
                }
                return true;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        boolean z4 = true;
        if (!this.mAllowOverScroll && getPageCount() <= 1) {
            z4 = false;
        }
        accessibilityEvent.setScrollable(z4);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        boolean isPageOrderFlipped = isPageOrderFlipped();
        accessibilityNodeInfo.setScrollable(getPageCount() > 0);
        int primaryScroll = this.mOrientationHandler.getPrimaryScroll(this);
        if (getCurrentPage() < getPageCount() - getPanelCount() || (getCurrentPage() == getPageCount() - getPanelCount() && primaryScroll != getScrollForPage(getPageCount() - getPanelCount()))) {
            accessibilityNodeInfo.addAction(isPageOrderFlipped ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD : AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(this.mIsRtl ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT);
        }
        if (getCurrentPage() > 0 || (getCurrentPage() == 0 && primaryScroll != getScrollForPage(0))) {
            accessibilityNodeInfo.addAction(isPageOrderFlipped ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD : AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
            accessibilityNodeInfo.addAction(this.mIsRtl ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT);
        }
        accessibilityNodeInfo.setLongClickable(false);
        accessibilityNodeInfo.removeAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_LONG_CLICK);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (getChildCount() <= 0) {
            return false;
        }
        acquireVelocityTrackerAndAddMovement(motionEvent);
        int action = motionEvent.getAction();
        if (action == 2 && this.mIsBeingDragged) {
            return true;
        }
        int i4 = action & 255;
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 == 6) {
                            onSecondaryPointerUp(motionEvent);
                            releaseVelocityTracker();
                        }
                    }
                } else if (this.mActivePointerId != -1) {
                    determineScrollingStart(motionEvent);
                }
            }
            resetTouchState();
        } else {
            float x4 = motionEvent.getX();
            float y4 = motionEvent.getY();
            this.mDownMotionX = x4;
            this.mDownMotionY = y4;
            float primaryDirection = this.mOrientationHandler.getPrimaryDirection(motionEvent, 0);
            this.mDownMotionPrimary = primaryDirection;
            this.mLastMotion = (int) primaryDirection;
            this.mTotalMotion = 0.0f;
            this.mAllowEasyFling = false;
            this.mActivePointerId = motionEvent.getPointerId(0);
            updateIsBeingDraggedOnTouchDown(motionEvent);
        }
        return this.mIsBeingDragged;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        boolean z5;
        int i8;
        this.mIsLayoutValid = true;
        int childCount = getChildCount();
        int[] iArr = this.mPageScrolls;
        if (isPageScrollsInitialized()) {
            z5 = false;
        } else {
            iArr = new int[childCount];
            z5 = true;
        }
        boolean pageScrolls = getPageScrolls(iArr, true, SIMPLE_SCROLL_LOGIC) | z5;
        this.mPageScrolls = iArr;
        if (childCount == 0) {
            onPageScrollsInitialized();
            return;
        }
        LayoutTransition layoutTransition = getLayoutTransition();
        if (layoutTransition == null || !layoutTransition.isRunning()) {
            updateMinAndMaxScrollX();
        } else {
            layoutTransition.addTransitionListener(new LayoutTransition.TransitionListener() { // from class: com.android.launcher3.PagedView.1
                {
                    PagedView.this = this;
                }

                @Override // android.animation.LayoutTransition.TransitionListener
                public final void endTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i9) {
                    if (layoutTransition2.isRunning()) {
                        return;
                    }
                    layoutTransition2.removeTransitionListener(this);
                    PagedView.this.updateMinAndMaxScrollX();
                }

                @Override // android.animation.LayoutTransition.TransitionListener
                public final void startTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i9) {
                }
            });
        }
        if (this.mFirstLayout && (i8 = this.mCurrentPage) >= 0 && i8 < childCount) {
            updateCurrentPageScroll();
            this.mFirstLayout = false;
        }
        if (this.mScroller.isFinished() && pageScrolls) {
            if (Utilities.isRunningInTestHarness() && !(this instanceof Workspace)) {
                Log.d("b/246283207", getClass().getSimpleName() + "#onLayout() -> if(mScroller.isFinished() && pageScrollChanged) -> getNextPage(): " + getNextPage() + ", getScrollForPage(getNextPage()): " + getScrollForPage(getNextPage()));
            }
            setCurrentPage(getNextPage());
        }
        onPageScrollsInitialized();
    }

    @Override // android.view.View
    public void onMeasure(int i4, int i5) {
        if (getChildCount() == 0) {
            super.onMeasure(i4, i5);
            return;
        }
        int mode = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i4);
        int mode2 = View.MeasureSpec.getMode(i5);
        int size2 = View.MeasureSpec.getSize(i5);
        if (mode == 0 || mode2 == 0) {
            super.onMeasure(i4, i5);
        } else if (size <= 0 || size2 <= 0) {
            super.onMeasure(i4, i5);
        } else {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getPageWidthSize(size), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE);
            Rect rect = this.mInsets;
            measureChildren(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec((size2 - rect.top) - rect.bottom, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
            setMeasuredDimension(size, size2);
        }
    }

    public void onNotSnappingToPageInFreeScroll() {
    }

    public void onPageBeginTransition() {
    }

    public void onPageEndTransition() {
        this.mCurrentPageScrollDiff = 0;
        AccessibilityManagerCompat.sendScrollFinishedEventToTest(getContext());
        AccessibilityManagerCompat.sendCustomAccessibilityEvent(getPageAt(this.mCurrentPage), 8, null);
        Runnable runnable = this.mOnPageTransitionEndCallback;
        if (runnable != null) {
            runnable.run();
            this.mOnPageTransitionEndCallback = null;
        }
    }

    public void onPageScrollsInitialized() {
        Iterator it = this.mOnPageScrollsInitializedCallbacks.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.mOnPageScrollsInitializedCallbacks.clear();
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i4, Rect rect) {
        int i5 = this.mNextPage;
        if (i5 == -1) {
            i5 = this.mCurrentPage;
        }
        View pageAt = getPageAt(i5);
        if (pageAt != null) {
            return pageAt.requestFocus(i4, rect);
        }
        return false;
    }

    @Override // android.view.View
    public void onScrollChanged(int i4, int i5, int i6, int i7) {
        int destinationPage;
        if (this.mScroller.isFinished() || (destinationPage = getDestinationPage()) < 0 || destinationPage == this.mCurrentScrollOverPage) {
            return;
        }
        this.mCurrentScrollOverPage = destinationPage;
        onScrollOverPageChanged();
    }

    public void onScrollOverPageChanged() {
    }

    public void onScrollerAnimationAborted() {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        View pageAt;
        final int i4;
        int x4;
        int y4;
        int i5 = 0;
        if (getChildCount() <= 0) {
            return false;
        }
        acquireVelocityTrackerAndAddMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            updateIsBeingDraggedOnTouchDown(motionEvent);
            if (!this.mScroller.isFinished()) {
                abortScrollerAnimation(false);
            }
            this.mDownMotionX = motionEvent.getX();
            this.mDownMotionY = motionEvent.getY();
            float primaryDirection = this.mOrientationHandler.getPrimaryDirection(motionEvent, 0);
            this.mDownMotionPrimary = primaryDirection;
            this.mLastMotion = (int) primaryDirection;
            this.mTotalMotion = 0.0f;
            this.mAllowEasyFling = false;
            this.mActivePointerId = motionEvent.getPointerId(0);
            if (this.mIsBeingDragged) {
                pageBeginTransition();
            }
        } else if (action == 1) {
            if (this.mIsBeingDragged) {
                int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (findPointerIndex == -1) {
                    return true;
                }
                float primaryDirection2 = this.mOrientationHandler.getPrimaryDirection(motionEvent, findPointerIndex);
                VelocityTracker velocityTracker = this.mVelocityTracker;
                velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                final int primaryVelocity = (int) this.mOrientationHandler.getPrimaryVelocity(velocityTracker, this.mActivePointerId);
                float f4 = primaryDirection2 - this.mDownMotionPrimary;
                if (getPageAt(this.mCurrentPage) == null) {
                    Log.e(TAG, "current page was null. this should not happen.");
                    return true;
                }
                int primaryScale = (int) (this.mOrientationHandler.getPrimaryScale(this) * this.mOrientationHandler.getMeasuredSize(pageAt));
                boolean isSignificantMove = isSignificantMove(Math.abs(f4), primaryScale);
                float abs = Math.abs(this.mLastMotion - primaryDirection2) + this.mTotalMotion;
                this.mTotalMotion = abs;
                boolean z4 = (this.mAllowEasyFling || (abs > ((float) this.mPageSlop) ? 1 : (abs == ((float) this.mPageSlop) ? 0 : -1)) > 0) && shouldFlingForVelocity(primaryVelocity);
                boolean z5 = this.mIsRtl;
                boolean z6 = !z5 ? f4 >= 0.0f : f4 <= 0.0f;
                boolean z7 = !z5 ? primaryVelocity >= 0 : primaryVelocity <= 0;
                if (this.mFreeScroll) {
                    if (!this.mScroller.isFinished()) {
                        abortScrollerAnimation(true);
                    }
                    int primaryScroll = this.mOrientationHandler.getPrimaryScroll(this);
                    int i6 = this.mMaxScroll;
                    int i7 = this.mMinScroll;
                    if ((primaryScroll < i6 || (!z7 && z4)) && (primaryScroll > i7 || (z7 && z4))) {
                        this.mScroller.fling(primaryScroll, 0, -primaryVelocity, 0, i7, i6, 0, 0, Math.round(getWidth() * 0.5f * 0.07f), 0);
                        this.mNextPage = getDestinationPage(this.mScroller.getFinalX());
                        runOnPageScrollsInitialized(new z0(this, 1));
                    } else {
                        this.mScroller.springBack(primaryScroll, 0, i7, i6, 0, 0);
                        this.mNextPage = getDestinationPage();
                    }
                    invalidate();
                } else {
                    boolean z8 = Math.abs(f4) > ((float) primaryScale) * RETURN_TO_ORIGINAL_PAGE_THRESHOLD && Math.signum((float) primaryVelocity) != Math.signum(f4) && z4;
                    if (((isSignificantMove && !z6 && !z4) || (z4 && !z7)) && (i4 = this.mCurrentPage) > 0) {
                        if (!z8) {
                            i4 -= getPanelCount();
                        }
                        runOnPageScrollsInitialized(new Runnable(this) { // from class: com.android.launcher3.y0

                            /* renamed from: e  reason: collision with root package name */
                            public final /* synthetic */ PagedView f5415e;

                            {
                                this.f5415e = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (r4) {
                                    case 0:
                                        this.f5415e.lambda$onTouchEvent$4(i4, primaryVelocity);
                                        return;
                                    default:
                                        this.f5415e.lambda$onTouchEvent$5(i4, primaryVelocity);
                                        return;
                                }
                            }
                        });
                    } else if (!((isSignificantMove && z6 && !z4) || (z4 && z7)) || this.mCurrentPage >= getChildCount() - 1) {
                        runOnPageScrollsInitialized(new z0(this, 0));
                    } else {
                        final int panelCount = z8 ? this.mCurrentPage : this.mCurrentPage + getPanelCount();
                        runOnPageScrollsInitialized(new Runnable(this) { // from class: com.android.launcher3.y0

                            /* renamed from: e  reason: collision with root package name */
                            public final /* synthetic */ PagedView f5415e;

                            {
                                this.f5415e = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (r4) {
                                    case 0:
                                        this.f5415e.lambda$onTouchEvent$4(panelCount, primaryVelocity);
                                        return;
                                    default:
                                        this.f5415e.lambda$onTouchEvent$5(panelCount, primaryVelocity);
                                        return;
                                }
                            }
                        });
                    }
                }
            }
            this.mEdgeGlowLeft.onRelease();
            this.mEdgeGlowRight.onRelease();
            resetTouchState();
        } else if (action != 2) {
            if (action == 3) {
                if (this.mIsBeingDragged) {
                    runOnPageScrollsInitialized(new z0(this, 2));
                }
                this.mEdgeGlowLeft.onRelease();
                this.mEdgeGlowRight.onRelease();
                resetTouchState();
            } else if (action == 6) {
                onSecondaryPointerUp(motionEvent);
                releaseVelocityTracker();
            } else if (action == 254) {
                determineScrollingStart(motionEvent);
                this.mAllowEasyFling = true;
            }
        } else if (this.mIsBeingDragged) {
            int findPointerIndex2 = motionEvent.findPointerIndex(this.mActivePointerId);
            if (findPointerIndex2 == -1) {
                return true;
            }
            int primaryScroll2 = this.mOrientationHandler.getPrimaryScroll(this);
            int primaryValue = this.mOrientationHandler.getPrimaryValue((int) motionEvent.getX(findPointerIndex2), (int) motionEvent.getY(findPointerIndex2));
            int i8 = this.mLastMotion - primaryValue;
            int width = getWidth();
            int height = getHeight();
            float primaryValue2 = this.mOrientationHandler.getPrimaryValue(width, height);
            float secondaryValue = (width == 0 || height == 0) ? 0.0f : this.mOrientationHandler.getSecondaryValue(x4, y4) / this.mOrientationHandler.getSecondaryValue(width, height);
            this.mTotalMotion += Math.abs(i8);
            if (this.mAllowOverScroll) {
                if (i8 < 0 && this.mEdgeGlowRight.getDistance() != 0.0f) {
                    i5 = Math.round(this.mEdgeGlowRight.onPullDistance(i8 / primaryValue2, secondaryValue) * primaryValue2);
                } else if (i8 > 0 && this.mEdgeGlowLeft.getDistance() != 0.0f) {
                    i5 = Math.round(this.mEdgeGlowLeft.onPullDistance((-i8) / primaryValue2, 1.0f - secondaryValue) * (-primaryValue2));
                }
                i8 -= i5;
            }
            int primaryScale2 = (int) (i8 / this.mOrientationHandler.getPrimaryScale(this));
            this.mLastMotion = primaryValue;
            if (primaryScale2 != 0) {
                this.mOrientationHandler.setPrimary((Object) this, PagedOrientationHandler.VIEW_SCROLL_BY, primaryScale2);
                if (this.mAllowOverScroll) {
                    float f5 = primaryScroll2 + primaryScale2;
                    if (f5 < this.mMinScroll) {
                        this.mEdgeGlowLeft.onPullDistance((-primaryScale2) / primaryValue2, 1.0f - secondaryValue);
                        if (!this.mEdgeGlowRight.isFinished()) {
                            this.mEdgeGlowRight.onRelease();
                        }
                    } else if (f5 > this.mMaxScroll) {
                        this.mEdgeGlowRight.onPullDistance(primaryScale2 / primaryValue2, secondaryValue);
                        if (!this.mEdgeGlowLeft.isFinished()) {
                            this.mEdgeGlowLeft.onRelease();
                        }
                    }
                    if (!this.mEdgeGlowLeft.isFinished() || !this.mEdgeGlowRight.isFinished()) {
                        postInvalidateOnAnimation();
                    }
                }
            } else {
                awakenScrollBars();
            }
        } else {
            determineScrollingStart(motionEvent);
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        dispatchPageCountChanged();
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        runOnPageScrollsInitialized(new z0(this, 3));
        dispatchPageCountChanged();
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z4) {
        pageEndTransition();
        super.onVisibilityAggregated(z4);
    }

    public void pageBeginTransition() {
        if (this.mIsPageInTransition) {
            return;
        }
        this.mIsPageInTransition = true;
        onPageBeginTransition();
    }

    public void pageEndTransition() {
        if (this.mIsPageInTransition && !this.mIsBeingDragged && this.mScroller.isFinished()) {
            if (!isShown() || (this.mEdgeGlowLeft.isFinished() && this.mEdgeGlowRight.isFinished())) {
                this.mIsPageInTransition = false;
                onPageEndTransition();
            }
        }
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i4, Bundle bundle) {
        if (super.performAccessibilityAction(i4, bundle)) {
            return true;
        }
        boolean isPageOrderFlipped = isPageOrderFlipped();
        if (i4 == 4096) {
            if (isPageOrderFlipped) {
                if (!scrollLeft()) {
                    return false;
                }
            } else if (!scrollRight()) {
                return false;
            }
            return true;
        } else if (i4 != 8192) {
            switch (i4) {
                case 16908360:
                    return !this.mIsRtl ? scrollLeft() : scrollRight();
                case 16908361:
                    return !this.mIsRtl ? scrollRight() : scrollLeft();
                default:
                    return false;
            }
        } else {
            if (isPageOrderFlipped) {
                if (!scrollRight()) {
                    return false;
                }
            } else if (!scrollLeft()) {
                return false;
            }
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        int nextPage = getNextPage();
        if (nextPage != this.mCurrentPage) {
            setCurrentPage(nextPage);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild < 0 || isVisible(indexOfChild) || isInTouchMode()) {
            return;
        }
        snapToPage(indexOfChild);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z4) {
        int indexOfChild = indexOfChild(view);
        if (isVisible(indexOfChild) && this.mScroller.isFinished()) {
            return false;
        }
        if (z4) {
            setCurrentPage(indexOfChild);
            return true;
        }
        snapToPage(indexOfChild);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z4) {
        if (z4) {
            cancelCurrentPageLongPress();
        }
        super.requestDisallowInterceptTouchEvent(z4);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.mIsLayoutValid = false;
        super.requestLayout();
    }

    public void resetTouchState() {
        releaseVelocityTracker();
        this.mIsBeingDragged = false;
        this.mActivePointerId = -1;
    }

    public void runOnPageScrollsInitialized(Runnable runnable) {
        this.mOnPageScrollsInitializedCallbacks.add(runnable);
        if (isPageScrollsInitialized()) {
            onPageScrollsInitialized();
        }
    }

    public boolean scrollLeft() {
        if (getNextPage() > 0) {
            snapToPage(getNextPage() - getPanelCount());
            return true;
        }
        return this.mAllowOverScroll;
    }

    public boolean scrollRight() {
        if (getNextPage() < getChildCount() - 1) {
            snapToPage(getPanelCount() + getNextPage());
            return true;
        }
        return this.mAllowOverScroll;
    }

    @Override // android.view.View
    public void scrollTo(int i4, int i5) {
        super.scrollTo(Utilities.boundToRange(i4, this.mOrientationHandler.getPrimaryValue(this.mMinScroll, 0), this.mMaxScroll), Utilities.boundToRange(i5, this.mOrientationHandler.getPrimaryValue(0, this.mMinScroll), this.mMaxScroll));
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEvent(int i4) {
        if (i4 != 4096) {
            super.sendAccessibilityEvent(i4);
        }
    }

    public void setCurrentPage(int i4) {
        setCurrentPage(i4, -1);
    }

    public void setEnableFreeScroll(boolean z4) {
        boolean z5 = this.mFreeScroll;
        if (z5 == z4) {
            return;
        }
        this.mFreeScroll = z4;
        if (z4) {
            setCurrentPage(getNextPage());
        } else if (!z5 || getScrollForPage(getNextPage()) == getScrollX()) {
        } else {
            snapToPage(getNextPage());
        }
    }

    public void setEnableOverscroll(boolean z4) {
        this.mAllowOverScroll = z4;
    }

    public void setOnPageTransitionEndCallback(Runnable runnable) {
        if (this.mIsPageInTransition || runnable == null) {
            this.mOnPageTransitionEndCallback = runnable;
        } else {
            runnable.run();
        }
    }

    public void setPageSpacing(int i4) {
        this.mPageSpacing = i4;
        requestLayout();
    }

    public boolean shouldFlingForVelocity(int i4) {
        return ((float) Math.abs(i4)) > ((float) (this.mAllowEasyFling ? this.mEasyFlingThresholdVelocity : this.mFlingThresholdVelocity));
    }

    public void snapToDestination() {
        snapToPage(getDestinationPage(), this.mPageSnapAnimationDuration);
    }

    public boolean snapToPage(int i4) {
        return snapToPage(i4, this.mPageSnapAnimationDuration);
    }

    public boolean snapToPageImmediately(int i4) {
        return snapToPage(i4, this.mPageSnapAnimationDuration, true);
    }

    /* renamed from: snapToPageWithVelocity */
    public boolean lambda$onTouchEvent$5(int i4, int i5) {
        int validateNewPage = validateNewPage(i4);
        int measuredSize = this.mOrientationHandler.getMeasuredSize(this) / 2;
        int scrollForPage = getScrollForPage(validateNewPage) - this.mOrientationHandler.getPrimaryScroll(this);
        if (Math.abs(i5) < this.mMinFlingVelocity) {
            return snapToPage(validateNewPage, this.mPageSnapAnimationDuration);
        }
        float f4 = measuredSize;
        return snapToPage(validateNewPage, scrollForPage, Math.round(Math.abs(((distanceInfluenceForSnapDuration(Math.min(1.0f, (Math.abs(scrollForPage) * 1.0f) / (measuredSize * 2))) * f4) + f4) / Math.max(this.mMinSnapVelocity, Math.abs(i5))) * 1000.0f) * 4);
    }

    public void updateCurrentPageScroll() {
        int i4 = this.mCurrentPage;
        int scrollForPage = (i4 < 0 || i4 >= getPageCount()) ? 0 : getScrollForPage(this.mCurrentPage) + this.mCurrentPageScrollDiff;
        this.mOrientationHandler.setPrimary((Object) this, PagedOrientationHandler.VIEW_SCROLL_TO, scrollForPage);
        OverScroller overScroller = this.mScroller;
        overScroller.startScroll(overScroller.getCurrX(), 0, scrollForPage - this.mScroller.getCurrX(), 0);
        forceFinishScroller();
    }

    public void updateIsBeingDraggedOnTouchDown(MotionEvent motionEvent) {
        boolean z4 = false;
        if (this.mScroller.isFinished() || Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) < this.mPageSlop / 3) {
            this.mIsBeingDragged = false;
            if (!this.mScroller.isFinished() && !this.mFreeScroll) {
                setCurrentPage(getNextPage());
                pageEndTransition();
            }
            if (!this.mEdgeGlowLeft.isFinished() || !this.mEdgeGlowRight.isFinished()) {
                z4 = true;
            }
            this.mIsBeingDragged = z4;
        } else {
            this.mIsBeingDragged = true;
        }
        float secondaryValue = this.mOrientationHandler.getSecondaryValue(motionEvent.getX(), motionEvent.getY()) / this.mOrientationHandler.getSecondaryValue(getWidth(), getHeight());
        if (!this.mEdgeGlowLeft.isFinished()) {
            this.mEdgeGlowLeft.onPullDistance(0.0f, 1.0f - secondaryValue);
        }
        if (this.mEdgeGlowRight.isFinished()) {
            return;
        }
        this.mEdgeGlowRight.onPullDistance(0.0f, secondaryValue);
    }

    public void updateMinAndMaxScrollX() {
        this.mMinScroll = computeMinScroll();
        this.mMaxScroll = computeMaxScroll();
    }

    public PagedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private int getPageNearestToCenterOfScreen(int i4) {
        int screenCenter = getScreenCenter(i4);
        int childCount = getChildCount();
        int i5 = Integer.MAX_VALUE;
        int i6 = -1;
        for (int i7 = 0; i7 < childCount; i7++) {
            int abs = Math.abs(getDisplacementFromScreenCenter(i7, screenCenter));
            if (abs < i5) {
                i6 = i7;
                i5 = abs;
            }
        }
        return i6;
    }

    private boolean isVisible(int i4) {
        return getLeftmostVisiblePageForIndex(i4) == this.mCurrentPage;
    }

    public void determineScrollingStart(MotionEvent motionEvent, float f4) {
        int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
        if (findPointerIndex == -1) {
            return;
        }
        float primaryDirection = this.mOrientationHandler.getPrimaryDirection(motionEvent, findPointerIndex);
        if (((int) Math.abs(primaryDirection - ((float) this.mLastMotion))) > Math.round(f4 * ((float) this.mTouchSlop)) || motionEvent.getAction() == 254) {
            this.mIsBeingDragged = true;
            this.mTotalMotion = Math.abs(this.mLastMotion - primaryDirection) + this.mTotalMotion;
            this.mLastMotion = (int) primaryDirection;
            pageBeginTransition();
            requestDisallowInterceptTouchEvent(true);
        }
    }

    public int getDestinationPage(int i4) {
        return getPageNearestToCenterOfScreen(i4);
    }

    /* renamed from: getPageAt */
    public CellLayout m0getPageAt(int i4) {
        return (CellLayout) getChildAt(i4);
    }

    public void setCurrentPage(int i4, int i5) {
        if (!this.mScroller.isFinished()) {
            abortScrollerAnimation(true);
        }
        if (getChildCount() == 0) {
            return;
        }
        if (i5 == -1) {
            i5 = this.mCurrentPage;
        }
        int validateNewPage = validateNewPage(i4);
        this.mCurrentPage = validateNewPage;
        this.mCurrentScrollOverPage = validateNewPage;
        updateCurrentPageScroll();
        notifyPageSwitchListener(i5);
        invalidate();
    }

    public boolean snapToPage(int i4, int i5) {
        return snapToPage(i4, i5, false);
    }

    public PagedView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mFreeScroll = false;
        this.mFirstLayout = true;
        this.mNextPage = -1;
        this.mPageSpacing = 0;
        this.mOrientationHandler = PagedOrientationHandler.PORTRAIT;
        this.mOnPageScrollsInitializedCallbacks = new ArrayList();
        this.mPageScrolls = null;
        this.mAllowOverScroll = true;
        this.mActivePointerId = -1;
        this.mIsPageInTransition = false;
        this.mInsets = new Rect();
        this.mTmpIntPair = new int[2];
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PagedView, i4, 0);
        this.mPageIndicatorViewId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        setHapticFeedbackEnabled(false);
        this.mIsRtl = Utilities.isRtl(getResources());
        this.mScroller = new OverScroller(context, y0.e.f12935I);
        this.mCurrentPage = 0;
        this.mCurrentScrollOverPage = 0;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mPageSlop = viewConfiguration.getScaledPagingTouchSlop();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        updateVelocityValues();
        initEdgeEffect();
        setDefaultFocusHighlightEnabled(false);
        setWillNotDraw(false);
    }

    public boolean snapToPage(int i4, int i5, boolean z4) {
        int validateNewPage = validateNewPage(i4);
        return snapToPage(validateNewPage, getScrollForPage(validateNewPage) - this.mOrientationHandler.getPrimaryScroll(this), i5, z4);
    }

    private void abortScrollerAnimation(boolean z4) {
        this.mScroller.abortAnimation();
        onScrollerAnimationAborted();
        if (z4) {
            this.mNextPage = -1;
            pageEndTransition();
        }
    }

    public int getDisplacementFromScreenCenter(int i4) {
        return getDisplacementFromScreenCenter(i4, getScreenCenter(this.mOrientationHandler.getPrimaryScroll(this)));
    }

    public boolean snapToPage(int i4, int i5, int i6) {
        return snapToPage(i4, i5, i6, false);
    }

    public boolean snapToPage(int i4, int i5, int i6, boolean z4) {
        int i7;
        if (this.mFirstLayout) {
            setCurrentPage(i4);
            return false;
        }
        this.mNextPage = validateNewPage(i4);
        awakenScrollBars(i6);
        if (z4) {
            i7 = 0;
        } else {
            if (i6 == 0) {
                i6 = Math.abs(i5);
            }
            i7 = i6;
        }
        if (i7 != 0) {
            pageBeginTransition();
        }
        if (!this.mScroller.isFinished()) {
            abortScrollerAnimation(false);
        }
        this.mScroller.startScroll(this.mOrientationHandler.getPrimaryScroll(this), 0, i5, 0, i7);
        updatePageIndicator();
        if (z4) {
            computeScroll();
            pageEndTransition();
        }
        invalidate();
        return Math.abs(i5) > 0;
    }
}
