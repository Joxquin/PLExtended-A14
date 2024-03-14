package com.android.launcher3.widget.picker;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.Button;
import android.widget.TextView;
import android.window.BackEvent;
import androidx.recyclerview.widget.C0283n;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.UserManagerState;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.views.AbstractSlideInView;
import com.android.launcher3.views.ArrowTipView;
import com.android.launcher3.views.RecyclerViewFastScroller;
import com.android.launcher3.views.SpringRelativeLayout;
import com.android.launcher3.views.StickyHeaderLayout;
import com.android.launcher3.views.WidgetsEduView;
import com.android.launcher3.widget.BaseWidgetSheet;
import com.android.launcher3.widget.LauncherWidgetHolder;
import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import com.android.launcher3.widget.picker.WidgetsRecyclerView;
import com.android.launcher3.widget.picker.search.SearchModeListener;
import com.android.launcher3.widget.picker.search.WidgetsSearchBar;
import com.android.launcher3.widget.util.WidgetsTableUtils;
import com.android.launcher3.workprofile.PersonalWorkPagedView;
import com.android.launcher3.workprofile.PersonalWorkSlidingTabStrip;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.IntFunction;
import java.util.function.IntSupplier;
import java.util.function.Predicate;
import java.util.stream.IntStream;
/* loaded from: classes.dex */
public class WidgetsFullSheet extends BaseWidgetSheet implements LauncherWidgetHolder.ProviderChangedListener, PersonalWorkSlidingTabStrip.OnActivePageChangedListener, WidgetsRecyclerView.HeaderViewDimensionsProvider, SearchModeListener {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f5382d = 0;
    protected final SparseArray mAdapters;
    private final View.OnAttachStateChangeListener mBindScrollbarInSearchMode;
    private WidgetsRecyclerView mCurrentTouchEventRecyclerView;
    private final UserHandle mCurrentUser;
    private WidgetsRecyclerView mCurrentWidgetsRecyclerView;
    private DeviceProfile mDeviceProfile;
    protected RecyclerViewFastScroller mFastScroller;
    protected boolean mHasRecommendedWidgets;
    protected final boolean mHasWorkProfile;
    protected TextView mHeaderTitle;
    private boolean mIsInSearchMode;
    private boolean mIsNoWidgetsViewNeeded;
    private ArrowTipView mLatestEducationalTip;
    private final View.OnLayoutChangeListener mLayoutChangeListenerToShowTips;
    private int mMaxSpanPerRow;
    protected TextView mNoWidgetsView;
    private int mOrientation;
    private final a mPrimaryWidgetsFilter;
    protected WidgetsRecommendationTableLayout mRecommendedWidgetsTable;
    protected WidgetsSearchBar mSearchBar;
    protected View mSearchBarContainer;
    protected StickyHeaderLayout mSearchScrollView;
    private final b mShowEducationTipTask;
    protected View mTabBar;
    private final int mTabsHeight;
    private final UserManagerState mUserManagerState;
    PersonalWorkPagedView mViewPager;
    private final a mWorkWidgetsFilter;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class AdapterHolder {
        private final int mAdapterType;
        final WidgetsListAdapter mWidgetsListAdapter;
        private final C0283n mWidgetsListItemAnimator;
        WidgetsRecyclerView mWidgetsRecyclerView;

        /* JADX WARN: Type inference failed for: r3v0, types: [com.android.launcher3.widget.picker.h] */
        public AdapterHolder(int i4) {
            this.mAdapterType = i4;
            Context context = WidgetsFullSheet.this.getContext();
            WidgetsListAdapter widgetsListAdapter = new WidgetsListAdapter(context, LayoutInflater.from(context), new IntSupplier() { // from class: com.android.launcher3.widget.picker.h
                @Override // java.util.function.IntSupplier
                public final int getAsInt() {
                    return WidgetsFullSheet.this.mSearchScrollView.getHeaderHeight();
                }
            }, WidgetsFullSheet.this, WidgetsFullSheet.this, WidgetsFullSheet.this instanceof WidgetsTwoPaneSheet);
            this.mWidgetsListAdapter = widgetsListAdapter;
            widgetsListAdapter.setHasStableIds(true);
            if (i4 == 0) {
                widgetsListAdapter.setFilter(WidgetsFullSheet.this.mPrimaryWidgetsFilter);
            } else if (i4 == 1) {
                widgetsListAdapter.setFilter(WidgetsFullSheet.this.mWorkWidgetsFilter);
            }
            C0283n c0283n = new C0283n();
            this.mWidgetsListItemAnimator = c0283n;
            c0283n.f3988g = false;
        }

        public final void setup(WidgetsRecyclerView widgetsRecyclerView) {
            this.mWidgetsRecyclerView = widgetsRecyclerView;
            WidgetsFullSheet widgetsFullSheet = WidgetsFullSheet.this;
            widgetsRecyclerView.setOutlineProvider(((AbstractSlideInView) widgetsFullSheet).mViewOutlineProvider);
            this.mWidgetsRecyclerView.setClipToOutline(true);
            this.mWidgetsRecyclerView.setClipChildren(false);
            WidgetsRecyclerView widgetsRecyclerView2 = this.mWidgetsRecyclerView;
            WidgetsListAdapter widgetsListAdapter = this.mWidgetsListAdapter;
            widgetsRecyclerView2.setAdapter(widgetsListAdapter);
            this.mWidgetsRecyclerView.bindFastScrollbar(widgetsFullSheet.mFastScroller);
            this.mWidgetsRecyclerView.setItemAnimator(this.mWidgetsListItemAnimator);
            this.mWidgetsRecyclerView.setHeaderViewDimensionsProvider(widgetsFullSheet);
            if (!(widgetsFullSheet instanceof WidgetsTwoPaneSheet)) {
                this.mWidgetsRecyclerView.setEdgeEffectFactory(((SpringRelativeLayout) ((AbstractSlideInView) widgetsFullSheet).mContent).createEdgeEffectFactory());
            }
            int i4 = this.mAdapterType;
            if (i4 == 0 || i4 == 1) {
                this.mWidgetsRecyclerView.addOnAttachStateChangeListener(widgetsFullSheet.mBindScrollbarInSearchMode);
            }
            widgetsListAdapter.setMaxHorizontalSpansPxPerRow(widgetsFullSheet.mMaxSpanPerRow);
        }
    }

    /* JADX WARN: Type inference failed for: r7v2, types: [com.android.launcher3.widget.picker.a] */
    /* JADX WARN: Type inference failed for: r7v3, types: [com.android.launcher3.widget.picker.a] */
    public WidgetsFullSheet(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        UserManagerState userManagerState = new UserManagerState();
        this.mUserManagerState = userManagerState;
        this.mCurrentUser = Process.myUserHandle();
        this.mPrimaryWidgetsFilter = new Predicate(this) { // from class: com.android.launcher3.widget.picker.a

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ WidgetsFullSheet f5384b;

            {
                this.f5384b = this;
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean equals;
                switch (r2) {
                    case 0:
                        equals = this.f5384b.mCurrentUser.equals(((WidgetsListBaseEntry) obj).mPkgItem.user);
                        return equals;
                    default:
                        return WidgetsFullSheet.d(this.f5384b, (WidgetsListBaseEntry) obj);
                }
            }
        };
        this.mWorkWidgetsFilter = new Predicate(this) { // from class: com.android.launcher3.widget.picker.a

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ WidgetsFullSheet f5384b;

            {
                this.f5384b = this;
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean equals;
                switch (r2) {
                    case 0:
                        equals = this.f5384b.mCurrentUser.equals(((WidgetsListBaseEntry) obj).mPkgItem.user);
                        return equals;
                    default:
                        return WidgetsFullSheet.d(this.f5384b, (WidgetsListBaseEntry) obj);
                }
            }
        };
        SparseArray sparseArray = new SparseArray();
        this.mAdapters = sparseArray;
        this.mLayoutChangeListenerToShowTips = new View.OnLayoutChangeListener() { // from class: com.android.launcher3.widget.picker.WidgetsFullSheet.1
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
                WidgetsFullSheet widgetsFullSheet = WidgetsFullSheet.this;
                int i13 = WidgetsFullSheet.f5382d;
                if (widgetsFullSheet.hasSeenEducationTip()) {
                    WidgetsFullSheet.this.removeOnLayoutChangeListener(this);
                    return;
                }
                WidgetsFullSheet widgetsFullSheet2 = WidgetsFullSheet.this;
                widgetsFullSheet2.removeCallbacks(widgetsFullSheet2.mShowEducationTipTask);
                WidgetsFullSheet widgetsFullSheet3 = WidgetsFullSheet.this;
                widgetsFullSheet3.postDelayed(widgetsFullSheet3.mShowEducationTipTask, 200L);
            }
        };
        this.mShowEducationTipTask = new b(this, 0);
        this.mBindScrollbarInSearchMode = new View.OnAttachStateChangeListener() { // from class: com.android.launcher3.widget.picker.WidgetsFullSheet.2
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view) {
                WidgetsRecyclerView widgetsRecyclerView = ((AdapterHolder) WidgetsFullSheet.this.mAdapters.get(2)).mWidgetsRecyclerView;
                if (!WidgetsFullSheet.this.mIsInSearchMode || widgetsRecyclerView == null) {
                    return;
                }
                widgetsRecyclerView.bindFastScrollbar(WidgetsFullSheet.this.mFastScroller);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view) {
            }
        };
        this.mDeviceProfile = Launcher.getLauncher(context).getDeviceProfile();
        boolean z4 = ((LauncherApps) context.getSystemService(LauncherApps.class)).getProfiles().size() > 1;
        this.mHasWorkProfile = z4;
        this.mOrientation = context.getResources().getConfiguration().orientation;
        sparseArray.put(0, new AdapterHolder(0));
        sparseArray.put(1, new AdapterHolder(1));
        sparseArray.put(2, new AdapterHolder(2));
        this.mTabsHeight = z4 ? getResources().getDimensionPixelSize(R.dimen.all_apps_header_pill_height) : 0;
        userManagerState.init((UserCache) UserCache.INSTANCE.get(context), (UserManager) context.getSystemService(UserManager.class));
    }

    public static /* synthetic */ void a(WidgetsFullSheet widgetsFullSheet) {
        if (widgetsFullSheet.hasSeenEducationTip()) {
            return;
        }
        widgetsFullSheet.addOnLayoutChangeListener(widgetsFullSheet.mLayoutChangeListenerToShowTips);
        widgetsFullSheet.requestLayout();
    }

    private void attachScrollbarToRecyclerView(WidgetsRecyclerView widgetsRecyclerView) {
        widgetsRecyclerView.bindFastScrollbar(this.mFastScroller);
        if (this.mCurrentWidgetsRecyclerView != widgetsRecyclerView) {
            reset();
            resetExpandedHeaders();
            this.mCurrentWidgetsRecyclerView = widgetsRecyclerView;
            this.mSearchScrollView.setCurrentRecyclerView(widgetsRecyclerView);
        }
    }

    public static void b(WidgetsFullSheet widgetsFullSheet) {
        int currentPage;
        View childAt;
        if (widgetsFullSheet.hasSeenEducationTip()) {
            widgetsFullSheet.removeOnLayoutChangeListener(widgetsFullSheet.mLayoutChangeListenerToShowTips);
            return;
        }
        if (widgetsFullSheet.mRecommendedWidgetsTable.getVisibility() != 0 || widgetsFullSheet.mRecommendedWidgetsTable.getChildCount() <= 0) {
            SparseArray sparseArray = widgetsFullSheet.mAdapters;
            if (widgetsFullSheet.mIsInSearchMode) {
                currentPage = 2;
            } else {
                PersonalWorkPagedView personalWorkPagedView = widgetsFullSheet.mViewPager;
                currentPage = personalWorkPagedView == null ? 0 : personalWorkPagedView.getCurrentPage();
            }
            AdapterHolder adapterHolder = (AdapterHolder) sparseArray.get(currentPage);
            IntStream range = IntStream.range(0, adapterHolder.mWidgetsListAdapter.getItemCount());
            final WidgetsRecyclerView widgetsRecyclerView = adapterHolder.mWidgetsRecyclerView;
            Objects.requireNonNull(widgetsRecyclerView);
            WidgetsRowViewHolder widgetsRowViewHolder = (WidgetsRowViewHolder) range.mapToObj(new IntFunction() { // from class: com.android.launcher3.widget.picker.f
                @Override // java.util.function.IntFunction
                public final Object apply(int i4) {
                    return WidgetsRecyclerView.this.findViewHolderForAdapterPosition(i4);
                }
            }).filter(new g()).findFirst().orElse(null);
            childAt = widgetsRowViewHolder != null ? ((ViewGroup) widgetsRowViewHolder.tableContainer.getChildAt(0)).getChildAt(0) : null;
        } else {
            childAt = ((ViewGroup) widgetsFullSheet.mRecommendedWidgetsTable.getChildAt(0)).getChildAt(0);
        }
        ArrowTipView showEducationTipOnViewIfPossible = widgetsFullSheet.showEducationTipOnViewIfPossible(childAt);
        widgetsFullSheet.mLatestEducationalTip = showEducationTipOnViewIfPossible;
        if (showEducationTipOnViewIfPossible != null) {
            widgetsFullSheet.removeOnLayoutChangeListener(widgetsFullSheet.mLayoutChangeListenerToShowTips);
        }
    }

    public static /* synthetic */ boolean d(WidgetsFullSheet widgetsFullSheet, WidgetsListBaseEntry widgetsListBaseEntry) {
        return (widgetsFullSheet.mCurrentUser.equals(widgetsListBaseEntry.mPkgItem.user) || widgetsFullSheet.mUserManagerState.isUserQuiet(widgetsListBaseEntry.mPkgItem.user)) ? false : true;
    }

    public static void e(final WidgetsFullSheet widgetsFullSheet) {
        ((Launcher) widgetsFullSheet.mActivityContext).getSharedPrefs().edit().putBoolean("launcher.widgets_education_dialog_seen", true).apply();
        WidgetsEduView.showEducationDialog((Launcher) widgetsFullSheet.mActivityContext).addOnCloseListener(new AbstractSlideInView.OnCloseListener() { // from class: com.android.launcher3.widget.picker.e
            @Override // com.android.launcher3.views.AbstractSlideInView.OnCloseListener
            public final void onSlideInViewClosed() {
                WidgetsFullSheet.a(WidgetsFullSheet.this);
            }
        });
    }

    public static /* synthetic */ void f(WidgetsFullSheet widgetsFullSheet, Animator animator) {
        animator.setDuration(((Launcher) widgetsFullSheet.mActivityContext).getDeviceProfile().bottomSheetOpenDuration).start();
        widgetsFullSheet.mContent.animate().alpha(1.0f).setDuration(150L);
    }

    public static WidgetsRecyclerView getWidgetsView(Launcher launcher) {
        return (WidgetsRecyclerView) launcher.findViewById(R.id.primary_widgets_list_view);
    }

    private boolean isTouchOnScrollbar(MotionEvent motionEvent) {
        float x4 = this.mContent.getX();
        float y4 = this.mContent.getY();
        WidgetsRecyclerView recyclerView = getRecyclerView();
        motionEvent.offsetLocation(-x4, -y4);
        boolean z4 = (recyclerView == null || recyclerView.getScrollbar() == null || !recyclerView.isHitOnScrollBar(motionEvent)) ? false : true;
        motionEvent.offsetLocation(x4, y4);
        return z4;
    }

    private void reset() {
        ((AdapterHolder) this.mAdapters.get(0)).mWidgetsRecyclerView.scrollToTop();
        if (this.mHasWorkProfile) {
            ((AdapterHolder) this.mAdapters.get(1)).mWidgetsRecyclerView.scrollToTop();
        }
        ((AdapterHolder) this.mAdapters.get(2)).mWidgetsRecyclerView.scrollToTop();
        this.mSearchScrollView.reset(true);
    }

    public static WidgetsFullSheet show(Launcher launcher, boolean z4) {
        final WidgetsFullSheet widgetsFullSheet = FeatureFlags.LARGE_SCREEN_WIDGET_PICKER.get() && launcher.getDeviceProfile().isTablet && launcher.getDeviceProfile().isLandscape && !launcher.getDeviceProfile().isTwoPanels ? (WidgetsTwoPaneSheet) launcher.getLayoutInflater().inflate(R.layout.widgets_two_pane_sheet, (ViewGroup) launcher.getDragLayer(), false) : (WidgetsFullSheet) launcher.getLayoutInflater().inflate(R.layout.widgets_full_sheet, (ViewGroup) launcher.getDragLayer(), false);
        widgetsFullSheet.attachToContainer();
        widgetsFullSheet.mIsOpen = true;
        if (z4) {
            if (widgetsFullSheet.getPopupContainer().getInsets().bottom > 0) {
                widgetsFullSheet.mContent.setAlpha(0.0f);
                widgetsFullSheet.setTranslationShift(0.3f);
            }
            widgetsFullSheet.setUpOpenAnimation(((Launcher) widgetsFullSheet.mActivityContext).getDeviceProfile().bottomSheetOpenDuration);
            final ValueAnimator animationPlayer = widgetsFullSheet.mOpenCloseAnimation.getAnimationPlayer();
            animationPlayer.setInterpolator(AnimationUtils.loadInterpolator(widgetsFullSheet.getContext(), 17563662));
            widgetsFullSheet.post(new Runnable() { // from class: com.android.launcher3.widget.picker.c
                @Override // java.lang.Runnable
                public final void run() {
                    WidgetsFullSheet.f(WidgetsFullSheet.this, animationPlayer);
                }
            });
        } else {
            widgetsFullSheet.setTranslationShift(0.0f);
            widgetsFullSheet.post(new b(widgetsFullSheet, 1));
        }
        return widgetsFullSheet;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void addHintCloseAnim(float f4, Interpolator interpolator, PendingAnimation pendingAnimation) {
        pendingAnimation.setFloat(getRecyclerView(), LauncherAnimUtils.VIEW_TRANSLATE_Y, -f4, interpolator);
        pendingAnimation.setViewAlpha(getRecyclerView(), 0.5f, interpolator);
    }

    public final void enterSearchMode() {
        if (this.mIsInSearchMode) {
            return;
        }
        setViewVisibilityBasedOnSearch(true);
        attachScrollbarToRecyclerView(((AdapterHolder) this.mAdapters.get(2)).mWidgetsRecyclerView);
        ((Launcher) this.mActivityContext).getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_WIDGETSTRAY_SEARCHED);
    }

    public final void exitSearchMode() {
        if (this.mIsInSearchMode) {
            onSearchResults(new ArrayList());
            setViewVisibilityBasedOnSearch(false);
            if (this.mHasWorkProfile) {
                this.mViewPager.snapToPage(0);
            }
            attachScrollbarToRecyclerView(((AdapterHolder) this.mAdapters.get(0)).mWidgetsRecyclerView);
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final View getAccessibilityInitialFocusView() {
        return this.mHeaderTitle;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final Pair getAccessibilityTarget() {
        return Pair.create(getRecyclerView(), getContext().getString(this.mIsOpen ? R.string.widgets_list : R.string.widgets_list_closed));
    }

    public View getContentView() {
        return this.mHasWorkProfile ? this.mViewPager : ((AdapterHolder) this.mAdapters.get(0)).mWidgetsRecyclerView;
    }

    public final int getHeaderViewHeight() {
        int measuredHeight;
        TextView textView = this.mHeaderTitle;
        int i4 = 0;
        if (textView.getVisibility() != 0) {
            measuredHeight = 0;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) textView.getLayoutParams();
            measuredHeight = textView.getMeasuredHeight() + marginLayoutParams.bottomMargin + marginLayoutParams.topMargin;
        }
        View view = this.mSearchBarContainer;
        if (view.getVisibility() == 0) {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            i4 = view.getMeasuredHeight() + marginLayoutParams2.bottomMargin + marginLayoutParams2.topMargin;
        }
        return measuredHeight + i4;
    }

    public float getMaxTableHeight(float f4) {
        return (((this.mContent.getMeasuredHeight() - this.mTabsHeight) - getHeaderViewHeight()) - f4) * 0.75f;
    }

    public WidgetsRecyclerView getRecyclerView() {
        return this.mIsInSearchMode ? ((AdapterHolder) this.mAdapters.get(2)).mWidgetsRecyclerView : (!this.mHasWorkProfile || this.mViewPager.getCurrentPage() == 0) ? ((AdapterHolder) this.mAdapters.get(0)).mWidgetsRecyclerView : ((AdapterHolder) this.mAdapters.get(1)).mWidgetsRecyclerView;
    }

    public View getSheet() {
        return this.mContent;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        handleClose(((Launcher) this.mActivityContext).getDeviceProfile().bottomSheetCloseDuration, z4);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 16) != 0;
    }

    @Override // com.android.launcher3.widget.LauncherWidgetHolder.ProviderChangedListener
    public final void notifyWidgetProvidersChanged() {
        ((Launcher) this.mActivityContext).refreshAndBindWidgetsForPackageUser(null);
    }

    @Override // com.android.launcher3.workprofile.PersonalWorkSlidingTabStrip.OnActivePageChangedListener
    public void onActivePageChanged(int i4) {
        WidgetsRecyclerView widgetsRecyclerView = ((AdapterHolder) this.mAdapters.get(i4)).mWidgetsRecyclerView;
        updateRecyclerViewVisibility((AdapterHolder) this.mAdapters.get(i4));
        attachScrollbarToRecyclerView(widgetsRecyclerView);
    }

    @Override // com.android.launcher3.widget.BaseWidgetSheet, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((Launcher) this.mActivityContext).getAppWidgetHolder().addProviderChangeListener(this);
        notifyWidgetProvidersChanged();
        onRecommendedWidgetsBound();
    }

    @Override // com.android.launcher3.views.AbstractSlideInView, com.android.launcher3.AbstractFloatingView
    public final void onBackInvoked() {
        if (!this.mIsInSearchMode) {
            super.onBackInvoked();
            return;
        }
        this.mSearchBar.reset();
        animateSlideInViewToNoScale();
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public final void onBackProgressed(BackEvent backEvent) {
        super.onBackProgressed(backEvent);
        this.mFastScroller.setVisibility(backEvent.getProgress() > 0.0f ? 4 : 0);
    }

    @Override // com.android.launcher3.widget.BaseWidgetSheet, com.android.launcher3.views.AbstractSlideInView
    public final void onCloseComplete() {
        super.onCloseComplete();
        removeCallbacks(this.mShowEducationTipTask);
        ArrowTipView arrowTipView = this.mLatestEducationalTip;
        if (arrowTipView != null) {
            arrowTipView.close(true);
        }
        AccessibilityManagerCompat.sendStateEventToTest(0, getContext());
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mIsInSearchMode) {
            this.mSearchBar.reset();
        }
        int i4 = this.mOrientation;
        int i5 = configuration.orientation;
        if (i4 != i5) {
            this.mOrientation = i5;
            if (FeatureFlags.LARGE_SCREEN_WIDGET_PICKER.get()) {
                DeviceProfile deviceProfile = this.mDeviceProfile;
                if (deviceProfile.isTablet && !deviceProfile.isTwoPanels) {
                    handleClose(false);
                    show(Launcher.getLauncher(getContext()), false);
                    return;
                }
            }
            reset();
        }
    }

    @Override // com.android.launcher3.widget.BaseWidgetSheet
    public final void onContentHorizontalMarginChanged(int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mSearchScrollView.getLayoutParams();
        marginLayoutParams.setMarginStart(i4);
        marginLayoutParams.setMarginEnd(i4);
        if (this.mViewPager == null) {
            WidgetsRecyclerView widgetsRecyclerView = ((AdapterHolder) this.mAdapters.get(0)).mWidgetsRecyclerView;
            widgetsRecyclerView.setPadding(i4, widgetsRecyclerView.getPaddingTop(), i4, widgetsRecyclerView.getPaddingBottom());
        } else {
            WidgetsRecyclerView widgetsRecyclerView2 = ((AdapterHolder) this.mAdapters.get(0)).mWidgetsRecyclerView;
            widgetsRecyclerView2.setPadding(i4, widgetsRecyclerView2.getPaddingTop(), i4, widgetsRecyclerView2.getPaddingBottom());
            WidgetsRecyclerView widgetsRecyclerView3 = ((AdapterHolder) this.mAdapters.get(1)).mWidgetsRecyclerView;
            widgetsRecyclerView3.setPadding(i4, widgetsRecyclerView3.getPaddingTop(), i4, widgetsRecyclerView3.getPaddingBottom());
        }
        WidgetsRecyclerView widgetsRecyclerView4 = ((AdapterHolder) this.mAdapters.get(2)).mWidgetsRecyclerView;
        widgetsRecyclerView4.setPadding(i4, widgetsRecyclerView4.getPaddingTop(), i4, widgetsRecyclerView4.getPaddingBottom());
    }

    @Override // com.android.launcher3.views.AbstractSlideInView, com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mNoIntercept = shouldScroll(motionEvent);
            if (this.mSearchBar.isSearchBarFocused() && !getPopupContainer().isEventOverView(this.mSearchBarContainer, motionEvent)) {
                this.mSearchBar.clearSearchBarFocus();
            }
        }
        return super.onControllerInterceptTouchEvent(motionEvent);
    }

    @Override // com.android.launcher3.widget.BaseWidgetSheet, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((Launcher) this.mActivityContext).getAppWidgetHolder().removeProviderChangeListener(this);
        ((AdapterHolder) this.mAdapters.get(0)).mWidgetsRecyclerView.removeOnAttachStateChangeListener(this.mBindScrollbarInSearchMode);
        if (this.mHasWorkProfile) {
            ((AdapterHolder) this.mAdapters.get(1)).mWidgetsRecyclerView.removeOnAttachStateChangeListener(this.mBindScrollbarInSearchMode);
        }
    }

    @Override // com.android.launcher3.views.AbstractSlideInView, com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public final void onDragStart(boolean z4, float f4) {
        super.onDragStart(z4, f4);
        getWindowInsetsController().hide(WindowInsets.Type.ime());
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mContent = (ViewGroup) findViewById(R.id.container);
        setContentBackgroundWithParent(this.mContent, getContext().getDrawable(R.drawable.bg_widgets_full_sheet));
        this.mContent.setOutlineProvider(this.mViewOutlineProvider);
        this.mContent.setClipToOutline(true);
        setupSheet();
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return isTouchOnScrollbar(motionEvent) || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        int i8 = i7 - i5;
        int measuredWidth = this.mContent.getMeasuredWidth();
        Rect rect = this.mInsets;
        int i9 = rect.left;
        int i10 = (((((i6 - i4) - measuredWidth) - i9) - rect.right) / 2) + i9;
        ViewGroup viewGroup = this.mContent;
        viewGroup.layout(i10, i8 - viewGroup.getMeasuredHeight(), measuredWidth + i10, i8);
        setTranslationShift(this.mTranslationShift);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        int measuredWidth;
        doMeasure(i4, i5);
        boolean z4 = false;
        if (getMeasuredWidth() != 0 && this.mMaxSpanPerRow != (measuredWidth = getContentView().getMeasuredWidth() - (this.mContentHorizontalMargin * 2))) {
            this.mMaxSpanPerRow = measuredWidth;
            ((AdapterHolder) this.mAdapters.get(0)).mWidgetsListAdapter.setMaxHorizontalSpansPxPerRow(measuredWidth);
            ((AdapterHolder) this.mAdapters.get(2)).mWidgetsListAdapter.setMaxHorizontalSpansPxPerRow(measuredWidth);
            if (this.mHasWorkProfile) {
                ((AdapterHolder) this.mAdapters.get(1)).mWidgetsListAdapter.setMaxHorizontalSpansPxPerRow(measuredWidth);
            }
            onRecommendedWidgetsBound();
            z4 = true;
        }
        if (z4) {
            doMeasure(i4, i5);
        }
    }

    @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
    public void onRecommendedWidgetsBound() {
        float f4;
        if (this.mIsInSearchMode) {
            return;
        }
        List recommendedWidgets = ((Launcher) this.mActivityContext).getPopupDataProvider().getRecommendedWidgets();
        boolean z4 = recommendedWidgets.size() > 0;
        this.mHasRecommendedWidgets = z4;
        if (!z4) {
            this.mRecommendedWidgetsTable.setVisibility(8);
            return;
        }
        if (this.mIsNoWidgetsViewNeeded) {
            Rect rect = new Rect();
            this.mNoWidgetsView.getPaint().getTextBounds(this.mNoWidgetsView.getText().toString(), 0, this.mNoWidgetsView.getText().length(), rect);
            f4 = rect.height();
        } else {
            f4 = 0.0f;
        }
        if (!(this instanceof WidgetsTwoPaneSheet)) {
            doMeasure(View.MeasureSpec.makeMeasureSpec(((Launcher) this.mActivityContext).getDeviceProfile().availableWidthPx, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(((Launcher) this.mActivityContext).getDeviceProfile().availableHeightPx, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        }
        float maxTableHeight = getMaxTableHeight(f4);
        Context context = this.mActivityContext;
        this.mRecommendedWidgetsTable.setRecommendedWidgets(maxTableHeight, WidgetsTableUtils.groupWidgetItemsUsingRowPxWithoutReordering(recommendedWidgets, context, ((Launcher) context).getDeviceProfile(), this.mMaxSpanPerRow, this.mWidgetCellHorizontalPadding));
    }

    @Override // com.android.launcher3.widget.picker.search.SearchModeListener
    public void onSearchResults(List list) {
        ((AdapterHolder) this.mAdapters.get(2)).mWidgetsListAdapter.setWidgetsOnSearch(list);
        updateRecyclerViewVisibility((AdapterHolder) this.mAdapters.get(2));
    }

    @Override // com.android.launcher3.AbstractFloatingView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z4;
        if (motionEvent.getAction() == 0) {
            this.mCurrentTouchEventRecyclerView = isTouchOnScrollbar(motionEvent) ? getRecyclerView() : null;
        }
        if (this.mCurrentTouchEventRecyclerView != null) {
            float x4 = this.mContent.getX();
            float y4 = this.mContent.getY();
            motionEvent.offsetLocation(-x4, -y4);
            z4 = this.mCurrentTouchEventRecyclerView.dispatchTouchEvent(motionEvent);
            motionEvent.offsetLocation(x4, y4);
        } else {
            z4 = false;
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.mCurrentTouchEventRecyclerView = null;
        }
        return z4 || super.onTouchEvent(motionEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0074, code lost:
        if ((((com.android.launcher3.widget.picker.WidgetsFullSheet.AdapterHolder) r4.mAdapters.get(1)).mWidgetsListAdapter.getItemCount() > 1) != false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onWidgetsBound() {
        /*
            r4 = this;
            boolean r0 = r4.mIsInSearchMode
            if (r0 == 0) goto L5
            return
        L5:
            android.content.Context r0 = r4.mActivityContext
            com.android.launcher3.Launcher r0 = (com.android.launcher3.Launcher) r0
            com.android.launcher3.popup.PopupDataProvider r0 = r0.getPopupDataProvider()
            java.util.List r0 = r0.getAllWidgets()
            android.util.SparseArray r1 = r4.mAdapters
            r2 = 0
            java.lang.Object r1 = r1.get(r2)
            com.android.launcher3.widget.picker.WidgetsFullSheet$AdapterHolder r1 = (com.android.launcher3.widget.picker.WidgetsFullSheet.AdapterHolder) r1
            com.android.launcher3.widget.picker.WidgetsListAdapter r1 = r1.mWidgetsListAdapter
            r1.setWidgets(r0)
            boolean r1 = r4.mHasWorkProfile
            r3 = 1
            if (r1 == 0) goto L45
            com.android.launcher3.workprofile.PersonalWorkPagedView r1 = r4.mViewPager
            r1.setVisibility(r2)
            android.view.View r1 = r4.mTabBar
            r1.setVisibility(r2)
            android.util.SparseArray r1 = r4.mAdapters
            java.lang.Object r1 = r1.get(r3)
            com.android.launcher3.widget.picker.WidgetsFullSheet$AdapterHolder r1 = (com.android.launcher3.widget.picker.WidgetsFullSheet.AdapterHolder) r1
            com.android.launcher3.widget.picker.WidgetsListAdapter r1 = r1.mWidgetsListAdapter
            r1.setWidgets(r0)
            com.android.launcher3.workprofile.PersonalWorkPagedView r0 = r4.mViewPager
            int r0 = r0.getCurrentPage()
            r4.onActivePageChanged(r0)
            goto L48
        L45:
            r4.onActivePageChanged(r2)
        L48:
            android.util.SparseArray r0 = r4.mAdapters
            java.lang.Object r0 = r0.get(r2)
            com.android.launcher3.widget.picker.WidgetsFullSheet$AdapterHolder r0 = (com.android.launcher3.widget.picker.WidgetsFullSheet.AdapterHolder) r0
            com.android.launcher3.widget.picker.WidgetsListAdapter r0 = r0.mWidgetsListAdapter
            int r0 = r0.getItemCount()
            if (r0 <= r3) goto L5a
            r0 = r3
            goto L5b
        L5a:
            r0 = r2
        L5b:
            if (r0 == 0) goto L76
            boolean r0 = r4.mHasWorkProfile
            if (r0 == 0) goto L77
            android.util.SparseArray r0 = r4.mAdapters
            java.lang.Object r0 = r0.get(r3)
            com.android.launcher3.widget.picker.WidgetsFullSheet$AdapterHolder r0 = (com.android.launcher3.widget.picker.WidgetsFullSheet.AdapterHolder) r0
            com.android.launcher3.widget.picker.WidgetsListAdapter r0 = r0.mWidgetsListAdapter
            int r0 = r0.getItemCount()
            if (r0 <= r3) goto L73
            r0 = r3
            goto L74
        L73:
            r0 = r2
        L74:
            if (r0 == 0) goto L77
        L76:
            r2 = r3
        L77:
            boolean r0 = r4.mIsNoWidgetsViewNeeded
            if (r0 == r2) goto L80
            r4.mIsNoWidgetsViewNeeded = r2
            r4.onRecommendedWidgetsBound()
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.widget.picker.WidgetsFullSheet.onWidgetsBound():void");
    }

    public void openFirstHeader() {
        ((AdapterHolder) this.mAdapters.get(0)).mWidgetsListAdapter.selectFirstHeaderEntry();
        ((AdapterHolder) this.mAdapters.get(0)).mWidgetsRecyclerView.scrollToTop();
    }

    public final void resetExpandedHeaders() {
        ((AdapterHolder) this.mAdapters.get(0)).mWidgetsListAdapter.resetExpandedHeader();
        ((AdapterHolder) this.mAdapters.get(1)).mWidgetsListAdapter.resetExpandedHeader();
    }

    @Override // com.android.launcher3.widget.BaseWidgetSheet, com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        super.setInsets(rect);
        int max = Math.max(rect.bottom, this.mNavBarScrimHeight);
        WidgetsRecyclerView widgetsRecyclerView = ((AdapterHolder) this.mAdapters.get(0)).mWidgetsRecyclerView;
        widgetsRecyclerView.setPadding(widgetsRecyclerView.getPaddingLeft(), widgetsRecyclerView.getPaddingTop(), widgetsRecyclerView.getPaddingRight(), max);
        WidgetsRecyclerView widgetsRecyclerView2 = ((AdapterHolder) this.mAdapters.get(2)).mWidgetsRecyclerView;
        widgetsRecyclerView2.setPadding(widgetsRecyclerView2.getPaddingLeft(), widgetsRecyclerView2.getPaddingTop(), widgetsRecyclerView2.getPaddingRight(), max);
        if (this.mHasWorkProfile) {
            WidgetsRecyclerView widgetsRecyclerView3 = ((AdapterHolder) this.mAdapters.get(1)).mWidgetsRecyclerView;
            widgetsRecyclerView3.setPadding(widgetsRecyclerView3.getPaddingLeft(), widgetsRecyclerView3.getPaddingTop(), widgetsRecyclerView3.getPaddingRight(), max);
        }
        ((ViewGroup.MarginLayoutParams) this.mNoWidgetsView.getLayoutParams()).bottomMargin = max;
        if (max > 0) {
            setupNavBarColor();
        } else {
            ((Launcher) this.mActivityContext).getSystemUiController().updateUiState(2, 0);
        }
        requestLayout();
    }

    public final void setUpEducationViewsIfNeeded() {
        boolean z4 = false;
        if (!((((Launcher) this.mActivityContext).getSharedPrefs().getBoolean("launcher.widgets_education_dialog_seen", false) || Utilities.isRunningInTestHarness()) ? true : true)) {
            postDelayed(new b(this, 2), 500L);
        } else if (hasSeenEducationTip()) {
        } else {
            addOnLayoutChangeListener(this.mLayoutChangeListenerToShowTips);
        }
    }

    public void setViewVisibilityBasedOnSearch(boolean z4) {
        this.mIsInSearchMode = z4;
        if (!z4) {
            ((AdapterHolder) this.mAdapters.get(2)).mWidgetsRecyclerView.setVisibility(8);
            onRecommendedWidgetsBound();
            onWidgetsBound();
            return;
        }
        this.mRecommendedWidgetsTable.setVisibility(8);
        if (this.mHasWorkProfile) {
            this.mViewPager.setVisibility(8);
            this.mTabBar.setVisibility(8);
        } else {
            ((AdapterHolder) this.mAdapters.get(0)).mWidgetsRecyclerView.setVisibility(8);
        }
        updateRecyclerViewVisibility((AdapterHolder) this.mAdapters.get(2));
        this.mNoWidgetsView.setVisibility(8);
    }

    public void setupSheet() {
        LayoutInflater.from(getContext()).inflate(this.mHasWorkProfile ? R.layout.widgets_full_sheet_paged_view : R.layout.widgets_full_sheet_recyclerview, this.mContent, true);
        setupViews();
        WidgetsRecommendationTableLayout widgetsRecommendationTableLayout = (WidgetsRecommendationTableLayout) this.mSearchScrollView.findViewById(R.id.recommended_widget_table);
        this.mRecommendedWidgetsTable = widgetsRecommendationTableLayout;
        widgetsRecommendationTableLayout.setWidgetCellLongClickListener(this);
        this.mRecommendedWidgetsTable.setWidgetCellOnClickListener(this);
        this.mHeaderTitle = (TextView) this.mSearchScrollView.findViewById(R.id.title);
        onRecommendedWidgetsBound();
        onWidgetsBound();
        setUpEducationViewsIfNeeded();
    }

    public final void setupViews() {
        StickyHeaderLayout stickyHeaderLayout = (StickyHeaderLayout) findViewById(R.id.search_and_recommendations_container);
        this.mSearchScrollView = stickyHeaderLayout;
        stickyHeaderLayout.setCurrentRecyclerView((RecyclerView) findViewById(R.id.primary_widgets_list_view));
        this.mNoWidgetsView = (TextView) findViewById(R.id.no_widgets_text);
        RecyclerViewFastScroller recyclerViewFastScroller = (RecyclerViewFastScroller) findViewById(R.id.fast_scroller);
        this.mFastScroller = recyclerViewFastScroller;
        recyclerViewFastScroller.setPopupView((TextView) findViewById(R.id.fast_scroller_popup));
        ((AdapterHolder) this.mAdapters.get(0)).setup((WidgetsRecyclerView) findViewById(R.id.primary_widgets_list_view));
        ((AdapterHolder) this.mAdapters.get(2)).setup((WidgetsRecyclerView) findViewById(R.id.search_widgets_list_view));
        if (this.mHasWorkProfile) {
            PersonalWorkPagedView personalWorkPagedView = (PersonalWorkPagedView) findViewById(R.id.widgets_view_pager);
            this.mViewPager = personalWorkPagedView;
            personalWorkPagedView.setOutlineProvider(this.mViewOutlineProvider);
            this.mViewPager.setClipToOutline(true);
            this.mViewPager.setClipChildren(false);
            this.mViewPager.initParentViews(this);
            ((PersonalWorkSlidingTabStrip) this.mViewPager.getPageIndicator()).setOnActivePageChangedListener(this);
            ((PersonalWorkSlidingTabStrip) this.mViewPager.getPageIndicator()).setActiveMarker(0);
            findViewById(R.id.tab_personal).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.launcher3.widget.picker.d

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ WidgetsFullSheet f5390e;

                {
                    this.f5390e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (r2) {
                        case 0:
                            this.f5390e.mViewPager.snapToPage(0);
                            return;
                        default:
                            this.f5390e.mViewPager.snapToPage(1);
                            return;
                    }
                }
            });
            findViewById(R.id.tab_work).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.launcher3.widget.picker.d

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ WidgetsFullSheet f5390e;

                {
                    this.f5390e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (r2) {
                        case 0:
                            this.f5390e.mViewPager.snapToPage(0);
                            return;
                        default:
                            this.f5390e.mViewPager.snapToPage(1);
                            return;
                    }
                }
            });
            ((AdapterHolder) this.mAdapters.get(1)).setup((WidgetsRecyclerView) findViewById(R.id.work_widgets_list_view));
            if (((Launcher) this.mActivityContext).getStringCache() != null) {
                ((Button) findViewById(R.id.tab_personal)).setText(((Launcher) this.mActivityContext).getStringCache().widgetsPersonalTab);
                ((Button) findViewById(R.id.tab_work)).setText(((Launcher) this.mActivityContext).getStringCache().widgetsWorkTab);
            }
        } else {
            this.mViewPager = null;
        }
        this.mTabBar = this.mSearchScrollView.findViewById(R.id.tabs);
        this.mSearchBarContainer = this.mSearchScrollView.findViewById(R.id.search_bar_container);
        WidgetsSearchBar widgetsSearchBar = (WidgetsSearchBar) this.mSearchScrollView.findViewById(R.id.widgets_search_bar);
        this.mSearchBar = widgetsSearchBar;
        widgetsSearchBar.initialize(((Launcher) this.mActivityContext).getPopupDataProvider(), this);
    }

    public boolean shouldScroll(MotionEvent motionEvent) {
        WidgetsRecyclerView recyclerView = getRecyclerView();
        RecyclerViewFastScroller scrollbar = recyclerView.getScrollbar();
        if (scrollbar.getThumbOffsetY() < 0 || !getPopupContainer().isEventOverView(scrollbar, motionEvent)) {
            if (getPopupContainer().isEventOverView(recyclerView, motionEvent)) {
                return true ^ recyclerView.shouldContainerScroll(getPopupContainer(), motionEvent);
            }
            return false;
        }
        return true;
    }

    public void updateRecyclerViewVisibility(AdapterHolder adapterHolder) {
        boolean z4 = adapterHolder.mWidgetsListAdapter.getItemCount() > 1;
        adapterHolder.mWidgetsRecyclerView.setVisibility(z4 ? 0 : 8);
        if (adapterHolder.mAdapterType == 2) {
            this.mNoWidgetsView.setText(R.string.no_search_results);
        } else if (adapterHolder.mAdapterType == 1 && this.mUserManagerState.isAnyProfileQuietModeEnabled() && ((Launcher) this.mActivityContext).getStringCache() != null) {
            this.mNoWidgetsView.setText(((Launcher) this.mActivityContext).getStringCache().workProfilePausedTitle);
        } else {
            this.mNoWidgetsView.setText(R.string.no_widgets_available);
        }
        this.mNoWidgetsView.setVisibility(z4 ? 8 : 0);
    }

    public WidgetsFullSheet(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
