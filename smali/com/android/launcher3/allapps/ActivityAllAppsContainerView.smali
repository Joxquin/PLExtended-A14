.class public Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
.super Lcom/android/launcher3/views/SpringRelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;
.implements Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;


# static fields
.field public static final BOTTOM_SHEET_ALPHA:Landroid/util/FloatProperty;


# instance fields
.field protected final mAH:Ljava/util/List;

.field protected final mActivityContext:Landroid/content/Context;

.field private final mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

.field private mAllAppsTransitionController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field private mBottomSheetAlpha:F

.field protected mBottomSheetBackground:Landroid/view/View;

.field private mBottomSheetBackgroundColor:I

.field private mBottomSheetCornerRadii:[F

.field private mBottomSheetHandleArea:Landroid/view/View;

.field protected mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

.field protected final mFastScrollerOffset:Landroid/graphics/Point;

.field private mForceBottomSheetVisible:Z

.field private mHasWorkApps:Z

.field protected mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

.field private mHeaderColor:I

.field private final mHeaderPaint:Landroid/graphics/Paint;

.field private final mHeaderProtectionColor:I

.field protected final mHeaderThreshold:F

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsSearching:Z

.field protected mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

.field private mNavBarScrimHeight:I

.field private final mNavBarScrimPaint:Landroid/graphics/Paint;

.field protected final mPersonalMatcher:Lcom/android/launcher3/util/n;

.field private mRebindAdaptersAfterSearchAnimation:Z

.field protected final mScrimColor:I

.field private mScrimView:Lcom/android/launcher3/views/ScrimView;

.field private final mScrollListener:Landroidx/recyclerview/widget/q0;

.field protected mSearchContainer:Landroid/view/View;

.field private mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

.field private final mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

.field protected final mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

.field protected mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

.field private mTabsProtectionAlpha:I

.field private final mTmpPath:Landroid/graphics/Path;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field protected mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

.field protected mUsingTabs:Z

.field protected mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

.field protected final mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$1;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->BOTTOM_SHEET_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 5
    sget p3, Lcom/android/launcher3/util/ItemInfoMatcher;->a:I

    .line 6
    new-instance p3, Lcom/android/launcher3/util/n;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p2}, Lcom/android/launcher3/util/n;-><init>(ILjava/lang/Object;)V

    .line 7
    iput-object p3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPersonalMatcher:Lcom/android/launcher3/util/n;

    .line 8
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    .line 9
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    .line 10
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    .line 11
    new-instance p2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;

    invoke-direct {p2, p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrollListener:Landroidx/recyclerview/widget/q0;

    .line 12
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    .line 13
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpRectF:Landroid/graphics/RectF;

    .line 14
    iput v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 15
    iput p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetAlpha:F

    .line 16
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    .line 17
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-direct {v1, p2}, Lcom/android/launcher3/allapps/AllAppsStore;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    const v2, 0x7f04004b

    .line 18
    invoke-static {v2, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v2

    .line 19
    iput v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimColor:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07014e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    const v2, 0x7f040050

    .line 21
    invoke-static {v2, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p1

    .line 22
    iput p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderProtectionColor:I

    .line 23
    new-instance p1, Lcom/android/launcher3/allapps/WorkProfileManager;

    const-class v2, Landroid/os/UserManager;

    .line 24
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    .line 25
    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v3

    invoke-direct {p1, v2, p0, v3}, Lcom/android/launcher3/allapps/WorkProfileManager;-><init>(Landroid/os/UserManager;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/android/launcher3/logging/StatsLogManager;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    const/4 v2, 0x0

    .line 26
    filled-new-array {v2, v2, v2}, [Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    .line 27
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    .line 28
    invoke-static {p2}, Lcom/android/launcher3/util/Themes;->getNavBarScrimColor(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    new-instance v4, LD0/c;

    invoke-direct {v4, p0}, LD0/c;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    .line 30
    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 31
    new-instance v4, LD0/d;

    invoke-direct {v4, p0}, LD0/d;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->createSearchUiDelegate()Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    .line 33
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->createMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    .line 34
    new-instance v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    new-instance v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-direct {v5, p2, v1, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkProfileManager;)V

    invoke-direct {v4, p0, v0, v5}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;ILcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    new-instance v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-direct {v4, p2, v1, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkProfileManager;)V

    invoke-direct {v0, p0, p3, v4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;ILcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    invoke-interface {v3, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    new-instance p3, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-direct {p3, p2, v2, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkProfileManager;)V

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2, p3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;ILcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    invoke-interface {v3, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0033

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0078

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/FloatingHeaderView;

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    const p1, 0x7f0a00b2

    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    const p1, 0x7f0a00b4

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetHandleArea:Landroid/view/View;

    const p1, 0x7f0a02db

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/SearchRecyclerView;

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    const p1, 0x7f0a0162

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const p2, 0x7f0a0163

    .line 43
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setPopupView(Landroid/widget/TextView;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->inflateSearchBar()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result p1

    if-nez p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/allapps/SearchUiManager;

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    .line 48
    new-instance p1, Lcom/android/launcher3/allapps/SearchTransitionController;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/SearchTransitionController;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    return-void
.end method

.method private alignParentTop(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f07007f

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private animateToSearchState(JZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/SearchTransitionController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz p3, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->onActivePageChanged(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsTransitionController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->animateAllAppsToNoScale()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    new-instance v1, LD0/a;

    invoke-direct {v1, p0, p3}, LD0/a;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Z)V

    invoke-virtual {v0, p3, p1, p2, v1}, Lcom/android/launcher3/allapps/SearchTransitionController;->animateToSearchState(ZJLD0/a;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateSearchResultsVisibility()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mRebindAdaptersAfterSearchAnimation:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters(Z)V

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mRebindAdaptersAfterSearchAnimation:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->onAnimateToSearchStateCompleted()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onActivePageChanged(I)V

    :goto_0
    return-void
.end method

.method public static c(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->getMatcher()Ljava/util/function/Predicate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHasWorkApps:Z

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters(Z)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHasWorkApps:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p0

    array-length p0, p0

    invoke-interface {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withCardinality(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_COUNT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetAlpha:F

    return p0
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static f(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    iput p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetAlpha:F

    return-void
.end method

.method private layoutBelowSearchContainer(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x6

    const v1, 0x7f0a02d0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f07007f

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private layoutWithoutSearchContainer(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p2, :cond_1

    const p2, 0x7f07007f

    goto :goto_0

    :cond_1
    const p2, 0x7f070082

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private static removeCustomRules(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    return-void
.end method

.method private setDeviceManagementResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0349

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a034a

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addSpringFromFlingUpdateListener(FFLandroid/animation/ValueAnimator;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;FF)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public computeNavBarScrimHeight(Landroid/view/WindowInsets;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public createSearchUiDelegate()Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;
    .locals 1

    new-instance v0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    return-object v0
.end method

.method public final dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->computeNavBarScrimHeight(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance v3, Lcom/android/launcher3/allapps/a;

    invoke-direct {v3, v1, v0}, Lcom/android/launcher3/allapps/a;-><init>(ILcom/android/launcher3/DeviceProfile;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/SearchUiManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AllAppsContainerView"

    const-string v2, "restoreInstanceState viewId = 0"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const v0, 0x7f0a03ff

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string v0, "launcher.allapps.current_page"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(ZZ)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "launcher.allapps.current_page"

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const p0, 0x7f0a03ff

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final drawOnScrimWithScale(FLandroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v8, p2

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v9, v3

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float v10, v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v3

    add-float/2addr v5, v7

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v10

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v10

    if-eqz v9, :cond_1

    iget-object v12, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    iget v13, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackgroundColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v12, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x437f0000    # 255.0f

    iget v14, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetAlpha:F

    mul-float/2addr v14, v13

    float-to-int v13, v14

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v12, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v12, v3, v5, v11, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    iget-object v12, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v13, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetCornerRadii:[F

    sget-object v14, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v12, v13, v14}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    iget-object v12, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    iget v12, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderColor:I

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v12

    iget v13, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderColor:I

    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget v12, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimColor:I

    if-eq v2, v12, :cond_8

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getHeaderBottom()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getVisibleContainerView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    add-int/2addr v12, v2

    int-to-float v2, v12

    invoke-static {v2, v7, v1, v5}, Lw/f;->a(FFFF)F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getVisibleContainerView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v6

    mul-float/2addr v2, v1

    add-float v13, v2, v7

    iget-object v14, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    if-eqz v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v5, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetCornerRadii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v5, v2

    iget-object v7, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    move v6, v13

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_1
    invoke-virtual {v14}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPeripheralProtectionHeight()I

    move-result v2

    iget v3, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTabsProtectionAlpha:I

    if-lez v3, :cond_8

    if-eqz v2, :cond_8

    iget-object v3, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v4

    iget v5, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTabsProtectionAlpha:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    if-eqz v9, :cond_6

    iget-object v3, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v10

    iget-object v4, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v10

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    move v15, v4

    move v4, v3

    move v3, v15

    :goto_2
    if-eqz v9, :cond_7

    move v13, v12

    :cond_7
    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float v5, v2, v13

    iget-object v6, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move v1, v3

    move v2, v13

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final forceBottomSheetVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mForceBottomSheetVisible:Z

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateBackgroundVisibility(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method public final getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    :goto_3
    return-object p0
.end method

.method public final getAppsRecyclerViewContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    return-object v0
.end method

.method public final getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    return-object p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getCurrentPage()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f130053

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, v0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p0, v0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f13004b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f13004c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f13004a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDrawingRect(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result p0

    float-to-int p0, p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    return-object p0
.end method

.method public getFloatingSearchBarRestingMarginBottom()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFloatingSearchBarRestingMarginEnd()I
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getAllAppsIconStartMargin()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public getFloatingSearchBarRestingMarginStart()I
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getAllAppsIconStartMargin()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final getHeaderBottom()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getClipTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    :goto_0
    add-int/2addr p0, v1

    return p0

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result p0

    goto :goto_0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public final getMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    return-object p0
.end method

.method public final getNavBarScrimHeight()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    return p0
.end method

.method public final getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    return-object p0
.end method

.method public final getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    return-object p0
.end method

.method public final getSearchTransitionController()Lcom/android/launcher3/allapps/SearchTransitionController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    return-object p0
.end method

.method public final getSearchUiDelegate()Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    return-object p0
.end method

.method public final getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    return-object p0
.end method

.method public final getSearchView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    return-object p0
.end method

.method public final getVisibleContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    :cond_0
    return-object p0
.end method

.method public inflateSearchBar()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->inflateSearchBar()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public invalidateHeader()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isInAllApps()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPersonalTabVisible()Z
    .locals 2

    const v0, 0x7f0a0349

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final isSearchBarFloating()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->isSearchBarFloating()Z

    move-result p0

    return p0
.end method

.method public isSearchSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isSearching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    return p0
.end method

.method public isWorkTabVisible()Z
    .locals 2

    const v0, 0x7f0a034a

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final onActivePageChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/SearchTransitionController;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->hideKeyboard()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastScrollRecyclerView;->bindFastScrollbar(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setActiveRV(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(ZZ)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/WorkProfileManager;->onActivePageChanged(I)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->onInitializeSearchBar()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public final onClearSearchResult()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->clearHighlightedItem()V

    const-wide/16 v0, 0x12c

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->animateToSearchState(JZ)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters(Z)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setAppsPerRow(I)V

    iget-object v2, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setNumAppsPerRowAllApps(I)V

    iget-object v2, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/Z;Z)V

    iget-object v1, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/s0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/s0;->clear()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateBackgroundVisibility(Lcom/android/launcher3/DeviceProfile;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getNavBarScrimColor(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public final onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    return-void
.end method

.method public final onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    new-instance v3, LD0/b;

    invoke-direct {v3}, LD0/b;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->setup(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Ljava/util/function/Predicate;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters(Z)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result v2

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v2, v3, v0

    aput v2, v3, v1

    const/4 v0, 0x3

    aput v2, v3, v0

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x5

    aput v1, v3, v0

    const/4 v0, 0x6

    aput v1, v3, v0

    const/4 v0, 0x7

    aput v1, v3, v0

    iput-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetCornerRadii:[F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0403be

    invoke-static {v1, v0}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackgroundColor:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateBackgroundVisibility(Lcom/android/launcher3/DeviceProfile;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0, p0}, Lcom/android/launcher3/allapps/SearchUiManager;->initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    return-void
.end method

.method public final onInitializeRecyclerView(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrollListener:Landroidx/recyclerview/widget/q0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/q0;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->onInitializeRecyclerView(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInAllApps()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInAllApps()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getVisibleContainerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public final rebindAdapters(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/SearchTransitionController;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mRebindAdaptersAfterSearchAnimation:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateSearchResultsVisibility()V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHasWorkApps:Z

    iget-boolean v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->getDecorator()Landroidx/recyclerview/widget/i0;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/i0;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/i0;)V

    :cond_2
    const/4 p1, 0x0

    move v2, p1

    :goto_0
    const/4 v3, 0x0

    if-gt v2, v1, :cond_4

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v5, v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/l0;)V

    iget-object v4, v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/Z;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    if-eqz v0, :cond_5

    const v2, 0x7f0d003d

    goto :goto_1

    :cond_5
    const v2, 0x7f0d003c

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v2, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    if-eqz v0, :cond_6

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/allapps/AllAppsPagedView;

    iput-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v4, p0}, Lcom/android/launcher3/PagedView;->initParentViews(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v4, p0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setOnActivePageChangedListener(Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    new-instance v5, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$3;

    invoke-direct {v5, p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$3;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/WorkProfileManager;->reset()V

    new-instance v4, Lcom/android/launcher3/allapps/d;

    invoke-direct {v4, v1, p0}, Lcom/android/launcher3/allapps/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/WorkProfileManager;->detachWorkModeSwitch()V

    iput-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    :goto_2
    invoke-static {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->removeCustomRules(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    invoke-static {v4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->removeCustomRules(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchSupported()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutWithoutSearchContainer(Landroid/view/View;Z)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->alignParentTop(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->alignParentTop(Landroid/view/View;Z)V

    goto :goto_3

    :cond_8
    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutBelowSearchContainer(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutBelowSearchContainer(Landroid/view/View;Z)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateSearchResultsVisibility()V

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPersonalMatcher:Lcom/android/launcher3/util/n;

    invoke-virtual {v2, v0, v5}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->setup(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Ljava/util/function/Predicate;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/WorkProfileManager;->getMatcher()Ljava/util/function/Predicate;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->setup(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Ljava/util/function/Predicate;)V

    const v2, 0x7f0a0095

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setId(I)V

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_EXPANDING_PAUSE_WORK_BUTTON:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/launcher3/allapps/WorkProfileManager$1;

    invoke-direct {v6, v5}, Lcom/android/launcher3/allapps/WorkProfileManager$1;-><init>(Lcom/android/launcher3/allapps/WorkProfileManager;)V

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/q0;)V

    :cond_9
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setActiveMarker(I)V

    const v2, 0x7f0a0349

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/android/launcher3/allapps/b;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher3/allapps/b;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a034a

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/android/launcher3/allapps/b;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher3/allapps/b;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setDeviceManagementResources()V

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->isSetUp()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onActivePageChanged(I)V

    goto :goto_4

    :cond_a
    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->setup(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Ljava/util/function/Predicate;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iput-object v3, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsStore;->getRecyclerViewPool()Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;

    move-result-object v2

    sget-object v5, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_RV_PREINFLATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/s0;)V

    if-eqz v3, :cond_d

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/s0;)V

    :cond_d
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ALL_APPS_GONE_VISIBILITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updatePoolSize()V

    :cond_e
    :goto_5
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setupHeader()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070173

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object p1, p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final reset(ZZ)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/FastScrollRecyclerView;->scrollToTop()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->endFastScrolling()V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->reset(Z)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->forceBottomSheetVisible(Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateHeaderScroll(I)V

    if-eqz p2, :cond_4

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/allapps/d;

    invoke-direct {v1, v0, p2}, Lcom/android/launcher3/allapps/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->animateToSearchState(JZ)V

    :cond_4
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->reset()V

    :cond_5
    return-void
.end method

.method public final setAllAppsTransitionController(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsTransitionController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance v3, Lcom/android/launcher3/allapps/a;

    invoke-direct {v3, v1, v0}, Lcom/android/launcher3/allapps/a;-><init>(ILcom/android/launcher3/DeviceProfile;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1, v2, v0, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->allAppsTopPadding:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    :cond_1
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :goto_0
    invoke-static {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final setScrimView(Lcom/android/launcher3/views/ScrimView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    return-void
.end method

.method public final setSearchResults(ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;)V

    .line 2
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->onSearchResultsChanged(I)V

    return-void
.end method

.method public final setSearchResults(Ljava/util/ArrayList;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    .line 4
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->clearHighlightedItem()V

    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setSearchResults(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    .line 7
    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->scrollToTop()V

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v0, 0x12c

    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, v0, v1, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->animateToSearchState(JZ)V

    :cond_1
    return-void
.end method

.method public final setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->invalidateHeader()V

    return-void
.end method

.method public final setupHeader()V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    const/4 v2, 0x1

    xor-int/lit8 v8, v0, 0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v4, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v5, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/allapps/SearchRecyclerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result v7

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setup(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/SearchRecyclerView;IZ)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getMaxTranslation()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance v3, Lcom/android/launcher3/allapps/c;

    invoke-direct {v3, v0}, Lcom/android/launcher3/allapps/c;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->removeCustomRules(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutWithoutSearchContainer(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->alignParentTop(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutBelowSearchContainer(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method public final shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetHandleArea:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getVisibleContainerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/FastScrollRecyclerView;->shouldContainerScroll(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v2
.end method

.method public shouldFloatingSearchBarBePillWhenUnfocused()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final shouldShowTabs()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHasWorkApps:Z

    return p0
.end method

.method public final switchToTab()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :cond_0
    return-void
.end method

.method public updateBackgroundVisibility(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mForceBottomSheetVisible:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateHeaderScroll(I)V
    .locals 8

    int-to-float v0, p1

    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    div-float v1, v0, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    iget v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimColor:I

    iget v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderProtectionColor:I

    invoke-static {v4, v5, v1}, LE/a;->d(IIF)I

    move-result v1

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v1, v4}, LE/a;->k(II)I

    move-result v1

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPeripheralProtectionHeight()I

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    iget v4, v4, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    add-int/2addr v4, p1

    int-to-float v4, v4

    iget v7, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    div-float/2addr v4, v7

    invoke-static {v4, v2, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    :goto_0
    iget v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderColor:I

    if-ne v1, v5, :cond_1

    iget v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTabsProtectionAlpha:I

    if-eq v5, v4, :cond_2

    :cond_1
    iput v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderColor:I

    iput v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTabsProtectionAlpha:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->invalidateHeader()V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    div-float v1, v0, v1

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v2}, Lcom/android/launcher3/allapps/SearchUiManager;->getBackgroundVisibility()Z

    move-result v2

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    if-nez p1, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    move v6, v2

    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    sub-float/2addr v3, v1

    invoke-interface {p0, v3, v6}, Lcom/android/launcher3/allapps/SearchUiManager;->setBackgroundVisibility(FZ)V

    return-void
.end method

.method public final updateSearchResultsVisibility()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->isSetUp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setActiveRV(I)V

    :cond_1
    return-void
.end method

.method public final updateWorkUI()V
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setDeviceManagementResources()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateStringFromCache()V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/E0;->getItemViewType()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    check-cast v1, Lcom/android/launcher3/allapps/WorkEduCard;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/WorkEduCard;->updateStringFromCache()V

    goto :goto_1

    :cond_1
    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    check-cast v1, Lcom/android/launcher3/allapps/WorkPausedCard;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/WorkPausedCard;->updateStringFromCache()V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
