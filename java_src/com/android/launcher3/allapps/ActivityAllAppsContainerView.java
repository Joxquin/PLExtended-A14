package com.android.launcher3.allapps;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.WindowInsets;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.AbstractC0274i0;
import androidx.recyclerview.widget.AbstractC0280l0;
import androidx.recyclerview.widget.AbstractC0290q0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Insettable;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.allapps.search.AllAppsSearchUiDelegate;
import com.android.launcher3.allapps.search.SearchAdapterProvider;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.keyboard.FocusedItemDecorator;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.StringCache;
import com.android.launcher3.recyclerview.AllAppsRecyclerViewPool;
import com.android.launcher3.util.C0481n;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.views.RecyclerViewFastScroller;
import com.android.launcher3.views.ScrimView;
import com.android.launcher3.views.SpringRelativeLayout;
import com.android.launcher3.workprofile.PersonalWorkSlidingTabStrip;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Stream;
import w.f;
/* loaded from: classes.dex */
public class ActivityAllAppsContainerView extends SpringRelativeLayout implements DragSource, Insettable, DeviceProfile.OnDeviceProfileChangeListener, PersonalWorkSlidingTabStrip.OnActivePageChangedListener, ScrimView.ScrimDrawingController {
    public static final FloatProperty BOTTOM_SHEET_ALPHA = new FloatProperty() { // from class: com.android.launcher3.allapps.ActivityAllAppsContainerView.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((ActivityAllAppsContainerView) obj).mBottomSheetAlpha);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            ActivityAllAppsContainerView.f((ActivityAllAppsContainerView) obj, f4);
        }
    };
    protected final List mAH;
    protected final Context mActivityContext;
    private final AllAppsStore mAllAppsStore;
    private AllAppsTransitionController mAllAppsTransitionController;
    private float mBottomSheetAlpha;
    protected View mBottomSheetBackground;
    private int mBottomSheetBackgroundColor;
    private float[] mBottomSheetCornerRadii;
    private View mBottomSheetHandleArea;
    protected RecyclerViewFastScroller mFastScroller;
    protected final Point mFastScrollerOffset;
    private boolean mForceBottomSheetVisible;
    private boolean mHasWorkApps;
    protected FloatingHeaderView mHeader;
    private int mHeaderColor;
    private final Paint mHeaderPaint;
    private final int mHeaderProtectionColor;
    protected final float mHeaderThreshold;
    private final Rect mInsets;
    private boolean mIsSearching;
    protected SearchAdapterProvider mMainAdapterProvider;
    private int mNavBarScrimHeight;
    private final Paint mNavBarScrimPaint;
    protected final C0481n mPersonalMatcher;
    private boolean mRebindAdaptersAfterSearchAnimation;
    protected final int mScrimColor;
    private ScrimView mScrimView;
    private final AbstractC0290q0 mScrollListener;
    protected View mSearchContainer;
    private SearchRecyclerView mSearchRecyclerView;
    private final SearchTransitionController mSearchTransitionController;
    protected final AllAppsSearchUiDelegate mSearchUiDelegate;
    protected SearchUiManager mSearchUiManager;
    private int mTabsProtectionAlpha;
    private final Path mTmpPath;
    private final RectF mTmpRectF;
    protected RecyclerViewFastScroller mTouchHandler;
    protected boolean mUsingTabs;
    protected AllAppsPagedView mViewPager;
    protected final WorkProfileManager mWorkManager;

    /* loaded from: classes.dex */
    public final class AdapterHolder {
        public final AllAppsGridAdapter mAdapter;
        final AlphabeticalAppsList mAppsList;
        final AbstractC0280l0 mLayoutManager;
        final Rect mPadding = new Rect();
        AllAppsRecyclerView mRecyclerView;
        private final int mType;

        public AdapterHolder(int i4, AlphabeticalAppsList alphabeticalAppsList) {
            this.mType = i4;
            this.mAppsList = alphabeticalAppsList;
            AllAppsGridAdapter allAppsGridAdapter = new AllAppsGridAdapter(ActivityAllAppsContainerView.this.mActivityContext, ActivityAllAppsContainerView.this.getLayoutInflater(), alphabeticalAppsList, ActivityAllAppsContainerView.this.mMainAdapterProvider);
            this.mAdapter = allAppsGridAdapter;
            alphabeticalAppsList.setAdapter(allAppsGridAdapter);
            this.mLayoutManager = allAppsGridAdapter.getLayoutManager();
        }

        public final void applyPadding() {
            if (this.mRecyclerView != null) {
                int i4 = 0;
                boolean z4 = this.mType == 1;
                ActivityAllAppsContainerView activityAllAppsContainerView = ActivityAllAppsContainerView.this;
                if (z4 && activityAllAppsContainerView.mWorkManager.getWorkModeSwitch() != null) {
                    i4 = activityAllAppsContainerView.mInsets.bottom + activityAllAppsContainerView.mWorkManager.getWorkModeSwitch().getHeight();
                }
                if (activityAllAppsContainerView.isSearchBarFloating()) {
                    i4 += activityAllAppsContainerView.mSearchContainer.getHeight();
                }
                AllAppsRecyclerView allAppsRecyclerView = this.mRecyclerView;
                Rect rect = this.mPadding;
                allAppsRecyclerView.setPadding(rect.left, rect.top, rect.right, rect.bottom + i4);
            }
        }

        public final void setup(AllAppsRecyclerView allAppsRecyclerView, Predicate predicate) {
            AlphabeticalAppsList alphabeticalAppsList = this.mAppsList;
            alphabeticalAppsList.updateItemFilter(predicate);
            this.mRecyclerView = allAppsRecyclerView;
            ActivityAllAppsContainerView activityAllAppsContainerView = ActivityAllAppsContainerView.this;
            allAppsRecyclerView.bindFastScrollbar(activityAllAppsContainerView.mFastScroller);
            this.mRecyclerView.setEdgeEffectFactory(activityAllAppsContainerView.createEdgeEffectFactory());
            AllAppsRecyclerView allAppsRecyclerView2 = this.mRecyclerView;
            allAppsRecyclerView2.mApps = alphabeticalAppsList;
            allAppsRecyclerView2.setLayoutManager(this.mLayoutManager);
            AllAppsRecyclerView allAppsRecyclerView3 = this.mRecyclerView;
            AllAppsGridAdapter allAppsGridAdapter = this.mAdapter;
            allAppsRecyclerView3.setAdapter(allAppsGridAdapter);
            this.mRecyclerView.setHasFixedSize(true);
            this.mRecyclerView.setItemAnimator(null);
            activityAllAppsContainerView.onInitializeRecyclerView(this.mRecyclerView);
            FocusedItemDecorator focusedItemDecorator = new FocusedItemDecorator(this.mRecyclerView);
            this.mRecyclerView.addItemDecoration(focusedItemDecorator);
            allAppsGridAdapter.mIconFocusListener = focusedItemDecorator.getFocusListener();
            applyPadding();
        }
    }

    public ActivityAllAppsContainerView(Context context) {
        this(context, null);
    }

    private void alignParentTop(View view, boolean z4) {
        if (view.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
            layoutParams.addRule(10);
            layoutParams.topMargin = z4 ? getContext().getResources().getDimensionPixelSize(R.dimen.all_apps_header_pill_height) : 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [D0.a] */
    private void animateToSearchState(long j4, final boolean z4) {
        if (this.mSearchTransitionController.isRunning() || z4 != this.mIsSearching) {
            this.mFastScroller.setVisibility(z4 ? 4 : 0);
            if (z4) {
                this.mWorkManager.onActivePageChanged(2);
            } else {
                AllAppsTransitionController allAppsTransitionController = this.mAllAppsTransitionController;
                if (allAppsTransitionController != null) {
                    allAppsTransitionController.animateAllAppsToNoScale();
                }
            }
            this.mSearchTransitionController.animateToSearchState(z4, j4, new Runnable() { // from class: D0.a
                @Override // java.lang.Runnable
                public final void run() {
                    ActivityAllAppsContainerView.b(ActivityAllAppsContainerView.this, z4);
                }
            });
        }
    }

    public static /* synthetic */ void b(ActivityAllAppsContainerView activityAllAppsContainerView, boolean z4) {
        activityAllAppsContainerView.mIsSearching = z4;
        activityAllAppsContainerView.updateSearchResultsVisibility();
        int currentPage = activityAllAppsContainerView.getCurrentPage();
        if (activityAllAppsContainerView.mRebindAdaptersAfterSearchAnimation) {
            activityAllAppsContainerView.rebindAdapters(false);
            activityAllAppsContainerView.mRebindAdaptersAfterSearchAnimation = false;
        }
        if (z4) {
            activityAllAppsContainerView.mSearchUiDelegate.onAnimateToSearchStateCompleted();
            return;
        }
        activityAllAppsContainerView.setSearchResults(null);
        AllAppsPagedView allAppsPagedView = activityAllAppsContainerView.mViewPager;
        if (allAppsPagedView != null) {
            allAppsPagedView.setCurrentPage(currentPage);
        }
        activityAllAppsContainerView.onActivePageChanged(currentPage);
    }

    public static void c(ActivityAllAppsContainerView activityAllAppsContainerView) {
        activityAllAppsContainerView.mHasWorkApps = Stream.of((Object[]) activityAllAppsContainerView.mAllAppsStore.getApps()).anyMatch(activityAllAppsContainerView.mWorkManager.getMatcher());
        if (!activityAllAppsContainerView.mIsSearching) {
            activityAllAppsContainerView.rebindAdapters(false);
            if (activityAllAppsContainerView.mHasWorkApps) {
                activityAllAppsContainerView.mWorkManager.reset();
            }
        }
        ((ActivityContext) activityAllAppsContainerView.mActivityContext).getStatsLogManager().logger().withCardinality(activityAllAppsContainerView.mAllAppsStore.getApps().length).log(StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_COUNT);
    }

    public static void f(ActivityAllAppsContainerView activityAllAppsContainerView, float f4) {
        if (((ActivityContext) activityAllAppsContainerView.mActivityContext).getDeviceProfile().isTablet) {
            f4 = 1.0f;
        }
        activityAllAppsContainerView.mBottomSheetAlpha = f4;
    }

    private void layoutBelowSearchContainer(View view, boolean z4) {
        if (view.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
            layoutParams.addRule(6, R.id.search_container_all_apps);
            int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.all_apps_header_top_margin);
            if (z4) {
                dimensionPixelSize += getContext().getResources().getDimensionPixelSize(R.dimen.all_apps_header_pill_height);
            }
            layoutParams.topMargin = dimensionPixelSize;
        }
    }

    private void layoutWithoutSearchContainer(View view, boolean z4) {
        if (view.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
            layoutParams.addRule(10);
            layoutParams.topMargin = getContext().getResources().getDimensionPixelSize(z4 ? R.dimen.all_apps_header_pill_height : R.dimen.all_apps_header_top_margin);
        }
    }

    private static void removeCustomRules(View view) {
        if (view.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
            layoutParams.removeRule(2);
            layoutParams.removeRule(6);
            layoutParams.removeRule(10);
        }
    }

    private void setDeviceManagementResources() {
        if (((ActivityContext) this.mActivityContext).getStringCache() != null) {
            ((Button) findViewById(R.id.tab_personal)).setText(((ActivityContext) this.mActivityContext).getStringCache().allAppsPersonalTab);
            ((Button) findViewById(R.id.tab_work)).setText(((ActivityContext) this.mActivityContext).getStringCache().allAppsWorkTab);
        }
    }

    public final void addSpringFromFlingUpdateListener(final float f4, final float f5, ValueAnimator valueAnimator) {
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.allapps.ActivityAllAppsContainerView.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                ActivityAllAppsContainerView.this.absorbSwipeUpVelocity(Math.max(1000, Math.abs(Math.round(Math.min(0.0f, (((1.0f - f5) * ActivityAllAppsContainerView.this.getHeight()) / (((float) animator.getDuration()) * 1.7f)) + f4) * 1200.0f))));
            }
        });
    }

    public int computeNavBarScrimHeight(WindowInsets windowInsets) {
        return 0;
    }

    public AllAppsSearchUiDelegate createSearchUiDelegate() {
        return new AllAppsSearchUiDelegate(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        this.mNavBarScrimHeight = computeNavBarScrimHeight(windowInsets);
        DeviceProfile deviceProfile = ((ActivityContext) this.mActivityContext).getDeviceProfile();
        this.mAH.forEach(new a(Math.max(this.mInsets.bottom, this.mNavBarScrimHeight), deviceProfile));
        return super.dispatchApplyWindowInsets(windowInsets);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mNavBarScrimHeight > 0) {
            canvas.drawRect(0.0f, getHeight() - this.mNavBarScrimHeight, getWidth(), getHeight(), this.mNavBarScrimPaint);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        this.mSearchUiManager.preDispatchKeyEvent(keyEvent);
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        AllAppsPagedView allAppsPagedView;
        try {
            super.dispatchRestoreInstanceState(sparseArray);
        } catch (Exception e4) {
            Log.e("AllAppsContainerView", "restoreInstanceState viewId = 0", e4);
        }
        Bundle bundle = (Bundle) sparseArray.get(R.id.work_tab_state_id, null);
        if (bundle != null) {
            int i4 = bundle.getInt("launcher.allapps.current_page", 0);
            if (i4 != 1 || (allAppsPagedView = this.mViewPager) == null) {
                reset(true, true);
                return;
            }
            allAppsPagedView.setCurrentPage(i4);
            rebindAdapters(false);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        super.dispatchSaveInstanceState(sparseArray);
        Bundle bundle = new Bundle();
        bundle.putInt("launcher.allapps.current_page", getCurrentPage());
        sparseArray.put(R.id.work_tab_state_id, bundle);
    }

    public final void drawOnScrimWithScale(float f4, Canvas canvas) {
        float f5;
        float f6;
        View view = this.mBottomSheetBackground;
        boolean z4 = view.getVisibility() == 0;
        float f7 = 1.0f - f4;
        float width = (view.getWidth() * f7) / 2.0f;
        float top = view.getTop() + ((View) view.getParent()).getTranslationY();
        float height = ((view.getHeight() - (getHeight() / 2)) * f7) + top;
        float left = view.getLeft() + width;
        float right = view.getRight() - width;
        if (z4) {
            this.mHeaderPaint.setColor(this.mBottomSheetBackgroundColor);
            this.mHeaderPaint.setAlpha((int) (this.mBottomSheetAlpha * 255.0f));
            this.mTmpRectF.set(left, height, right, view.getBottom());
            this.mTmpPath.reset();
            this.mTmpPath.addRoundRect(this.mTmpRectF, this.mBottomSheetCornerRadii, Path.Direction.CW);
            canvas.drawPath(this.mTmpPath, this.mHeaderPaint);
        }
        this.mHeaderPaint.setColor(this.mHeaderColor);
        this.mHeaderPaint.setAlpha((int) (getAlpha() * Color.alpha(this.mHeaderColor)));
        if (this.mHeaderPaint.getColor() == this.mScrimColor || this.mHeaderPaint.getColor() == 0) {
            return;
        }
        float paddingTop = getVisibleContainerView().getPaddingTop() + getHeaderBottom();
        float a4 = f.a(paddingTop, top, f4, height);
        float height2 = (paddingTop * f4) + ((getVisibleContainerView().getHeight() * f7) / 2.0f);
        FloatingHeaderView floatingHeaderView = this.mHeader;
        if (!z4) {
            canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), height2, this.mHeaderPaint);
        } else if (!isSearchBarFloating() || this.mUsingTabs) {
            this.mTmpRectF.set(left, height, right, a4);
            this.mTmpPath.reset();
            this.mTmpPath.addRoundRect(this.mTmpRectF, this.mBottomSheetCornerRadii, Path.Direction.CW);
            canvas.drawPath(this.mTmpPath, this.mHeaderPaint);
        }
        int peripheralProtectionHeight = floatingHeaderView.getPeripheralProtectionHeight();
        if (this.mTabsProtectionAlpha <= 0 || peripheralProtectionHeight == 0) {
            return;
        }
        this.mHeaderPaint.setAlpha((int) (getAlpha() * this.mTabsProtectionAlpha));
        float width2 = canvas.getWidth();
        if (z4) {
            f6 = this.mBottomSheetBackground.getLeft() + width;
            f5 = this.mBottomSheetBackground.getRight() - width;
        } else {
            f5 = width2;
            f6 = 0.0f;
        }
        if (z4) {
            height2 = a4;
        }
        canvas.drawRect(f6, height2, f5, (peripheralProtectionHeight * f4) + height2, this.mHeaderPaint);
    }

    public final void forceBottomSheetVisible(boolean z4) {
        this.mForceBottomSheetVisible = z4;
        updateBackgroundVisibility(((ActivityContext) this.mActivityContext).getDeviceProfile());
    }

    public final AllAppsRecyclerView getActiveRecyclerView() {
        if (this.mIsSearching) {
            return this.mSearchRecyclerView;
        }
        if (this.mUsingTabs) {
            AllAppsPagedView allAppsPagedView = this.mViewPager;
            if (!(allAppsPagedView == null || allAppsPagedView.getNextPage() == 0)) {
                return ((AdapterHolder) this.mAH.get(1)).mRecyclerView;
            }
        }
        return ((AdapterHolder) this.mAH.get(0)).mRecyclerView;
    }

    public final ViewGroup getAppsRecyclerViewContainer() {
        AllAppsPagedView allAppsPagedView = this.mViewPager;
        return allAppsPagedView != null ? allAppsPagedView : (ViewGroup) findViewById(R.id.apps_list_view);
    }

    public final AllAppsStore getAppsStore() {
        return this.mAllAppsStore;
    }

    public View getContentView() {
        return this.mIsSearching ? this.mSearchRecyclerView : getAppsRecyclerViewContainer();
    }

    public final int getCurrentPage() {
        if (this.mIsSearching) {
            return 2;
        }
        AllAppsPagedView allAppsPagedView = this.mViewPager;
        if (allAppsPagedView == null) {
            return 0;
        }
        return allAppsPagedView.getNextPage();
    }

    public final String getDescription() {
        if (this.mUsingTabs || !this.mIsSearching) {
            StringCache stringCache = ((ActivityContext) this.mActivityContext).getStringCache();
            if (this.mUsingTabs) {
                boolean z4 = false;
                if (stringCache != null) {
                    AllAppsPagedView allAppsPagedView = this.mViewPager;
                    if (allAppsPagedView == null || allAppsPagedView.getNextPage() == 0) {
                        z4 = true;
                    }
                    return z4 ? stringCache.allAppsPersonalTabAccessibility : stringCache.allAppsWorkTabAccessibility;
                }
                AllAppsPagedView allAppsPagedView2 = this.mViewPager;
                if (allAppsPagedView2 == null || allAppsPagedView2.getNextPage() == 0) {
                    z4 = true;
                }
                return z4 ? getContext().getString(R.string.all_apps_button_personal_label) : getContext().getString(R.string.all_apps_button_work_label);
            }
            return getContext().getString(R.string.all_apps_button_label);
        }
        return getContext().getString(R.string.all_apps_search_results);
    }

    @Override // android.view.View
    public final void getDrawingRect(Rect rect) {
        super.getDrawingRect(rect);
        rect.offset(0, (int) getTranslationY());
    }

    public final FloatingHeaderView getFloatingHeaderView() {
        return this.mHeader;
    }

    public int getFloatingSearchBarRestingMarginBottom() {
        return 0;
    }

    public int getFloatingSearchBarRestingMarginEnd() {
        DeviceProfile deviceProfile = ((ActivityContext) this.mActivityContext).getDeviceProfile();
        return deviceProfile.getAllAppsIconStartMargin() + deviceProfile.allAppsLeftRightMargin;
    }

    public int getFloatingSearchBarRestingMarginStart() {
        DeviceProfile deviceProfile = ((ActivityContext) this.mActivityContext).getDeviceProfile();
        return deviceProfile.getAllAppsIconStartMargin() + deviceProfile.allAppsLeftRightMargin;
    }

    public final int getHeaderBottom() {
        int top;
        int clipTop = this.mHeader.getClipTop() + ((int) getTranslationY());
        if (!isSearchBarFloating()) {
            top = this.mHeader.getTop();
        } else if (!((ActivityContext) this.mActivityContext).getDeviceProfile().isTablet) {
            return clipTop;
        } else {
            top = this.mBottomSheetBackground.getTop();
        }
        return top + clipTop;
    }

    public final LayoutInflater getLayoutInflater() {
        return this.mSearchUiDelegate.getLayoutInflater();
    }

    public final SearchAdapterProvider getMainAdapterProvider() {
        return this.mMainAdapterProvider;
    }

    public final int getNavBarScrimHeight() {
        return this.mNavBarScrimHeight;
    }

    public final SearchRecyclerView getSearchRecyclerView() {
        return this.mSearchRecyclerView;
    }

    public final AlphabeticalAppsList getSearchResultList() {
        return ((AdapterHolder) this.mAH.get(2)).mAppsList;
    }

    public final SearchTransitionController getSearchTransitionController() {
        return this.mSearchTransitionController;
    }

    public final AllAppsSearchUiDelegate getSearchUiDelegate() {
        return this.mSearchUiDelegate;
    }

    public final SearchUiManager getSearchUiManager() {
        return this.mSearchUiManager;
    }

    public final View getSearchView() {
        return this.mSearchContainer;
    }

    public final View getVisibleContainerView() {
        return this.mBottomSheetBackground.getVisibility() == 0 ? this.mBottomSheetBackground : this;
    }

    public View inflateSearchBar() {
        return this.mSearchUiDelegate.inflateSearchBar();
    }

    public void invalidateHeader() {
        ScrimView scrimView = this.mScrimView;
        if (scrimView != null) {
            scrimView.invalidate();
        }
    }

    public boolean isInAllApps() {
        return true;
    }

    public boolean isPersonalTabVisible() {
        View findViewById = findViewById(R.id.tab_personal);
        if (findViewById != null && findViewById.isShown()) {
            return findViewById.getGlobalVisibleRect(new Rect());
        }
        return false;
    }

    public final boolean isSearchBarFloating() {
        return this.mSearchUiDelegate.isSearchBarFloating();
    }

    public boolean isSearchSupported() {
        return true;
    }

    public final boolean isSearching() {
        return this.mIsSearching;
    }

    public boolean isWorkTabVisible() {
        View findViewById = findViewById(R.id.tab_work);
        if (findViewById != null && findViewById.isShown()) {
            return findViewById.getGlobalVisibleRect(new Rect());
        }
        return false;
    }

    @Override // com.android.launcher3.workprofile.PersonalWorkSlidingTabStrip.OnActivePageChangedListener
    public final void onActivePageChanged(int i4) {
        if (this.mSearchTransitionController.isRunning()) {
            return;
        }
        if (i4 != 2) {
            ((ActivityContext) this.mActivityContext).hideKeyboard();
        }
        if (((AdapterHolder) this.mAH.get(i4)).mRecyclerView != null) {
            ((AdapterHolder) this.mAH.get(i4)).mRecyclerView.bindFastScrollbar(this.mFastScroller);
        }
        this.mHeader.setActiveRV(i4);
        reset(true, !this.mIsSearching);
        this.mWorkManager.onActivePageChanged(i4);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isSearchBarFloating()) {
            ((ActivityContext) this.mActivityContext).getDragLayer().addView(this.mSearchContainer);
            this.mSearchUiDelegate.onInitializeSearchBar();
        }
        ((ActivityContext) this.mActivityContext).addOnDeviceProfileChangeListener(this);
    }

    public final void onClearSearchResult() {
        this.mMainAdapterProvider.clearHighlightedItem();
        animateToSearchState(300L, false);
        rebindAdapters(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((ActivityContext) this.mActivityContext).removeOnDeviceProfileChangeListener(this);
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        for (AdapterHolder adapterHolder : this.mAH) {
            adapterHolder.mAdapter.setAppsPerRow(deviceProfile.numShownAllAppsColumns);
            adapterHolder.mAppsList.setNumAppsPerRowAllApps(deviceProfile.numShownAllAppsColumns);
            AllAppsRecyclerView allAppsRecyclerView = adapterHolder.mRecyclerView;
            if (allAppsRecyclerView != null) {
                allAppsRecyclerView.swapAdapter(allAppsRecyclerView.getAdapter(), true);
                adapterHolder.mRecyclerView.getRecycledViewPool().clear();
            }
        }
        updateBackgroundVisibility(deviceProfile);
        int navBarScrimColor = Themes.getNavBarScrimColor(this.mActivityContext);
        if (this.mNavBarScrimPaint.getColor() != navBarScrimColor) {
            this.mNavBarScrimPaint.setColor(navBarScrimColor);
            invalidate();
        }
    }

    @Override // com.android.launcher3.DragSource
    public final void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z4) {
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        ((AdapterHolder) this.mAH.get(2)).setup(this.mSearchRecyclerView, new D0.b());
        rebindAdapters(true);
        float dialogCornerRadius = Themes.getDialogCornerRadius(getContext());
        this.mBottomSheetCornerRadii = new float[]{dialogCornerRadius, dialogCornerRadius, dialogCornerRadius, dialogCornerRadius, 0.0f, 0.0f, 0.0f, 0.0f};
        this.mBottomSheetBackgroundColor = GraphicsUtils.getAttrColor(R.attr.materialColorSurfaceDim, getContext());
        updateBackgroundVisibility(((ActivityContext) this.mActivityContext).getDeviceProfile());
        this.mSearchUiManager.initializeSearch(this);
    }

    public final void onInitializeRecyclerView(AllAppsRecyclerView allAppsRecyclerView) {
        allAppsRecyclerView.addOnScrollListener(this.mScrollListener);
        this.mSearchUiDelegate.onInitializeRecyclerView(allAppsRecyclerView);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!isInAllApps()) {
            this.mTouchHandler = null;
            return false;
        }
        if (motionEvent.getAction() == 0) {
            AllAppsRecyclerView activeRecyclerView = getActiveRecyclerView();
            if (activeRecyclerView == null || activeRecyclerView.getScrollbar() == null || !activeRecyclerView.getScrollbar().isHitInParent(motionEvent.getX(), motionEvent.getY(), this.mFastScrollerOffset)) {
                this.mTouchHandler = null;
            } else {
                this.mTouchHandler = activeRecyclerView.getScrollbar();
            }
        }
        RecyclerViewFastScroller recyclerViewFastScroller = this.mTouchHandler;
        if (recyclerViewFastScroller != null) {
            return recyclerViewFastScroller.handleTouchEvent(motionEvent, this.mFastScrollerOffset);
        }
        return false;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (isInAllApps()) {
            if (motionEvent.getAction() == 0) {
                AllAppsRecyclerView activeRecyclerView = getActiveRecyclerView();
                if (activeRecyclerView == null || activeRecyclerView.getScrollbar() == null || !activeRecyclerView.getScrollbar().isHitInParent(motionEvent.getX(), motionEvent.getY(), this.mFastScrollerOffset)) {
                    this.mTouchHandler = null;
                } else {
                    this.mTouchHandler = activeRecyclerView.getScrollbar();
                }
            }
            RecyclerViewFastScroller recyclerViewFastScroller = this.mTouchHandler;
            if (recyclerViewFastScroller == null) {
                return this.mIsSearching && ((ActivityContext) this.mActivityContext).getDragLayer().isEventOverView(getVisibleContainerView(), motionEvent);
            }
            recyclerViewFastScroller.handleTouchEvent(motionEvent, this.mFastScrollerOffset);
            return true;
        }
        return false;
    }

    public final void rebindAdapters(boolean z4) {
        AllAppsRecyclerView allAppsRecyclerView;
        AllAppsRecyclerView allAppsRecyclerView2;
        if (this.mSearchTransitionController.isRunning()) {
            this.mRebindAdaptersAfterSearchAnimation = true;
            return;
        }
        updateSearchResultsVisibility();
        boolean z5 = this.mHasWorkApps;
        if (z5 != this.mUsingTabs || z4) {
            if (!FeatureFlags.ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES.get()) {
                AbstractC0274i0 decorator = this.mMainAdapterProvider.getDecorator();
                this.mSearchRecyclerView.removeItemDecoration(decorator);
                this.mSearchRecyclerView.addItemDecoration(decorator);
            }
            int i4 = 0;
            while (true) {
                allAppsRecyclerView = null;
                if (i4 > 1) {
                    break;
                }
                AdapterHolder adapterHolder = (AdapterHolder) this.mAH.get(i4);
                AllAppsRecyclerView allAppsRecyclerView3 = adapterHolder.mRecyclerView;
                if (allAppsRecyclerView3 != null) {
                    allAppsRecyclerView3.setLayoutManager(null);
                    adapterHolder.mRecyclerView.setAdapter(null);
                }
                i4++;
            }
            ViewGroup appsRecyclerViewContainer = getAppsRecyclerViewContainer();
            int indexOfChild = indexOfChild(appsRecyclerViewContainer);
            removeView(appsRecyclerViewContainer);
            View inflate = getLayoutInflater().inflate(z5 ? R.layout.all_apps_tabs : R.layout.all_apps_rv_layout, (ViewGroup) this, false);
            addView(inflate, indexOfChild);
            if (z5) {
                AllAppsPagedView allAppsPagedView = (AllAppsPagedView) inflate;
                this.mViewPager = allAppsPagedView;
                allAppsPagedView.initParentViews(this);
                ((PersonalWorkSlidingTabStrip) this.mViewPager.getPageIndicator()).setOnActivePageChangedListener(this);
                this.mViewPager.setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.launcher3.allapps.ActivityAllAppsContainerView.3
                    @Override // android.view.ViewOutlineProvider
                    public final void getOutline(View view, Outline outline) {
                        outline.setRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + ((int) (ActivityAllAppsContainerView.this.getMeasuredHeight() * 0.9f)));
                    }
                });
                this.mWorkManager.reset();
                post(new d(1, this));
            } else {
                this.mWorkManager.detachWorkModeSwitch();
                this.mViewPager = null;
            }
            removeCustomRules(inflate);
            removeCustomRules(this.mSearchRecyclerView);
            if (!isSearchSupported()) {
                layoutWithoutSearchContainer(inflate, z5);
            } else if (isSearchBarFloating()) {
                alignParentTop(inflate, z5);
                alignParentTop(this.mSearchRecyclerView, false);
            } else {
                layoutBelowSearchContainer(inflate, z5);
                layoutBelowSearchContainer(this.mSearchRecyclerView, false);
            }
            updateSearchResultsVisibility();
            this.mUsingTabs = z5;
            this.mAllAppsStore.unregisterIconContainer(((AdapterHolder) this.mAH.get(0)).mRecyclerView);
            this.mAllAppsStore.unregisterIconContainer(((AdapterHolder) this.mAH.get(1)).mRecyclerView);
            this.mAllAppsStore.unregisterIconContainer(((AdapterHolder) this.mAH.get(2)).mRecyclerView);
            if (this.mUsingTabs) {
                allAppsRecyclerView2 = (AllAppsRecyclerView) this.mViewPager.getChildAt(0);
                allAppsRecyclerView = (AllAppsRecyclerView) this.mViewPager.getChildAt(1);
                ((AdapterHolder) this.mAH.get(0)).setup(allAppsRecyclerView2, this.mPersonalMatcher);
                ((AdapterHolder) this.mAH.get(1)).setup(allAppsRecyclerView, this.mWorkManager.getMatcher());
                allAppsRecyclerView.setId(R.id.apps_list_view_work);
                if (FeatureFlags.ENABLE_EXPANDING_PAUSE_WORK_BUTTON.get()) {
                    AllAppsRecyclerView allAppsRecyclerView4 = ((AdapterHolder) this.mAH.get(1)).mRecyclerView;
                    final WorkProfileManager workProfileManager = this.mWorkManager;
                    workProfileManager.getClass();
                    allAppsRecyclerView4.addOnScrollListener(new AbstractC0290q0() { // from class: com.android.launcher3.allapps.WorkProfileManager.1
                        int totalDelta = 0;

                        @Override // androidx.recyclerview.widget.AbstractC0290q0
                        public final void onScrollStateChanged(RecyclerView recyclerView, int i5) {
                            if (i5 == 0) {
                                this.totalDelta = 0;
                            }
                        }

                        @Override // androidx.recyclerview.widget.AbstractC0290q0
                        public final void onScrolled(RecyclerView recyclerView, int i5, int i6) {
                            WorkModeSwitch workModeSwitch = WorkProfileManager.this.getWorkModeSwitch();
                            if (workModeSwitch == null) {
                                return;
                            }
                            this.totalDelta = Utilities.boundToRange(this.totalDelta, -workModeSwitch.getScrollThreshold(), workModeSwitch.getScrollThreshold()) + i6;
                            if ((recyclerView.computeVerticalScrollOffset() == 0) || this.totalDelta < (-workModeSwitch.getScrollThreshold())) {
                                workModeSwitch.extend();
                            } else if (this.totalDelta > workModeSwitch.getScrollThreshold()) {
                                workModeSwitch.shrink();
                            }
                        }
                    });
                }
                ((PersonalWorkSlidingTabStrip) this.mViewPager.getPageIndicator()).setActiveMarker(0);
                findViewById(R.id.tab_personal).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.launcher3.allapps.b

                    /* renamed from: e  reason: collision with root package name */
                    public final /* synthetic */ ActivityAllAppsContainerView f4544e;

                    {
                        this.f4544e = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (r2) {
                            case 0:
                                ActivityAllAppsContainerView activityAllAppsContainerView = this.f4544e;
                                if (activityAllAppsContainerView.mViewPager.snapToPage(0)) {
                                    ((ActivityContext) activityAllAppsContainerView.mActivityContext).getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_TAP_ON_PERSONAL_TAB);
                                    return;
                                }
                                return;
                            default:
                                ActivityAllAppsContainerView activityAllAppsContainerView2 = this.f4544e;
                                if (activityAllAppsContainerView2.mViewPager.snapToPage(1)) {
                                    ((ActivityContext) activityAllAppsContainerView2.mActivityContext).getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_TAP_ON_WORK_TAB);
                                    return;
                                }
                                return;
                        }
                    }
                });
                findViewById(R.id.tab_work).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.launcher3.allapps.b

                    /* renamed from: e  reason: collision with root package name */
                    public final /* synthetic */ ActivityAllAppsContainerView f4544e;

                    {
                        this.f4544e = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (r2) {
                            case 0:
                                ActivityAllAppsContainerView activityAllAppsContainerView = this.f4544e;
                                if (activityAllAppsContainerView.mViewPager.snapToPage(0)) {
                                    ((ActivityContext) activityAllAppsContainerView.mActivityContext).getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_TAP_ON_PERSONAL_TAB);
                                    return;
                                }
                                return;
                            default:
                                ActivityAllAppsContainerView activityAllAppsContainerView2 = this.f4544e;
                                if (activityAllAppsContainerView2.mViewPager.snapToPage(1)) {
                                    ((ActivityContext) activityAllAppsContainerView2.mActivityContext).getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_TAP_ON_WORK_TAB);
                                    return;
                                }
                                return;
                        }
                    }
                });
                setDeviceManagementResources();
                if (this.mHeader.isSetUp()) {
                    onActivePageChanged(this.mViewPager.getNextPage());
                }
            } else {
                allAppsRecyclerView2 = (AllAppsRecyclerView) findViewById(R.id.apps_list_view);
                ((AdapterHolder) this.mAH.get(0)).setup(allAppsRecyclerView2, null);
                ((AdapterHolder) this.mAH.get(1)).mRecyclerView = null;
            }
            AllAppsRecyclerViewPool recyclerViewPool = this.mAllAppsStore.getRecyclerViewPool();
            if (FeatureFlags.ENABLE_ALL_APPS_RV_PREINFLATION.get()) {
                allAppsRecyclerView2.setRecycledViewPool(recyclerViewPool);
                if (allAppsRecyclerView != null) {
                    allAppsRecyclerView.setRecycledViewPool(recyclerViewPool);
                }
                if (FeatureFlags.ALL_APPS_GONE_VISIBILITY.get()) {
                    allAppsRecyclerView2.updatePoolSize();
                }
            }
            setupHeader();
            if (isSearchBarFloating()) {
                ((RelativeLayout.LayoutParams) this.mFastScroller.getLayoutParams()).bottomMargin = getResources().getDimensionPixelSize(R.dimen.fastscroll_bottom_margin_floating_search) + this.mSearchContainer.getHeight();
            }
            this.mAllAppsStore.registerIconContainer(((AdapterHolder) this.mAH.get(0)).mRecyclerView);
            this.mAllAppsStore.registerIconContainer(((AdapterHolder) this.mAH.get(1)).mRecyclerView);
            this.mAllAppsStore.registerIconContainer(((AdapterHolder) this.mAH.get(2)).mRecyclerView);
        }
    }

    public final void reset(boolean z4, boolean z5) {
        for (int i4 = 0; i4 < this.mAH.size(); i4++) {
            if (((AdapterHolder) this.mAH.get(i4)).mRecyclerView != null) {
                ((AdapterHolder) this.mAH.get(i4)).mRecyclerView.scrollToTop();
            }
        }
        RecyclerViewFastScroller recyclerViewFastScroller = this.mTouchHandler;
        if (recyclerViewFastScroller != null) {
            recyclerViewFastScroller.endFastScrolling();
        }
        FloatingHeaderView floatingHeaderView = this.mHeader;
        if (floatingHeaderView != null && floatingHeaderView.getVisibility() == 0) {
            this.mHeader.reset(z4);
        }
        forceBottomSheetVisible(false);
        updateHeaderScroll(0);
        if (z5) {
            Handler handler = Executors.MAIN_EXECUTOR.getHandler();
            SearchUiManager searchUiManager = this.mSearchUiManager;
            Objects.requireNonNull(searchUiManager);
            handler.post(new d(0, searchUiManager));
            animateToSearchState(0L, false);
        }
        if (this.mIsSearching) {
            this.mWorkManager.reset();
        }
    }

    public final void setAllAppsTransitionController(AllAppsTransitionController allAppsTransitionController) {
        this.mAllAppsTransitionController = allAppsTransitionController;
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        this.mInsets.set(rect);
        DeviceProfile deviceProfile = ((ActivityContext) this.mActivityContext).getDeviceProfile();
        this.mAH.forEach(new a(Math.max(this.mInsets.bottom, this.mNavBarScrimHeight), deviceProfile));
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        marginLayoutParams.leftMargin = rect.left;
        marginLayoutParams.rightMargin = rect.right;
        setLayoutParams(marginLayoutParams);
        if (deviceProfile.isVerticalBarLayout()) {
            Rect rect2 = deviceProfile.workspacePadding;
            setPadding(rect2.left, 0, rect2.right, 0);
        } else {
            int i4 = deviceProfile.allAppsTopPadding;
            if (isSearchBarFloating() && !deviceProfile.isTablet) {
                i4 += getResources().getDimensionPixelSize(R.dimen.all_apps_additional_top_padding_floating_search);
            }
            int i5 = deviceProfile.allAppsLeftRightMargin;
            setPadding(i5, i4, i5, 0);
        }
        InsettableFrameLayout.dispatchInsets(this, rect);
    }

    public final void setScrimView(ScrimView scrimView) {
        this.mScrimView = scrimView;
    }

    public final void setSearchResults(int i4, ArrayList arrayList) {
        setSearchResults(arrayList);
        this.mSearchUiDelegate.onSearchResultsChanged(i4);
    }

    @Override // android.view.View
    public final void setTranslationY(float f4) {
        super.setTranslationY(f4);
        invalidateHeader();
    }

    public final void setupHeader() {
        this.mHeader.setVisibility(0);
        this.mHeader.setup(((AdapterHolder) this.mAH.get(0)).mRecyclerView, ((AdapterHolder) this.mAH.get(1)).mRecyclerView, (SearchRecyclerView) ((AdapterHolder) this.mAH.get(2)).mRecyclerView, getCurrentPage(), !this.mUsingTabs);
        final int maxTranslation = this.mHeader.getMaxTranslation();
        this.mAH.forEach(new Consumer() { // from class: com.android.launcher3.allapps.c
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ActivityAllAppsContainerView.AdapterHolder adapterHolder = (ActivityAllAppsContainerView.AdapterHolder) obj;
                adapterHolder.mPadding.top = maxTranslation;
                adapterHolder.applyPadding();
                AllAppsRecyclerView allAppsRecyclerView = adapterHolder.mRecyclerView;
                if (allAppsRecyclerView != null) {
                    allAppsRecyclerView.scrollToTop();
                }
            }
        });
        removeCustomRules(this.mHeader);
        if (!isSearchSupported()) {
            layoutWithoutSearchContainer(this.mHeader, false);
        } else if (isSearchBarFloating()) {
            alignParentTop(this.mHeader, false);
        } else {
            layoutBelowSearchContainer(this.mHeader, false);
        }
    }

    public final boolean shouldContainerScroll(MotionEvent motionEvent) {
        AllAppsRecyclerView activeRecyclerView;
        BaseDragLayer dragLayer = ((ActivityContext) this.mActivityContext).getDragLayer();
        if (dragLayer.isEventOverView(this.mSearchContainer, motionEvent) || dragLayer.isEventOverView(this.mBottomSheetHandleArea, motionEvent) || (activeRecyclerView = getActiveRecyclerView()) == null) {
            return true;
        }
        if (activeRecyclerView.getScrollbar() == null || activeRecyclerView.getScrollbar().getThumbOffsetY() < 0 || !dragLayer.isEventOverView(activeRecyclerView.getScrollbar(), motionEvent)) {
            if (dragLayer.isEventOverView(getVisibleContainerView(), motionEvent)) {
                return activeRecyclerView.shouldContainerScroll(dragLayer, motionEvent);
            }
            return true;
        }
        return false;
    }

    public boolean shouldFloatingSearchBarBePillWhenUnfocused() {
        return false;
    }

    public final boolean shouldShowTabs() {
        return this.mHasWorkApps;
    }

    public final void switchToTab() {
        if (this.mUsingTabs) {
            this.mViewPager.setCurrentPage(1);
        }
    }

    public void updateBackgroundVisibility(DeviceProfile deviceProfile) {
        this.mBottomSheetBackground.setVisibility(deviceProfile.isTablet || this.mForceBottomSheetVisible ? 0 : 8);
    }

    public final void updateHeaderScroll(int i4) {
        float f4 = i4;
        int k4 = E.a.k(E.a.d(this.mScrimColor, this.mHeaderProtectionColor, Utilities.boundToRange(f4 / this.mHeaderThreshold, 0.0f, 1.0f)), (int) (this.mSearchContainer.getAlpha() * 255.0f));
        boolean z4 = false;
        int boundToRange = this.mHeader.getPeripheralProtectionHeight() == 0 ? 0 : (int) (Utilities.boundToRange((this.mHeader.mSnappedScrolledY + i4) / this.mHeaderThreshold, 0.0f, 1.0f) * 255.0f);
        if (k4 != this.mHeaderColor || this.mTabsProtectionAlpha != boundToRange) {
            this.mHeaderColor = k4;
            this.mTabsProtectionAlpha = boundToRange;
            invalidateHeader();
        }
        if (this.mSearchUiManager.getEditText() == null) {
            return;
        }
        float boundToRange2 = Utilities.boundToRange(f4 / this.mHeaderThreshold, 0.0f, 1.0f);
        boolean backgroundVisibility = this.mSearchUiManager.getBackgroundVisibility();
        if (i4 == 0 && !this.mIsSearching) {
            z4 = true;
        } else if (f4 <= this.mHeaderThreshold) {
            z4 = backgroundVisibility;
        }
        this.mSearchUiManager.setBackgroundVisibility(1.0f - boundToRange2, z4);
    }

    public final void updateSearchResultsVisibility() {
        if (this.mIsSearching) {
            this.mSearchRecyclerView.setVisibility(0);
            getAppsRecyclerViewContainer().setVisibility(8);
            this.mHeader.setVisibility(8);
        } else {
            this.mSearchRecyclerView.setVisibility(8);
            getAppsRecyclerViewContainer().setVisibility(0);
            this.mHeader.setVisibility(0);
        }
        if (this.mHeader.isSetUp()) {
            this.mHeader.setActiveRV(getCurrentPage());
        }
    }

    public final void updateWorkUI() {
        setDeviceManagementResources();
        if (this.mWorkManager.getWorkModeSwitch() != null) {
            this.mWorkManager.getWorkModeSwitch().updateStringFromCache();
        }
        AllAppsRecyclerView allAppsRecyclerView = ((AdapterHolder) this.mAH.get(1)).mRecyclerView;
        if (allAppsRecyclerView != null) {
            for (int i4 = 0; i4 < allAppsRecyclerView.getChildCount(); i4++) {
                View childAt = allAppsRecyclerView.getChildAt(i4);
                int itemViewType = allAppsRecyclerView.getChildViewHolder(childAt).getItemViewType();
                if (itemViewType == 16) {
                    ((WorkEduCard) childAt).updateStringFromCache();
                } else if (itemViewType == 32) {
                    ((WorkPausedCard) childAt).updateStringFromCache();
                }
            }
        }
    }

    public ActivityAllAppsContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityAllAppsContainerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        UserHandle myUserHandle = Process.myUserHandle();
        int i5 = ItemInfoMatcher.f5271a;
        this.mPersonalMatcher = new C0481n(0, myUserHandle);
        this.mFastScrollerOffset = new Point();
        this.mHeaderPaint = new Paint(1);
        this.mInsets = new Rect();
        this.mScrollListener = new AbstractC0290q0() { // from class: com.android.launcher3.allapps.ActivityAllAppsContainerView.2
            @Override // androidx.recyclerview.widget.AbstractC0290q0
            public final void onScrolled(RecyclerView recyclerView, int i6, int i7) {
                ActivityAllAppsContainerView.this.updateHeaderScroll(recyclerView.computeVerticalScrollOffset());
            }
        };
        this.mTmpPath = new Path();
        this.mTmpRectF = new RectF();
        this.mNavBarScrimHeight = 0;
        this.mBottomSheetAlpha = 1.0f;
        Context lookupContext = ActivityContext.lookupContext(context);
        this.mActivityContext = lookupContext;
        AllAppsStore allAppsStore = new AllAppsStore(lookupContext);
        this.mAllAppsStore = allAppsStore;
        this.mScrimColor = GraphicsUtils.getAttrColor(R.attr.allAppsScrimColor, context);
        this.mHeaderThreshold = getResources().getDimensionPixelSize(R.dimen.dynamic_grid_cell_border_spacing);
        this.mHeaderProtectionColor = GraphicsUtils.getAttrColor(R.attr.allappsHeaderProtectionColor, context);
        WorkProfileManager workProfileManager = new WorkProfileManager((UserManager) lookupContext.getSystemService(UserManager.class), this, ((ActivityContext) lookupContext).getStatsLogManager());
        this.mWorkManager = workProfileManager;
        List asList = Arrays.asList(null, null, null);
        this.mAH = asList;
        Paint paint = new Paint();
        this.mNavBarScrimPaint = paint;
        paint.setColor(Themes.getNavBarScrimColor(lookupContext));
        allAppsStore.addUpdateListener(new AllAppsStore.OnUpdateListener() { // from class: D0.c
            @Override // com.android.launcher3.allapps.AllAppsStore.OnUpdateListener
            public final void onAppsUpdated() {
                ActivityAllAppsContainerView.c(ActivityAllAppsContainerView.this);
            }
        });
        setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: D0.d
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z4) {
                ActivityAllAppsContainerView activityAllAppsContainerView = ActivityAllAppsContainerView.this;
                if (!z4) {
                    activityAllAppsContainerView.getClass();
                } else if (activityAllAppsContainerView.getActiveRecyclerView() != null) {
                    activityAllAppsContainerView.getActiveRecyclerView().requestFocus();
                }
            }
        });
        AllAppsSearchUiDelegate createSearchUiDelegate = createSearchUiDelegate();
        this.mSearchUiDelegate = createSearchUiDelegate;
        this.mMainAdapterProvider = createSearchUiDelegate.createMainAdapterProvider();
        asList.set(0, new AdapterHolder(0, new AlphabeticalAppsList(lookupContext, allAppsStore, null)));
        asList.set(1, new AdapterHolder(1, new AlphabeticalAppsList(lookupContext, allAppsStore, workProfileManager)));
        asList.set(2, new AdapterHolder(2, new AlphabeticalAppsList(lookupContext, null, null)));
        getLayoutInflater().inflate(R.layout.all_apps_content, this);
        this.mHeader = (FloatingHeaderView) findViewById(R.id.all_apps_header);
        this.mBottomSheetBackground = findViewById(R.id.bottom_sheet_background);
        this.mBottomSheetHandleArea = findViewById(R.id.bottom_sheet_handle_area);
        this.mSearchRecyclerView = (SearchRecyclerView) findViewById(R.id.search_results_list_view);
        RecyclerViewFastScroller recyclerViewFastScroller = (RecyclerViewFastScroller) findViewById(R.id.fast_scroller);
        this.mFastScroller = recyclerViewFastScroller;
        recyclerViewFastScroller.setPopupView((TextView) findViewById(R.id.fast_scroller_popup));
        this.mSearchContainer = inflateSearchBar();
        if (!isSearchBarFloating()) {
            addView(this.mSearchContainer);
        }
        this.mSearchUiManager = (SearchUiManager) this.mSearchContainer;
        this.mSearchTransitionController = new SearchTransitionController(this);
    }

    public final void setSearchResults(ArrayList arrayList) {
        this.mMainAdapterProvider.clearHighlightedItem();
        if (getSearchResultList().setSearchResults(arrayList)) {
            this.mSearchRecyclerView.scrollToTop();
        }
        if (arrayList != null) {
            animateToSearchState(300L, true);
        }
    }
}
