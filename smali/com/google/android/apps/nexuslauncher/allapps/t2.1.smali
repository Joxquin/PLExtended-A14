.class public final Lcom/google/android/apps/nexuslauncher/allapps/t2;
.super Landroidx/recyclerview/widget/i0;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/i0;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/t2;->d:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/A0;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/t2;->d:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_6

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v9

    if-ltz v9, :cond_5

    move-object v10, v3

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v9, v11, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    instance-of v10, v9, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    if-eqz v10, :cond_5

    check-cast v9, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    iget-object v9, v9, Lcom/google/android/apps/nexuslauncher/allapps/h1;->d:Lcom/google/android/apps/nexuslauncher/allapps/I2;

    if-eqz v9, :cond_5

    iget-object v10, v9, Lcom/google/android/apps/nexuslauncher/allapps/I2;->b:Lcom/google/android/apps/nexuslauncher/allapps/r2;

    if-eqz v10, :cond_5

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->getHighlightedItem()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->hasFocus()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v9}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->j()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    invoke-virtual {v10, v0, v8, v9}, Lcom/google/android/apps/nexuslauncher/allapps/r2;->c(Landroid/graphics/Canvas;Landroid/view/View;Z)V

    goto :goto_3

    :cond_1
    iget-boolean v11, v9, Lcom/google/android/apps/nexuslauncher/allapps/I2;->c:Z

    if-eqz v11, :cond_4

    const-string v11, ""

    iget-object v9, v9, Lcom/google/android/apps/nexuslauncher/allapps/I2;->a:Ljava/lang/String;

    if-nez v9, :cond_2

    move-object v12, v11

    goto :goto_1

    :cond_2
    move-object v12, v9

    :goto_1
    new-instance v13, Lcom/google/android/apps/nexuslauncher/allapps/s2;

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v15

    invoke-direct {v13, v10, v14, v15}, Lcom/google/android/apps/nexuslauncher/allapps/s2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/r2;II)V

    invoke-virtual {v5, v12, v13}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/nexuslauncher/allapps/s2;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v14

    mul-float/2addr v14, v13

    float-to-int v13, v14

    iget-object v14, v12, Lcom/google/android/apps/nexuslauncher/allapps/r2;->d:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    int-to-float v13, v13

    add-float/2addr v8, v13

    invoke-virtual {v14, v15, v6, v1, v8}, Landroid/graphics/RectF;->union(FFFF)V

    iget-boolean v1, v12, Lcom/google/android/apps/nexuslauncher/allapps/r2;->l:Z

    iget-boolean v6, v10, Lcom/google/android/apps/nexuslauncher/allapps/r2;->l:Z

    or-int/2addr v1, v6

    iput-boolean v1, v12, Lcom/google/android/apps/nexuslauncher/allapps/r2;->l:Z

    iget-boolean v1, v12, Lcom/google/android/apps/nexuslauncher/allapps/r2;->m:Z

    iget-boolean v6, v10, Lcom/google/android/apps/nexuslauncher/allapps/r2;->m:Z

    or-int/2addr v1, v6

    iput-boolean v1, v12, Lcom/google/android/apps/nexuslauncher/allapps/r2;->m:Z

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    move-object v11, v9

    :goto_2
    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v10, v0, v8, v1}, Lcom/google/android/apps/nexuslauncher/allapps/r2;->c(Landroid/graphics/Canvas;Landroid/view/View;Z)V

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v1, 0x0

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p2

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/allapps/s2;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/r2;->a()V

    iget-object v3, v2, Lcom/google/android/apps/nexuslauncher/allapps/r2;->d:Landroid/graphics/RectF;

    iget v4, v2, Lcom/google/android/apps/nexuslauncher/allapps/s2;->p:I

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    iget v5, v2, Lcom/google/android/apps/nexuslauncher/allapps/s2;->q:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    iget-object v3, v2, Lcom/google/android/apps/nexuslauncher/allapps/r2;->i:Landroid/graphics/Paint;

    iget v4, v2, Lcom/google/android/apps/nexuslauncher/allapps/r2;->f:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, v2, Lcom/google/android/apps/nexuslauncher/allapps/r2;->k:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/r2;->b(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_7
    return-void
.end method
