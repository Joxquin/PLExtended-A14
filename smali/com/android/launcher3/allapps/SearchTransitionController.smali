.class public final Lcom/android/launcher3/allapps/SearchTransitionController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INTERPOLATOR_TRANSITIONING_TO_ALL_APPS:Ly0/a;

.field private static final INTERPOLATOR_WITHIN_ALL_APPS:Landroid/view/animation/Interpolator;

.field private static final SEARCH_TO_AZ_PROGRESS:Landroid/util/FloatProperty;


# instance fields
.field private final mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

.field private mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

.field private mSearchToAzProgress:F

.field private mSkipNextAnimationWithinAllApps:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ly0/e;->B:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/allapps/SearchTransitionController;->INTERPOLATOR_WITHIN_ALL_APPS:Landroid/view/animation/Interpolator;

    sget-object v0, Ly0/e;->e:Ly0/a;

    sput-object v0, Lcom/android/launcher3/allapps/SearchTransitionController;->INTERPOLATOR_TRANSITIONING_TO_ALL_APPS:Ly0/a;

    new-instance v0, Lcom/android/launcher3/allapps/SearchTransitionController$1;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/SearchTransitionController$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/SearchTransitionController;->SEARCH_TO_AZ_PROGRESS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzProgress:F

    iput-object p1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-void
.end method

.method public static a(Lcom/android/launcher3/allapps/SearchTransitionController;)V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setFloatingRowsCollapsed(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->reset(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public static b(Lcom/android/launcher3/allapps/SearchTransitionController;Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    iget v2, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzProgress:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->updateSearchRecyclerViewProgress()I

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    const/16 v4, 0xff

    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->setDecorationFillAlpha(I)V

    :cond_1
    instance-of p0, p1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_2

    move-object p0, p1

    check-cast p0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/allapps/SearchTransitionController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public static d(Lcom/android/launcher3/allapps/SearchTransitionController;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzProgress:F

    return p0
.end method

.method public static e(Lcom/android/launcher3/allapps/SearchTransitionController;F)V
    .locals 7

    iput p1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzProgress:F

    invoke-direct {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->updateSearchRecyclerViewProgress()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getFloatingRowsHeight()I

    move-result v2

    add-int/2addr v2, v0

    iget-boolean v3, v1, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    xor-int/lit8 v3, v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    if-eqz v3, :cond_0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    sget-object v0, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-static {v0, p1, v5, v4}, Ly0/e;->a(Landroid/view/animation/Interpolator;FFF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getTabsAdditionalPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070095

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object p0

    int-to-float v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    sget-object v0, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-static {v0, p1, v5, v4}, Ly0/e;->a(Landroid/view/animation/Interpolator;FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updateSearchRecyclerViewProgress()I
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_11

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_0

    goto/16 :goto_c

    :cond_0
    if-nez v3, :cond_1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_1
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v10

    const/4 v11, -0x1

    const-string v12, "SearchTransitionCtrl"

    if-ne v10, v11, :cond_2

    const-string v13, "Can\'t determine span index - child not found in adapter"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object v13

    instance-of v13, v13, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    if-nez v13, :cond_3

    const-string v13, "Search RV doesn\'t have an AllAppsGridAdapter?"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v12, v10}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getSpanIndex(I)I

    move-result v12

    :goto_2
    const/4 v13, 0x1

    if-lez v6, :cond_4

    if-nez v12, :cond_4

    move v14, v13

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    or-int/2addr v7, v14

    instance-of v14, v9, Lcom/android/launcher3/BubbleTextView;

    if-eqz v14, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v14, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/model/data/ItemInfo;

    iget v14, v14, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v14, :cond_5

    move v14, v13

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_7

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :cond_7
    :goto_5
    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v13, :cond_9

    if-lez v12, :cond_8

    add-int/lit8 v8, v8, -0x1

    :cond_8
    const v15, 0x3c23d70a    # 0.01f

    int-to-float v2, v8

    mul-float/2addr v2, v15

    const v15, 0x3e083127    # 0.133f

    sub-float/2addr v15, v2

    const/4 v11, 0x0

    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    const v16, 0x3da9fbe7    # 0.083f

    add-float v11, v15, v16

    invoke-static {v14, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget v14, v0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzProgress:F

    move/from16 v17, v7

    sget-object v7, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-static {v7, v14, v15, v11}, Ly0/e;->a(Landroid/view/animation/Interpolator;FFF)F

    move-result v11

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v11, v14, v11

    const v15, 0x3f220c4a    # 0.633f

    sub-float/2addr v15, v2

    const/4 v2, 0x0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v15, 0x3e19999a    # 0.15f

    add-float/2addr v15, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v15

    iget v14, v0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzProgress:F

    invoke-static {v7, v14, v2, v15}, Ly0/e;->a(Landroid/view/animation/Interpolator;FFF)F

    move-result v2

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v2, v7, v2

    add-int/lit8 v8, v8, 0x1

    move v14, v2

    goto :goto_6

    :cond_9
    move/from16 v17, v7

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    :goto_6
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_b

    instance-of v15, v9, Landroid/view/ViewGroup;

    if-eqz v15, :cond_b

    sget-object v15, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v15}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v15

    if-eqz v15, :cond_b

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v9, v15}, Landroid/view/View;->setAlpha(F)V

    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup;

    const/4 v15, 0x0

    :goto_7
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v15, v7, :cond_a

    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_a
    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v14, v7

    float-to-int v7, v14

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_9

    :cond_b
    invoke-virtual {v9, v11}, Landroid/view/View;->setAlpha(F)V

    const/4 v7, -0x1

    if-eq v10, v7, :cond_c

    iget-object v7, v1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float v11, v14, v10

    float-to-int v11, v11

    invoke-virtual {v7, v11}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->setDecorationFillAlpha(I)V

    goto :goto_8

    :cond_c
    const/high16 v10, 0x437f0000    # 255.0f

    :goto_8
    if-eqz v2, :cond_d

    mul-float/2addr v14, v10

    float-to-int v7, v14

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_d
    :goto_9
    if-eqz v13, :cond_e

    iget v2, v0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzProgress:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v14, v7, v2

    goto :goto_a

    :cond_e
    const/high16 v7, 0x3f800000    # 1.0f

    move v14, v7

    :goto_a
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v14

    float-to-int v2, v2

    invoke-virtual {v9, v14}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v5

    if-lez v12, :cond_f

    sub-int/2addr v7, v2

    goto :goto_b

    :cond_f
    add-int/2addr v5, v2

    if-nez v13, :cond_10

    move v6, v2

    :cond_10
    :goto_b
    int-to-float v2, v7

    invoke-virtual {v9, v2}, Landroid/view/View;->setY(F)V

    move/from16 v7, v17

    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_11
    sub-int/2addr v5, v6

    return v5
.end method


# virtual methods
.method public final animateToSearchState(ZJLD0/a;)V
    .locals 5

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    sget-object v1, Lcom/android/launcher3/allapps/SearchTransitionController;->SEARCH_TO_AZ_PROGRESS:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInAllApps()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/launcher3/allapps/SearchTransitionController;->INTERPOLATOR_WITHIN_ALL_APPS:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/launcher3/allapps/SearchTransitionController;->INTERPOLATOR_TRANSITIONING_TO_ALL_APPS:Ly0/a;

    :goto_1
    iget-boolean v3, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSkipNextAnimationWithinAllApps:Z

    if-eqz v3, :cond_3

    sget-object v1, Ly0/e;->e:Ly0/a;

    iput-boolean v4, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSkipNextAnimationWithinAllApps:Z

    :cond_3
    sget-object v3, Ly0/e;->e:Ly0/a;

    if-ne v1, v3, :cond_4

    const-wide/16 p2, 0x0

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    new-instance p3, LD0/r;

    invoke-direct {p3, p0, v4}, LD0/r;-><init>(Lcom/android/launcher3/allapps/SearchTransitionController;I)V

    invoke-static {p3}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, LD0/r;

    invoke-direct {p2, p0, v2}, LD0/r;-><init>(Lcom/android/launcher3/allapps/SearchTransitionController;I)V

    invoke-static {p2}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    iget-object p1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {p4}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setFloatingRowsCollapsed(Z)V

    iget-object p1, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    iget-object p2, p1, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    iget-boolean p1, p1, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-eqz p1, :cond_6

    const/16 p1, 0x8

    goto :goto_2

    :cond_6
    move p1, v4

    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p1

    new-instance p2, LD0/s;

    invoke-direct {p2, p0}, LD0/s;-><init>(Lcom/android/launcher3/allapps/SearchTransitionController;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/SearchRecyclerView;->setChildAttachedConsumer(LD0/s;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setSkipAnimationWithinAllApps()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSkipNextAnimationWithinAllApps:Z

    return-void
.end method
