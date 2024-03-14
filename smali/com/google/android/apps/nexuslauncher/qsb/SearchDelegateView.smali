.class public Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;
.super LW1/p;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/HorizontalInsettableView;
.implements Lcom/android/launcher3/Reorderable;
.implements Lcom/google/android/apps/nexuslauncher/m;


# static fields
.field public static final synthetic q:I


# instance fields
.field public final j:I

.field public k:Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;

.field public l:Landroid/view/ViewGroup;

.field public final m:Lcom/android/launcher3/anim/AnimatedFloat;

.field public n:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

.field public o:LP1/f;

.field public final p:Lcom/android/launcher3/util/MultiTranslateDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, LW1/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance p2, LW1/r;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, LW1/r;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;I)V

    invoke-direct {p1, p2}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->m:Lcom/android/launcher3/anim/AnimatedFloat;

    .line 5
    sget-object p1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->d:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->n:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    .line 6
    new-instance p1, Lcom/android/launcher3/util/MultiTranslateDelegate;

    const/4 p2, 0x5

    .line 7
    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/util/MultiTranslateDelegate;-><init>(ILandroid/view/View;)V

    .line 8
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->p:Lcom/android/launcher3/util/MultiTranslateDelegate;

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07044b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->j:I

    .line 10
    new-instance p1, LW1/s;

    invoke-direct {p1, p0, p3}, LW1/s;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;I)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance p1, LW1/r;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LW1/r;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;I)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setHandwritingDelegatorCallback(Ljava/lang/Runnable;)V

    .line 12
    new-instance p1, LW1/t;

    invoke-direct {p1, p0}, LW1/t;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 13
    new-instance p1, LW1/o;

    invoke-direct {p1}, LW1/o;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/u;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    iget-boolean v4, v2, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    if-nez v4, :cond_1

    iget-object v1, v2, Lcom/google/android/apps/nexuslauncher/p;->b:Lcom/google/android/apps/nexuslauncher/n;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/n;->a:Lcom/google/android/apps/nexuslauncher/o;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/o;->b:Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->g()Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->g()Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    move-result-object v2

    iget-object v4, v2, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object v5, v4, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v5, v5, Lcom/google/android/apps/nexuslauncher/allapps/s1;->b:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->e:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    invoke-virtual {v4, v1, v0, v6}, Lcom/google/android/apps/nexuslauncher/allapps/U;->Q(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;Z)V

    return-void

    :cond_2
    new-instance v4, LW1/l;

    iget-boolean v5, v0, LW1/p;->i:Z

    move-object/from16 v7, p2

    invoke-direct {v4, v0, v5, v1, v7}, LW1/l;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;ZLjava/lang/String;Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;)V

    const v1, 0x7f04004b

    iget-object v5, v4, LW1/l;->b:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-static {v1, v5}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v1

    iget-object v7, v4, LW1/l;->f:LY1/l;

    invoke-virtual {v7, v1}, LY1/l;->j(I)V

    const v1, 0x7f0402c3

    invoke-static {v1, v5}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(ILandroid/content/Context;)Z

    move-result v1

    invoke-virtual {v7, v1}, LY1/l;->n(Z)V

    const-string v8, "ConfigBuilder"

    iget-boolean v9, v4, LW1/l;->c:Z

    if-eqz v9, :cond_14

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v10

    iget v10, v10, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {v7, v10}, LY1/l;->o(I)V

    const v11, 0x7f0a0096

    invoke-virtual {v5, v11}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v12

    const-class v13, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {v12, v13}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {v5, v11}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v13}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v13

    const-class v14, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {v13, v14}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {v13}, Lcom/android/launcher3/appprediction/PredictionRowView;->getPredictedApps()Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v15, v14, :cond_5

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v4, v3, v15}, LW1/l;->c(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)LY1/k;

    move-result-object v3

    invoke-virtual {v7, v3}, LY1/l;->a(LY1/k;)V

    if-nez v16, :cond_4

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v16, v6

    :goto_2
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    if-eqz v16, :cond_6

    invoke-virtual {v7}, LY1/l;->b()V

    :cond_6
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_8

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/BubbleTextView;

    if-eqz v10, :cond_7

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    iput-object v3, v4, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    iget-object v3, v4, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    if-nez v3, :cond_9

    invoke-virtual {v4}, LW1/l;->f()V

    :cond_9
    invoke-static {v12}, LW1/l;->e(Landroid/view/View;)LY1/h;

    move-result-object v3

    invoke-virtual {v3}, LY1/h;->b()I

    move-result v10

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v11

    add-int/2addr v11, v10

    invoke-virtual {v3, v11}, LY1/h;->f(I)V

    invoke-virtual {v3}, LY1/h;->c()I

    move-result v10

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v11

    add-int/2addr v11, v10

    invoke-virtual {v3, v11}, LY1/h;->g(I)V

    invoke-virtual {v3}, LY1/h;->d()I

    move-result v10

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v3, v10}, LY1/h;->h(I)V

    invoke-virtual {v3}, LY1/h;->a()I

    move-result v10

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v3, v10}, LY1/h;->e(I)V

    invoke-virtual {v3}, LY1/h;->c()I

    move-result v10

    iput v10, v4, LW1/l;->i:I

    if-eqz v16, :cond_a

    invoke-virtual {v3}, LY1/h;->c()I

    move-result v10

    invoke-virtual {v3}, LY1/h;->a()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v3, v10}, LY1/h;->g(I)V

    :cond_a
    invoke-virtual {v7, v3}, LY1/l;->k(LY1/h;)V

    goto/16 :goto_9

    :cond_b
    invoke-virtual {v5, v11}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/l0;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/H;

    move-result-object v12

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    new-array v14, v10, [Lcom/android/launcher3/BubbleTextView;

    const/4 v15, -0x1

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v13, :cond_10

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v1

    move-object/from16 p2, v3

    iget-object v3, v1, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher3/BubbleTextView;

    if-nez v3, :cond_c

    move/from16 v17, v13

    goto :goto_7

    :cond_c
    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    div-int/2addr v3, v10

    move/from16 v17, v13

    invoke-virtual {v1}, Landroidx/recyclerview/widget/E0;->getLayoutPosition()I

    move-result v13

    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    invoke-virtual {v12, v13, v0}, Landroidx/recyclerview/widget/H;->getSpanGroupIndex(II)I

    move-result v0

    if-gez v0, :cond_d

    goto :goto_7

    :cond_d
    iget-object v1, v1, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    if-gez v15, :cond_e

    move v15, v0

    goto :goto_6

    :cond_e
    if-eq v0, v15, :cond_f

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    goto :goto_8

    :cond_f
    :goto_6
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/G;

    iget v0, v0, Landroidx/recyclerview/widget/G;->e:I

    div-int/2addr v0, v3

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    aput-object v1, v14, v0

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v13, v17

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_8
    aget-object v1, v14, v0

    if-nez v1, :cond_11

    const-string v1, "No icons rendered in all apps"

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, LW1/l;->f()V

    goto :goto_9

    :cond_11
    iput-object v1, v4, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    sub-int/2addr v10, v1

    aget-object v1, v14, v10

    invoke-static {v1}, LW1/l;->e(Landroid/view/View;)LY1/h;

    move-result-object v1

    aget-object v6, v14, v0

    invoke-static {v6}, LW1/l;->e(Landroid/view/View;)LY1/h;

    move-result-object v0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v6

    if-eqz v6, :cond_12

    move-object/from16 v20, v1

    move-object v1, v0

    move-object/from16 v0, v20

    :cond_12
    invoke-virtual {v1}, LY1/h;->b()I

    move-result v6

    invoke-virtual {v1}, LY1/h;->d()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v0}, LY1/h;->b()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, LY1/h;->h(I)V

    invoke-virtual {v0}, LY1/h;->c()I

    move-result v1

    iput v1, v4, LW1/l;->i:I

    invoke-virtual {v0}, LY1/h;->c()I

    move-result v1

    invoke-virtual {v0}, LY1/h;->a()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, LY1/h;->g(I)V

    invoke-virtual {v7, v0}, LY1/l;->k(LY1/h;)V

    if-eqz v3, :cond_13

    invoke-static {v3}, LW1/l;->e(Landroid/view/View;)LY1/h;

    move-result-object v1

    invoke-virtual {v0}, LY1/h;->d()I

    move-result v0

    invoke-virtual {v1, v0}, LY1/h;->h(I)V

    invoke-virtual {v1}, LY1/h;->c()I

    move-result v0

    invoke-virtual {v1}, LY1/h;->a()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, LY1/h;->g(I)V

    invoke-virtual {v7, v1}, LY1/l;->w(LY1/h;)V

    goto :goto_9

    :cond_13
    invoke-virtual {v4}, LW1/l;->b()V

    goto :goto_9

    :cond_14
    invoke-virtual {v4}, LW1/l;->f()V

    :goto_9
    invoke-virtual {v7}, LY1/l;->m()V

    invoke-virtual {v7}, LY1/l;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0d0042

    invoke-direct {v1, v3, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v3, v4, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v3

    iget-object v6, v4, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    const/4 v15, 0x2

    div-int/2addr v6, v15

    iget-object v10, v4, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v14

    iget-object v10, v4, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getHeight()I

    move-result v10

    sub-int/2addr v10, v3

    sub-int v13, v10, v14

    const v11, 0x1020006

    move-object v10, v1

    move v12, v6

    move/from16 p2, v13

    move v13, v14

    move/from16 v19, v14

    move v14, v6

    move/from16 v15, p2

    invoke-virtual/range {v10 .. v15}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    const v10, 0x3df5c28f    # 0.12f

    int-to-float v3, v3

    mul-float/2addr v3, v10

    float-to-int v3, v3

    move/from16 v11, p2

    move/from16 v10, v19

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    const v12, 0x7f0a00df

    sub-int v14, v6, v3

    sub-int v13, v10, v3

    sub-int v15, v11, v3

    move-object v10, v1

    move v11, v12

    move v12, v14

    invoke-virtual/range {v10 .. v15}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    const v6, 0x1020016

    const/4 v10, 0x0

    invoke-virtual {v1, v6, v10, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    iget-object v3, v4, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v12

    iget-object v3, v4, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v3

    iget-object v6, v4, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v6

    add-int v13, v6, v3

    iget-object v3, v4, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v14

    const/4 v15, 0x0

    const v11, 0x1020016

    move-object v10, v1

    invoke-virtual/range {v10 .. v15}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    iget-object v3, v4, LW1/l;->e:Landroid/os/Bundle;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, v4, LW1/l;->a:Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-static {v1}, LW1/l;->e(Landroid/view/View;)LY1/h;

    move-result-object v1

    invoke-virtual {v1}, LY1/h;->b()I

    move-result v6

    invoke-virtual {v4, v1}, LW1/l;->g(LY1/h;)I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v1, v10}, LY1/h;->f(I)V

    invoke-virtual {v1}, LY1/h;->c()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v10

    invoke-virtual {v1, v6}, LY1/h;->g(I)V

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f070459

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v1, v6}, LY1/h;->e(I)V

    invoke-virtual {v7, v1}, LY1/l;->s(LY1/h;)V

    goto :goto_a

    :cond_15
    invoke-static {v0}, LW1/l;->e(Landroid/view/View;)LY1/h;

    move-result-object v1

    invoke-virtual {v7, v1}, LY1/l;->s(LY1/h;)V

    :goto_a
    if-eqz v9, :cond_16

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_b

    :cond_16
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v7, v1}, LY1/l;->z(Z)V

    invoke-virtual {v7}, LY1/l;->h()Z

    move-result v1

    const v6, 0x7f0a0185

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->f:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    invoke-virtual {v7, v1}, LY1/l;->x(Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;)V

    invoke-virtual {v7}, LY1/l;->v()V

    invoke-virtual {v7}, LY1/l;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v15, Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0d0043

    invoke-direct {v15, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v9, v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->k:Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    const v14, 0x7f0a0225

    if-eqz v9, :cond_17

    const/4 v9, 0x4

    invoke-virtual {v15, v14, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_17
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_18

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v10, v9

    move v13, v10

    goto :goto_c

    :cond_18
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    move v13, v9

    :goto_c
    const v10, 0x7f0a0296

    const/4 v12, 0x0

    const/16 v17, 0x0

    move-object v9, v15

    move v11, v13

    move/from16 v18, v14

    move/from16 v14, v17

    invoke-virtual/range {v9 .. v14}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    invoke-virtual {v3, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v7}, LY1/l;->t()V

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->k:Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    goto :goto_d

    :cond_19
    move/from16 v1, v18

    :goto_d
    invoke-virtual {v7, v1}, LY1/l;->u(I)V

    iget v1, v4, LW1/l;->i:I

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v5

    invoke-static {v5}, LW1/l;->e(Landroid/view/View;)LY1/h;

    move-result-object v5

    invoke-virtual {v5}, LY1/h;->c()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v5, v9}, LY1/h;->g(I)V

    invoke-virtual {v5}, LY1/h;->a()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-virtual {v5, v9}, LY1/h;->e(I)V

    invoke-virtual {v7}, LY1/l;->r()V

    invoke-virtual {v7, v5}, LY1/l;->q(LY1/h;)V

    invoke-virtual {v5}, LY1/h;->d()I

    move-result v9

    if-lez v9, :cond_1b

    invoke-virtual {v5}, LY1/h;->a()I

    move-result v9

    if-gtz v9, :cond_1a

    goto :goto_e

    :cond_1a
    invoke-virtual {v5}, LY1/h;->d()I

    move-result v8

    invoke-virtual {v5}, LY1/h;->a()I

    move-result v5

    new-instance v9, LW1/k;

    invoke-direct {v9, v4, v1}, LW1/k;-><init>(LW1/l;I)V

    invoke-static {v8, v5, v9}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v7}, LY1/l;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_f

    :cond_1b
    :goto_e
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid preview bitmap size. width: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, LY1/h;->d()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "hight: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, LY1/h;->a()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " top shift: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, LY1/h;->f(I)V

    invoke-virtual {v5, v1}, LY1/h;->g(I)V

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, LY1/h;->h(I)V

    invoke-virtual {v5, v8}, LY1/h;->e(I)V

    invoke-virtual {v7, v5}, LY1/l;->q(LY1/h;)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5, v1, v1, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    invoke-virtual {v7}, LY1/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_f

    :cond_1c
    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/uioverrides/states/OverviewState;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->g:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    invoke-virtual {v7, v1}, LY1/l;->x(Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;)V

    goto :goto_f

    :cond_1d
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->e:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    invoke-virtual {v7, v1}, LY1/l;->x(Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;)V

    goto :goto_f

    :cond_1e
    sget-object v1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->d:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    invoke-virtual {v7, v1}, LY1/l;->x(Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;)V

    :goto_f
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->h()Z

    move-result v1

    invoke-virtual {v7, v1}, LY1/l;->l(Z)V

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->o:LP1/f;

    if-eqz v0, :cond_20

    sget-boolean v1, LP1/f;->y:Z

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "getCurrentLoop="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, LP1/f;->h:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "DoodleView"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget v0, v0, LP1/f;->h:I

    goto :goto_10

    :cond_20
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v7, v0}, LY1/l;->p(I)V

    invoke-static {}, LY1/o;->d()LY1/n;

    move-result-object v0

    invoke-virtual {v0, v7}, LY1/n;->b(LY1/l;)V

    iget-object v1, v4, LW1/l;->g:Ljava/lang/String;

    if-nez v1, :cond_21

    const-string v1, ""

    :cond_21
    invoke-virtual {v0, v1}, LY1/n;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v0

    check-cast v0, LY1/o;

    invoke-virtual {v0}, Lcom/google/protobuf/b;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lq1/d;

    move-result-object v1

    invoke-interface {v1, v0, v3}, Lq1/d;->startSearch([BLandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v2, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncher;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/NexusLauncher;->b:Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;->d:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;->g:Z

    goto :goto_11

    :cond_22
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;->a()V

    :goto_11
    move-object/from16 v10, p0

    goto/16 :goto_12

    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    move-object/from16 v10, p0

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aget v4, v1, v7

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v10, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, v10, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->k:Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_24

    const-string v6, "source_mic_alpha"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    :cond_24
    const-string v6, "source_round_left"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "source_round_right"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v1, v3}, LW1/l;->d(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v1

    const-string v6, "source_logo_offset"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v4, v3}, LW1/l;->d(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v3

    const-string v4, "source_mic_offset"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "use_fade_animation"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x50000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, LW1/v;

    invoke-direct {v5, v10, v2}, LW1/v;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_12
    sget-object v0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->d:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    iput-object v0, v10, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->n:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    return-void
.end method

.method public final c(Lcom/google/android/apps/nexuslauncher/p;)V
    .locals 4

    iget-boolean v0, p1, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, LW1/p;->h:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, LW1/p;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1300ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LW1/p;->f:Landroid/widget/ImageView;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/X2;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/allapps/X2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, LW1/p;->e()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->j(LT1/a;)V

    iget-object v2, p0, LW1/p;->h:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, p0, LW1/p;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LW1/p;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, LW1/p;->f:Landroid/widget/ImageView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/p;->b:Lcom/google/android/apps/nexuslauncher/n;

    if-eqz p1, :cond_1

    iget-object p0, p0, LW1/p;->f:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/n;->a:Lcom/google/android/apps/nexuslauncher/o;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/o;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, LW1/p;->f:Landroid/widget/ImageView;

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/u;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, LW1/p;->d(Landroid/content/Context;)V

    return-void
.end method

.method public final g()Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;
    .locals 1

    iget-object p0, p0, LW1/p;->d:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    check-cast p0, Lcom/android/launcher3/Launcher;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getReorderBounceScale()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->p:Lcom/android/launcher3/util/MultiTranslateDelegate;

    return-object p0
.end method

.method public final h()Z
    .locals 3

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->o:LP1/f;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-boolean v1, p0, LP1/f;->p:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object p0, p0, LP1/f;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method public final i(Landroid/view/View;)V
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->n:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->b(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_PREMIUM_HAPTICS_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->g()Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/s1;->b:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->g()Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    move-result-object p0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->z:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-static {p0, p1}, LW1/n;->a(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->g()Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    move-result-object p0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->d:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-static {p0, p1}, LW1/n;->a(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;)V

    :goto_0
    return-void
.end method

.method public final initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0

    return-void
.end method

.method public final j(LT1/a;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->o:LP1/f;

    if-eqz v1, :cond_0

    iget-object v1, v0, LW1/p;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->o:LP1/f;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->o:LP1/f;

    :cond_0
    return-void

    :cond_1
    sget-object v3, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/nexuslauncher/u;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    iget-boolean v3, v3, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, v1, LT1/a;->d:Lz3/c;

    invoke-virtual {v3}, Lz3/c;->l()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, v0, LW1/p;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3}, Lz3/c;->k()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_3
    iget-object v4, v0, LW1/p;->f:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->o:LP1/f;

    if-nez v2, :cond_4

    new-instance v2, LP1/f;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, LP1/f;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->o:LP1/f;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_1
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->o:LP1/f;

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->m:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object v5, v2, LP1/f;->d:Landroid/content/SharedPreferences;

    const-string v6, "num_times_started"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, LP1/f;->r:I

    iget-object v5, v2, LP1/f;->d:Landroid/content/SharedPreferences;

    const-string v6, "num_times_couldve_started"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, LP1/f;->s:I

    sget-boolean v5, LP1/f;->y:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "init: numTimesStarted= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, LP1/f;->r:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mNumTimesCouldHaveStarted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, LP1/f;->s:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DoodleView"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v2}, LP1/f;->b()V

    iput-object v3, v2, LP1/f;->f:Lz3/c;

    iget-object v1, v1, LT1/a;->e:Landroid/graphics/Bitmap;

    iput-object v1, v2, LP1/f;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Lz3/c;->b()Lz3/d;

    move-result-object v1

    iput-object v1, v2, LP1/f;->g:Lz3/d;

    invoke-virtual {v1}, Lz3/d;->d()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {v3}, Lz3/c;->c()F

    move-result v6

    div-float v6, v5, v6

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v8

    div-float v5, v6, v5

    invoke-virtual {v3}, Lz3/c;->f()I

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_6

    move v9, v10

    goto :goto_2

    :cond_6
    move v9, v7

    :goto_2
    if-eqz v9, :cond_7

    invoke-virtual {v3}, Lz3/c;->c()F

    move-result v1

    mul-float v5, v1, v8

    move v6, v5

    move v1, v10

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Lz3/c;->g()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    move/from16 v16, v6

    move v6, v5

    move/from16 v5, v16

    :goto_3
    add-int/lit8 v8, v1, 0x1

    new-array v8, v8, [Landroid/animation/Keyframe;

    const/4 v11, 0x0

    move v12, v7

    move v13, v11

    :goto_4
    const/4 v14, 0x2

    if-ge v12, v1, :cond_9

    div-float v15, v13, v5

    invoke-static {v15, v12}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v15

    aput-object v15, v8, v12

    add-float/2addr v13, v6

    if-nez v12, :cond_8

    invoke-virtual {v3}, Lz3/c;->e()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v3}, Lz3/c;->g()I

    move-result v15

    div-int/2addr v15, v14

    int-to-float v14, v15

    add-float/2addr v13, v14

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v6, v1, -0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12, v6}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v6

    aput-object v6, v8, v1

    sget-object v1, LP1/f;->z:LP1/d;

    invoke-static {v1, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    filled-new-array {v1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v6, LP1/e;

    invoke-direct {v6, v2, v9, v1}, LP1/e;-><init>(LP1/f;ZLandroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    float-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3}, Lz3/c;->h()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    move v14, v10

    :goto_5
    invoke-virtual {v1, v14}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    invoke-virtual {v3}, Lz3/c;->f()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_b

    move v8, v10

    goto :goto_6

    :cond_b
    move v8, v7

    :goto_6
    invoke-virtual {v3}, Lz3/c;->h()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v8, :cond_c

    mul-int/lit8 v5, v5, 0x2

    :cond_c
    if-eqz v8, :cond_d

    goto :goto_7

    :cond_d
    sub-int/2addr v5, v10

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_7
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v2, LP1/f;->m:Landroid/animation/AnimatorSet;

    invoke-static {v4, v10}, LP1/f;->c(Lcom/android/launcher3/anim/AnimatedFloat;Z)Landroid/animation/Animator;

    move-result-object v3

    invoke-static {v4, v7}, LP1/f;->c(Lcom/android/launcher3/anim/AnimatedFloat;Z)Landroid/animation/Animator;

    move-result-object v4

    iget-object v5, v2, LP1/f;->f:Lz3/c;

    invoke-virtual {v5}, Lz3/c;->d()I

    move-result v5

    if-eqz v5, :cond_e

    move v5, v10

    goto :goto_8

    :cond_e
    move v5, v7

    :goto_8
    if-eqz v5, :cond_f

    iget-object v2, v2, LP1/f;->m:Landroid/animation/AnimatorSet;

    filled-new-array {v3, v1, v4}, [Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_9

    :cond_f
    iget-object v2, v2, LP1/f;->m:Landroid/animation/AnimatorSet;

    filled-new-array {v1, v4}, [Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :goto_9
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->o:LP1/f;

    invoke-virtual {v0, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->o:LP1/f;

    iget-object v1, v1, LP1/f;->f:Lz3/c;

    invoke-virtual {v1}, Lz3/c;->d()I

    move-result v1

    if-eqz v1, :cond_10

    move v7, v10

    :cond_10
    xor-int/lit8 v1, v7, 0x1

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->m:Lcom/android/launcher3/anim/AnimatedFloat;

    if-eqz v1, :cond_11

    move v11, v12

    :cond_11
    invoke-virtual {v0, v11}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, LW1/p;->onAttachedToWindow()V

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/u;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/u;->a(Lcom/google/android/apps/nexuslauncher/m;)V

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->c(Lcom/google/android/apps/nexuslauncher/p;)V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, LW1/p;->onDetachedFromWindow()V

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/u;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/u;->c(Lcom/google/android/apps/nexuslauncher/m;)V

    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, LW1/p;->onFinishInflate()V

    const v0, 0x7f0a0225

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->k:Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;

    iget-object v0, p0, LW1/p;->h:Landroid/widget/ImageButton;

    new-instance v1, LW1/s;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LW1/s;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0157

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->l:Landroid/view/ViewGroup;

    return-void
.end method

.method public final onMeasure(II)V
    .locals 10

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    goto :goto_0

    :cond_0
    instance-of v3, v2, LW1/w;

    if-eqz v3, :cond_1

    check-cast v2, LW1/w;

    invoke-virtual {v2}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v4, v5, LP1/f;

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const v6, 0x800013

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v4, 0x102002e

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/RippleDrawable;->findIndexByLayerId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/RippleDrawable;->getLayerInsetLeft(I)I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/RippleDrawable;->getLayerInsetRight(I)I

    move-result v7

    sub-int/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/RippleDrawable;->getLayerInsetTop(I)I

    move-result v8

    sub-int v8, v0, v8

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/RippleDrawable;->getLayerInsetBottom(I)I

    move-result v4

    sub-int/2addr v8, v4

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f0a0185

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, LW1/p;->e:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->j:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->j:I

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_1

    :goto_2
    if-eqz v2, :cond_4

    sget-object v0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->e:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->f:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    :goto_3
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->n:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->m:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    :cond_0
    return-void
.end method

.method public final resetSearch()V
    .locals 0

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    new-instance v0, LW1/w;

    invoke-direct {v0, p1}, LW1/w;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setHorizontalInsets(F)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-boolean v0, p0, LW1/p;->e:Z

    if-eqz v0, :cond_0

    neg-int v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iget-object v1, p0, LW1/p;->f:Landroid/widget/ImageView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->l:Landroid/view/ViewGroup;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, LW1/w;

    if-eqz v1, :cond_1

    check-cast v0, LW1/w;

    iget v1, v0, LW1/w;->d:I

    if-eq v1, p1, :cond_1

    iput p1, v0, LW1/w;->d:I

    invoke-virtual {v0}, LW1/w;->a()V

    :cond_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->o:LP1/f;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    return-void
.end method

.method public final setReorderBounceScale(F)V
    .locals 0

    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
