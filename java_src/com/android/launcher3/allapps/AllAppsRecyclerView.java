package com.android.launcher3.allapps;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import androidx.recyclerview.widget.C0293s0;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.FastScrollRecyclerView;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$SearchResultContainer;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class AllAppsRecyclerView extends FastScrollRecyclerView {
    private static final boolean DEBUG_LATENCY;
    protected AlphabeticalAppsList mApps;
    private int mCumulativeVerticalScroll;
    private final AllAppsFastScrollHelper mFastScrollHelper;
    protected final int mNumAppsPerRow;

    static {
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        DEBUG_LATENCY = Log.isLoggable("SearchLogging", 2);
    }

    public AllAppsRecyclerView(Context context) {
        this(context, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final int getScrollBarMarginBottom() {
        if (getRootWindowInsets() == null) {
            return 0;
        }
        return getRootWindowInsets().getSystemWindowInsetBottom();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final int getScrollBarTop() {
        if (((ActivityContext) ActivityContext.lookupContext(getContext())).getAppsView().isSearchSupported()) {
            return getResources().getDimensionPixelOffset(R.dimen.all_apps_header_top_padding);
        }
        return 0;
    }

    @Override // android.view.View
    public final int getTopPaddingOffset() {
        return -getPaddingTop();
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public final boolean isPaddingOffsetRequired() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (DEBUG_LATENCY) {
            Log.d("SearchLogging", getClass().getSimpleName() + " onDraw; time stamp = " + System.currentTimeMillis());
        }
        super.onDraw(canvas);
    }

    @Override // com.android.launcher3.FastScrollRecyclerView
    public final void onFastScrollCompleted() {
        this.mFastScrollHelper.onFastScrollCompleted();
    }

    @Override // com.android.launcher3.FastScrollRecyclerView, androidx.recyclerview.widget.RecyclerView
    public final void onScrollStateChanged(int i4) {
        super.onScrollStateChanged(i4);
        StatsLogManager statsLogManager = ((ActivityContext) ActivityContext.lookupContext(getContext())).getStatsLogManager();
        if (i4 != 0) {
            if (i4 != 1) {
                return;
            }
            this.mCumulativeVerticalScroll = 0;
            requestFocus();
            statsLogManager.logger().sendToInteractionJankMonitor(StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_VERTICAL_SWIPE_BEGIN, this);
            ((ActivityContext) ActivityContext.lookupContext(getContext())).hideKeyboard();
            return;
        }
        statsLogManager.logger().sendToInteractionJankMonitor(StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_VERTICAL_SWIPE_END, this);
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(getContext());
        StatsLogManager statsLogManager2 = activityContext.getStatsLogManager();
        ActivityAllAppsContainerView appsView = activityContext.getAppsView();
        ExtendedEditText editText = appsView.mSearchUiManager.getEditText();
        LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
        LauncherAtom$SearchResultContainer.Builder newBuilder2 = LauncherAtom$SearchResultContainer.newBuilder();
        newBuilder2.setQueryLength(editText == null ? -1 : editText.length());
        newBuilder.setSearchResultContainer(newBuilder2);
        LauncherAtom$ContainerInfo launcherAtom$ContainerInfo = (LauncherAtom$ContainerInfo) newBuilder.build();
        if (this.mCumulativeVerticalScroll == 0) {
            statsLogManager2.logger().withContainerInfo(launcherAtom$ContainerInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_SCROLLED_UNKNOWN_DIRECTION);
        } else if (appsView.isSearching()) {
            statsLogManager2.logger().withContainerInfo(launcherAtom$ContainerInfo).log(this.mCumulativeVerticalScroll > 0 ? StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_SEARCH_SCROLLED_DOWN : StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_SEARCH_SCROLLED_UP);
        } else {
            AllAppsPagedView allAppsPagedView = appsView.mViewPager;
            if (allAppsPagedView == null || allAppsPagedView.getCurrentPage() != 1) {
                statsLogManager2.logger().withContainerInfo(launcherAtom$ContainerInfo).log(this.mCumulativeVerticalScroll > 0 ? StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_PERSONAL_SCROLLED_DOWN : StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_PERSONAL_SCROLLED_UP);
            } else {
                statsLogManager2.logger().withContainerInfo(launcherAtom$ContainerInfo).log(this.mCumulativeVerticalScroll > 0 ? StatsLogManager.LauncherEvent.LAUNCHER_WORK_FAB_BUTTON_COLLAPSE : StatsLogManager.LauncherEvent.LAUNCHER_WORK_FAB_BUTTON_EXTEND);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void onScrolled(int i4, int i5) {
        super.onScrolled(i4, i5);
        this.mCumulativeVerticalScroll += i5;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void onSizeChanged(int i4, int i5, int i6, int i7) {
        updatePoolSize();
    }

    @Override // com.android.launcher3.FastScrollRecyclerView
    public final void onUpdateScrollbar(int i4) {
        AlphabeticalAppsList alphabeticalAppsList = this.mApps;
        if (alphabeticalAppsList == null) {
            return;
        }
        if (((ArrayList) alphabeticalAppsList.getAdapterItems()).isEmpty() || this.mNumAppsPerRow == 0 || getChildCount() == 0) {
            this.mScrollbar.setThumbOffsetY(-1);
            return;
        }
        int computeVerticalScrollOffset = computeVerticalScrollOffset();
        if (computeVerticalScrollOffset < 0) {
            this.mScrollbar.setThumbOffsetY(-1);
            return;
        }
        int availableScrollBarHeight = getAvailableScrollBarHeight();
        int availableScrollHeight = getAvailableScrollHeight();
        if (availableScrollHeight <= 0) {
            this.mScrollbar.setThumbOffsetY(-1);
        } else if (!this.mScrollbar.isThumbDetached()) {
            synchronizeScrollBarThumbOffsetToViewScroll(computeVerticalScrollOffset, availableScrollHeight);
        } else if (this.mScrollbar.isDraggingThumb()) {
        } else {
            int i5 = (int) ((computeVerticalScrollOffset / availableScrollHeight) * availableScrollBarHeight);
            int thumbOffsetY = this.mScrollbar.getThumbOffsetY();
            int i6 = i5 - thumbOffsetY;
            if (i6 * i4 <= 0.0f) {
                this.mScrollbar.setThumbOffsetY(thumbOffsetY);
                return;
            }
            int max = Math.max(0, Math.min(availableScrollBarHeight, (i4 < 0 ? Math.max((int) ((i4 * thumbOffsetY) / i5), i6) : Math.min((int) (((availableScrollBarHeight - thumbOffsetY) * i4) / (availableScrollBarHeight - i5)), i6)) + thumbOffsetY));
            this.mScrollbar.setThumbOffsetY(max);
            if (i5 == max) {
                this.mScrollbar.reattachThumbToScroll();
            }
        }
    }

    @Override // com.android.launcher3.FastScrollRecyclerView
    public final String scrollToPositionAtProgress(float f4) {
        ArrayList arrayList;
        int size;
        if (this.mApps.getNumAppRows() == 0 || (size = (arrayList = (ArrayList) this.mApps.getFastScrollerSections()).size()) == 0) {
            return "";
        }
        AlphabeticalAppsList.FastScrollSectionInfo fastScrollSectionInfo = (AlphabeticalAppsList.FastScrollSectionInfo) arrayList.get(Utilities.boundToRange((int) (f4 * size), 0, size - 1));
        this.mFastScrollHelper.smoothScrollToSection(fastScrollSectionInfo);
        return fastScrollSectionInfo.sectionName;
    }

    public void updatePoolSize() {
        DeviceProfile deviceProfile = ((ActivityContext) ActivityContext.lookupContext(getContext())).getDeviceProfile();
        C0293s0 recycledViewPool = getRecycledViewPool();
        recycledViewPool.setMaxRecycledViews(4, 1);
        recycledViewPool.setMaxRecycledViews(8, 1);
        int i4 = deviceProfile.numShownAllAppsColumns;
        int ceil = (((int) Math.ceil(deviceProfile.availableHeightPx / deviceProfile.allAppsIconSizePx)) + 1) * i4;
        if (FeatureFlags.ALL_APPS_GONE_VISIBILITY.get()) {
            ceil += (i4 * 4) + 2;
        }
        recycledViewPool.setMaxRecycledViews(2, ceil);
    }

    public AllAppsRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AllAppsRecyclerView(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public AllAppsRecyclerView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4);
        this.mNumAppsPerRow = LauncherAppState.getIDP(context).numColumns;
        this.mFastScrollHelper = new AllAppsFastScrollHelper(this);
    }
}
