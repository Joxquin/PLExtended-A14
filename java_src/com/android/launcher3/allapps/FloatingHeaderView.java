package com.android.launcher3.allapps;

import D0.q;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.AbstractC0290q0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.Insettable;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import n1.InterfaceC1317a;
import n1.j;
import n1.k;
/* loaded from: classes.dex */
public class FloatingHeaderView extends LinearLayout implements ValueAnimator.AnimatorUpdateListener, k, Insettable {
    private FloatingHeaderRow[] mAllRows;
    private final ValueAnimator mAnimator;
    private AllAppsRecyclerView mCurrentRV;
    private FloatingHeaderRow[] mFixedRows;
    private boolean mFloatingRowsCollapsed;
    private int mFloatingRowsHeight;
    private boolean mForwardToRecyclerView;
    private final Rect mHeaderClip;
    private boolean mHeaderCollapsed;
    private AllAppsRecyclerView mMainRV;
    protected int mMaxTranslation;
    private final AbstractC0290q0 mOnScrollListener;
    protected final Map mPluginRows;
    private final Rect mRVClip;
    private SearchRecyclerView mSearchRV;
    protected int mSnappedScrolledY;
    protected ViewGroup mTabLayout;
    private final int mTabsAdditionalPaddingBottom;
    private final int mTabsAdditionalPaddingTop;
    protected boolean mTabsHidden;
    private final Point mTempOffset;
    private int mTranslationY;
    private AllAppsRecyclerView mWorkRV;

    public FloatingHeaderView(Context context) {
        this(context, null);
    }

    private void calcOffset(Point point) {
        point.x = (getLeft() - this.mCurrentRV.getLeft()) - ((ViewGroup) this.mCurrentRV.getParent()).getLeft();
        point.y = (getTop() - this.mCurrentRV.getTop()) - ((ViewGroup) this.mCurrentRV.getParent()).getTop();
    }

    public static void d(FloatingHeaderView floatingHeaderView, int i4) {
        if (floatingHeaderView.mHeaderCollapsed) {
            if (i4 <= floatingHeaderView.mSnappedScrolledY) {
                if (Math.abs(i4) <= floatingHeaderView.mMaxTranslation) {
                    floatingHeaderView.mSnappedScrolledY = i4;
                }
            } else {
                floatingHeaderView.mHeaderCollapsed = false;
            }
            floatingHeaderView.mTranslationY = i4;
            return;
        }
        int i5 = floatingHeaderView.mMaxTranslation;
        int i6 = (i4 - floatingHeaderView.mSnappedScrolledY) - i5;
        floatingHeaderView.mTranslationY = i6;
        if (i6 >= 0) {
            floatingHeaderView.mTranslationY = 0;
            floatingHeaderView.mSnappedScrolledY = i4 - i5;
            return;
        }
        int i7 = -i5;
        if (i6 <= i7) {
            floatingHeaderView.mHeaderCollapsed = true;
            floatingHeaderView.mSnappedScrolledY = i7;
        }
    }

    private void recreateAllRowsArray() {
        int size = ((ArrayMap) this.mPluginRows).size();
        if (size == 0) {
            this.mAllRows = this.mFixedRows;
        } else {
            int length = this.mFixedRows.length;
            this.mAllRows = new FloatingHeaderRow[size + length];
            for (int i4 = 0; i4 < length; i4++) {
                this.mAllRows[i4] = this.mFixedRows[i4];
            }
            for (PluginHeaderRow pluginHeaderRow : ((ArrayMap) this.mPluginRows).values()) {
                this.mAllRows[length] = pluginHeaderRow;
                length++;
            }
        }
        updateFloatingRowsHeight();
    }

    private void updateExpectedHeight() {
        updateFloatingRowsHeight();
        this.mMaxTranslation = 0;
        if (this.mFloatingRowsCollapsed) {
            return;
        }
        int i4 = 0 + this.mFloatingRowsHeight;
        this.mMaxTranslation = i4;
        if (this.mTabsHidden) {
            return;
        }
        this.mMaxTranslation = getResources().getDimensionPixelSize(R.dimen.all_apps_tabs_margin_top) + this.mTabsAdditionalPaddingBottom + i4;
    }

    private void updateFloatingRowsHeight() {
        this.mFloatingRowsHeight = Arrays.stream(this.mAllRows).mapToInt(new q()).sum();
    }

    public final void applyVerticalMove() {
        int i4 = this.mTranslationY;
        int max = Math.max(i4, -this.mMaxTranslation);
        this.mTranslationY = max;
        int i5 = 0;
        if (this.mFloatingRowsCollapsed || i4 < max - getPaddingTop()) {
            for (FloatingHeaderRow floatingHeaderRow : this.mAllRows) {
                floatingHeaderRow.setVerticalScroll(0, true);
            }
        } else {
            for (FloatingHeaderRow floatingHeaderRow2 : this.mAllRows) {
                floatingHeaderRow2.setVerticalScroll(i4, false);
            }
        }
        this.mTabLayout.setTranslationY(this.mTranslationY);
        int paddingTop = getPaddingTop();
        int i6 = this.mTabsAdditionalPaddingTop;
        int i7 = paddingTop - i6;
        boolean z4 = this.mTabsHidden;
        if (z4) {
            i7 += i6;
        }
        Rect rect = this.mRVClip;
        if (z4 || this.mFloatingRowsCollapsed) {
            i5 = i7;
        }
        rect.top = i5;
        Rect rect2 = this.mHeaderClip;
        rect2.top = i7;
        setClipBounds(rect2);
        AllAppsRecyclerView allAppsRecyclerView = this.mMainRV;
        if (allAppsRecyclerView != null) {
            allAppsRecyclerView.setClipBounds(this.mRVClip);
        }
        AllAppsRecyclerView allAppsRecyclerView2 = this.mWorkRV;
        if (allAppsRecyclerView2 != null) {
            allAppsRecyclerView2.setClipBounds(this.mRVClip);
        }
        SearchRecyclerView searchRecyclerView = this.mSearchRV;
        if (searchRecyclerView != null) {
            searchRecyclerView.setClipBounds(this.mRVClip);
        }
    }

    public final FloatingHeaderRow findFixedRowByType(Class cls) {
        FloatingHeaderRow[] floatingHeaderRowArr;
        for (FloatingHeaderRow floatingHeaderRow : this.mAllRows) {
            if (floatingHeaderRow.getTypeClass() == cls) {
                return floatingHeaderRow;
            }
        }
        return null;
    }

    public final int getClipTop() {
        return this.mHeaderClip.top;
    }

    public final int getFloatingRowsHeight() {
        return this.mFloatingRowsHeight;
    }

    @Override // android.view.ViewGroup
    public final View getFocusedChild() {
        FloatingHeaderRow[] floatingHeaderRowArr;
        if (FeatureFlags.ENABLE_DEVICE_SEARCH.get()) {
            for (FloatingHeaderRow floatingHeaderRow : this.mAllRows) {
                if (floatingHeaderRow.hasVisibleContent() && floatingHeaderRow.isVisible()) {
                    return floatingHeaderRow.getFocusedChild();
                }
            }
            return null;
        }
        return super.getFocusedChild();
    }

    public final int getMaxTranslation() {
        int i4 = this.mMaxTranslation;
        return (i4 == 0 && (this.mTabsHidden || this.mFloatingRowsCollapsed)) ? getResources().getDimensionPixelSize(R.dimen.all_apps_search_bar_bottom_padding) : (i4 <= 0 || !this.mTabsHidden) ? i4 : getPaddingTop() + i4;
    }

    public final int getPeripheralProtectionHeight() {
        if (this.mTabsHidden || this.mFloatingRowsCollapsed || !this.mHeaderCollapsed) {
            return 0;
        }
        return Math.max(0, getPaddingBottom() + (this.mTabLayout.getBottom() - getPaddingTop()) + this.mTranslationY);
    }

    public final int getTabsAdditionalPaddingBottom() {
        return this.mTabsAdditionalPaddingBottom;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    public final boolean isSetUp() {
        return this.mMainRV != null;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.mTranslationY = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        applyVerticalMove();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.get(getContext())).addPluginListener(this, InterfaceC1317a.class, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.get(getContext())).removePluginListener(this);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mTabLayout = (ViewGroup) findViewById(R.id.tabs);
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt instanceof FloatingHeaderRow) {
                arrayList.add((FloatingHeaderRow) childAt);
            }
        }
        FloatingHeaderRow[] floatingHeaderRowArr = (FloatingHeaderRow[]) arrayList.toArray(new FloatingHeaderRow[arrayList.size()]);
        this.mFixedRows = floatingHeaderRowArr;
        this.mAllRows = floatingHeaderRowArr;
        updateFloatingRowsHeight();
    }

    public final void onHeightUpdated() {
        ActivityAllAppsContainerView activityAllAppsContainerView;
        int i4 = this.mMaxTranslation;
        updateExpectedHeight();
        if ((this.mMaxTranslation != i4 || this.mFloatingRowsCollapsed) && (activityAllAppsContainerView = (ActivityAllAppsContainerView) getParent()) != null) {
            activityAllAppsContainerView.setupHeader();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        calcOffset(this.mTempOffset);
        Point point = this.mTempOffset;
        motionEvent.offsetLocation(point.x, point.y);
        this.mForwardToRecyclerView = this.mCurrentRV.onInterceptTouchEvent(motionEvent);
        Point point2 = this.mTempOffset;
        motionEvent.offsetLocation(-point2.x, -point2.y);
        return this.mForwardToRecyclerView || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // n1.k
    public final void onPluginConnected(j jVar, Context context) {
        InterfaceC1317a interfaceC1317a = (InterfaceC1317a) jVar;
        PluginHeaderRow pluginHeaderRow = new PluginHeaderRow(interfaceC1317a, this);
        addView(pluginHeaderRow.mView, indexOfChild(this.mTabLayout));
        ((ArrayMap) this.mPluginRows).put(interfaceC1317a, pluginHeaderRow);
        recreateAllRowsArray();
        interfaceC1317a.e();
    }

    @Override // n1.k
    public final void onPluginDisconnected(j jVar) {
        InterfaceC1317a interfaceC1317a = (InterfaceC1317a) jVar;
        removeView(((PluginHeaderRow) ((ArrayMap) this.mPluginRows).get(interfaceC1317a)).mView);
        ((ArrayMap) this.mPluginRows).remove(interfaceC1317a);
        recreateAllRowsArray();
        onHeightUpdated();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mForwardToRecyclerView) {
            calcOffset(this.mTempOffset);
            Point point = this.mTempOffset;
            motionEvent.offsetLocation(point.x, point.y);
            try {
                return this.mCurrentRV.onTouchEvent(motionEvent);
            } finally {
                Point point2 = this.mTempOffset;
                motionEvent.offsetLocation(-point2.x, -point2.y);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void reset(boolean z4) {
        if (this.mAnimator.isStarted()) {
            this.mAnimator.cancel();
        }
        if (z4) {
            this.mAnimator.setIntValues(this.mTranslationY, 0);
            this.mAnimator.addUpdateListener(this);
            this.mAnimator.setDuration(150L);
            this.mAnimator.start();
        } else {
            this.mTranslationY = 0;
            applyVerticalMove();
        }
        this.mHeaderCollapsed = false;
        this.mSnappedScrolledY = -this.mMaxTranslation;
        this.mCurrentRV.scrollToTop();
    }

    public final void setActiveRV(int i4) {
        AllAppsRecyclerView allAppsRecyclerView = this.mCurrentRV;
        if (allAppsRecyclerView != null) {
            allAppsRecyclerView.removeOnScrollListener(this.mOnScrollListener);
        }
        AllAppsRecyclerView allAppsRecyclerView2 = i4 == 0 ? this.mMainRV : i4 == 1 ? this.mWorkRV : this.mSearchRV;
        this.mCurrentRV = allAppsRecyclerView2;
        allAppsRecyclerView2.addOnScrollListener(this.mOnScrollListener);
        this.mTabLayout.setVisibility(this.mTabsHidden ? 8 : i4 == 2 ? 8 : 0);
    }

    public final void setFloatingRowsCollapsed(boolean z4) {
        if (this.mFloatingRowsCollapsed == z4) {
            return;
        }
        this.mFloatingRowsCollapsed = z4;
        onHeightUpdated();
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        int i4 = ((ActivityContext) ActivityContext.lookupContext(getContext())).getDeviceProfile().allAppsLeftRightPadding;
        setPadding(i4, getPaddingTop(), i4, getPaddingBottom());
    }

    public final void setup(AllAppsRecyclerView allAppsRecyclerView, AllAppsRecyclerView allAppsRecyclerView2, SearchRecyclerView searchRecyclerView, int i4, boolean z4) {
        for (FloatingHeaderRow floatingHeaderRow : this.mAllRows) {
            floatingHeaderRow.setup(this, this.mAllRows, z4);
        }
        updateExpectedHeight();
        this.mTabsHidden = z4;
        this.mTabLayout.setVisibility(z4 ? 8 : 0);
        this.mMainRV = allAppsRecyclerView;
        this.mWorkRV = allAppsRecyclerView2;
        this.mSearchRV = searchRecyclerView;
        setActiveRV(i4);
        reset(false);
    }

    public FloatingHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRVClip = new Rect(0, 0, Integer.MAX_VALUE, Integer.MAX_VALUE);
        this.mHeaderClip = new Rect(0, 0, Integer.MAX_VALUE, Integer.MAX_VALUE);
        this.mAnimator = ValueAnimator.ofInt(0, 0);
        this.mTempOffset = new Point();
        this.mOnScrollListener = new AbstractC0290q0() { // from class: com.android.launcher3.allapps.FloatingHeaderView.1
            @Override // androidx.recyclerview.widget.AbstractC0290q0
            public final void onScrollStateChanged(RecyclerView recyclerView, int i4) {
            }

            @Override // androidx.recyclerview.widget.AbstractC0290q0
            public final void onScrolled(RecyclerView recyclerView, int i4, int i5) {
                FloatingHeaderView floatingHeaderView = FloatingHeaderView.this;
                if (recyclerView != floatingHeaderView.mCurrentRV) {
                    return;
                }
                if (floatingHeaderView.mAnimator.isStarted()) {
                    floatingHeaderView.mAnimator.cancel();
                }
                boolean z4 = floatingHeaderView.mHeaderCollapsed;
                FloatingHeaderView.d(floatingHeaderView, -floatingHeaderView.mCurrentRV.computeVerticalScrollOffset());
                floatingHeaderView.applyVerticalMove();
                if (z4 != floatingHeaderView.mHeaderCollapsed) {
                    ((ActivityAllAppsContainerView) floatingHeaderView.getParent()).invalidateHeader();
                }
            }
        };
        this.mPluginRows = new ArrayMap();
        FloatingHeaderRow[] floatingHeaderRowArr = FloatingHeaderRow.NO_ROWS;
        this.mFixedRows = floatingHeaderRowArr;
        this.mAllRows = floatingHeaderRowArr;
        this.mTabsAdditionalPaddingTop = context.getResources().getDimensionPixelSize(R.dimen.all_apps_header_top_adjustment);
        this.mTabsAdditionalPaddingBottom = context.getResources().getDimensionPixelSize(R.dimen.all_apps_header_bottom_adjustment);
    }
}
