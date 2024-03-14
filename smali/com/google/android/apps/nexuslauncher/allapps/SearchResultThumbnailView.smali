.class public Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;
.super Lcom/android/quickstep/views/LaunchableConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/A2;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final x:Lcom/google/android/apps/nexuslauncher/allapps/e2;


# instance fields
.field public final d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final e:LX1/f;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Lcom/google/android/apps/nexuslauncher/allapps/g;

.field public final l:Landroid/graphics/drawable/Drawable;

.field public final m:Landroid/graphics/drawable/Drawable;

.field public n:Landroid/app/search/SearchTarget;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/TextView;

.field public q:Lcom/google/android/apps/nexuslauncher/allapps/s0;

.field public r:Ljava/util/function/Consumer;

.field public s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/e2;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/allapps/e2;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->x:Lcom/google/android/apps/nexuslauncher/allapps/e2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/LaunchableConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p2, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->x:Lcom/google/android/apps/nexuslauncher/allapps/e2;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->r:Ljava/util/function/Consumer;

    .line 5
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    .line 6
    new-instance p3, Lcom/google/android/apps/nexuslauncher/allapps/g;

    invoke-direct {p3, p2}, Lcom/google/android/apps/nexuslauncher/allapps/g;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;)V

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->k:Lcom/google/android/apps/nexuslauncher/allapps/g;

    .line 7
    new-instance p3, LX1/f;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/c2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/c2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;)V

    .line 8
    iget-object v1, p2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    .line 9
    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    const/4 v2, 0x0

    .line 10
    invoke-direct {p3, p1, v0, v1, v2}, LX1/f;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/android/launcher3/views/ActivityContext;Lcom/android/quickstep/views/TaskView;)V

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->e:LX1/f;

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f08039a

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->l:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f08024b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->m:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07049f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->f:I

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07049b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->g:I

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07049d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->h:I

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07049c

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->i:I

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07049e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->j:I

    const/4 p1, 0x3

    .line 18
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->s:I

    const p1, 0x1120099

    .line 19
    invoke-static {p1, p2}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p1

    .line 20
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->t:I

    const p1, 0x11200ab

    .line 21
    invoke-static {p1, p2}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p1

    .line 22
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->u:I

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704a1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->v:I

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07049a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->w:I

    return-void
.end method

.method public static r(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;Landroid/view/View;)V
    .locals 8

    new-instance v6, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13003f

    const v3, 0x7f0802ae

    sget-object v4, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->x:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    new-instance v5, Lcom/google/android/apps/nexuslauncher/allapps/d2;

    const/4 v7, 0x1

    invoke-direct {v5, p0, v7}, Lcom/google/android/apps/nexuslauncher/allapps/d2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;I)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    iput p1, v0, Landroid/graphics/RectF;->left:F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p0, v0, p1, v7}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/views/ActivityContext;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    return-void
.end method


# virtual methods
.method public final e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->s(Lcom/google/android/apps/nexuslauncher/allapps/h1;IZ)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/g1;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->onItemClicked(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->n:Landroid/app/search/SearchTarget;

    const/4 v0, 0x5

    invoke-static {p1, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->g(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/app/search/SearchTarget;I)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/d2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/d2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0a038a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->o:Landroid/widget/ImageView;

    const v0, 0x7f0a01e6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->p:Landroid/widget/TextView;

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final s(Lcom/google/android/apps/nexuslauncher/allapps/h1;IZ)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    iput-object v10, v9, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->n:Landroid/app/search/SearchTarget;

    move/from16 v11, p2

    iput v11, v9, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->s:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->t()V

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-virtual {v9, v13, v13, v13, v13}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, v9, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->o:Landroid/widget/ImageView;

    iget-object v1, v9, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v9, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/d;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_0
    invoke-virtual {v10}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/search/SearchAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v15

    invoke-static {v10}, Lz0/f;->f(Landroid/app/search/SearchTarget;)Z

    move-result v0

    const-string v8, "blobstore_handle_key"

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v10}, Lz0/f;->f(Landroid/app/search/SearchTarget;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v13

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v0, v0, Landroid/app/blob/BlobHandle;

    :goto_0
    if-nez v0, :cond_4

    invoke-static {v10}, Lz0/f;->d(Landroid/app/search/SearchTarget;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v13

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v7

    :goto_3
    if-nez v0, :cond_9

    if-nez v15, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v15}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    if-eq v0, v7, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    if-ne v0, v12, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    move v0, v13

    goto :goto_6

    :cond_7
    :goto_5
    move v0, v7

    :goto_6
    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    move v0, v13

    goto :goto_8

    :cond_9
    :goto_7
    move v0, v7

    :goto_8
    if-nez v0, :cond_b

    const-string v0, "SearchResultScreenshotThumbnail"

    if-nez v15, :cond_a

    const-string v1, "SearchAction had no icon nor associated blobstore image."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_a
    const-string v1, "Icon type not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :cond_b
    invoke-virtual {v10}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/F1;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/allapps/F1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/blob/BlobHandle;

    new-instance v5, Lcom/google/android/apps/nexuslauncher/allapps/h2;

    invoke-virtual {v10}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/app/search/SearchTarget;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v14}, Landroid/app/search/SearchAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-static {v10}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->e(Landroid/app/search/SearchTarget;)Ljava/util/List;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v12, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/nexuslauncher/allapps/h2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/CharSequence;Landroid/app/blob/BlobHandle;Ljava/util/List;Landroid/os/Bundle;)V

    invoke-virtual {v14}, Landroid/app/search/SearchAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->w(Landroid/content/Intent;)V

    invoke-virtual {v14}, Landroid/app/search/SearchAction;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, v12, Lcom/google/android/apps/nexuslauncher/allapps/g1;->h:Landroid/content/Intent;

    if-eqz v1, :cond_d

    if-nez v0, :cond_c

    goto :goto_a

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SearchActionItemInfo can only have either an Intent or a PendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_a
    iput-object v0, v12, Lcom/google/android/apps/nexuslauncher/allapps/g1;->i:Landroid/app/PendingIntent;

    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const-string v0, "hide_label"

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez p3, :cond_e

    const/4 v7, 0x1

    goto :goto_b

    :cond_e
    move v7, v13

    :goto_b
    invoke-static {v14}, Lz0/b;->a(Landroid/app/search/SearchAction;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "title_content_description_override"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v9, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_f

    iget-object v0, v9, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->p:Landroid/widget/TextView;

    iget-object v2, v12, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v9, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    :cond_f
    iget-object v0, v9, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->p:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_c
    invoke-virtual {v9, v12}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->u(Lcom/google/android/apps/nexuslauncher/allapps/i2;)V

    invoke-static {v14}, Lz0/b;->a(Landroid/app/search/SearchAction;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "support_share"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/d2;

    const/4 v2, 0x2

    invoke-direct {v0, v9, v2}, Lcom/google/android/apps/nexuslauncher/allapps/d2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;I)V

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_10
    invoke-static {v10}, Lz0/f;->d(Landroid/app/search/SearchTarget;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "webimage_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "bitmap_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_11
    invoke-static {v10}, Lz0/f;->f(Landroid/app/search/SearchTarget;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v13

    goto :goto_d

    :cond_12
    invoke-virtual {v10}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 v2, v19

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v0, v0, Landroid/app/blob/BlobHandle;

    :goto_d
    if-eqz v0, :cond_13

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s-%d"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_13
    invoke-static {v15, v10}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->k(Landroid/graphics/drawable/Icon;Landroid/app/search/SearchTarget;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-static {v10}, Lz0/f;->d(Landroid/app/search/SearchTarget;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/f2;

    invoke-direct {v3, v9, v1, v13}, Lcom/google/android/apps/nexuslauncher/allapps/f2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;Ljava/lang/Object;I)V

    iget-object v1, v9, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/g2;

    invoke-direct {v4, v9, v12}, Lcom/google/android/apps/nexuslauncher/allapps/g2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;Lcom/google/android/apps/nexuslauncher/allapps/h2;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h(Ljava/lang/String;Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/google/android/apps/nexuslauncher/allapps/u0;)Lcom/google/android/apps/nexuslauncher/allapps/s0;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->q:Lcom/google/android/apps/nexuslauncher/allapps/s0;

    goto :goto_f

    :cond_14
    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/f2;

    const/4 v3, 0x1

    invoke-direct {v2, v9, v12, v3}, Lcom/google/android/apps/nexuslauncher/allapps/f2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;Ljava/lang/Object;I)V

    iget-object v3, v9, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/g2;

    invoke-direct {v4, v9, v12}, Lcom/google/android/apps/nexuslauncher/allapps/g2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;Lcom/google/android/apps/nexuslauncher/allapps/h2;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h(Ljava/lang/String;Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/google/android/apps/nexuslauncher/allapps/u0;)Lcom/google/android/apps/nexuslauncher/allapps/s0;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->q:Lcom/google/android/apps/nexuslauncher/allapps/s0;

    :goto_f
    return-void
.end method

.method public final t()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->q:Lcom/google/android/apps/nexuslauncher/allapps/s0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/s0;->close()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->o:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->o:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/d;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->p:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->f:I

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->s:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->i:I

    const-string v3, "SearchResultScreenshotThumbnail"

    const-string v4, "Label padding will be left to default 3-column."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->h:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->g:I

    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->p:Landroid/widget/TextView;

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->j:I

    invoke-virtual {v3, v1, v4, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->s:I

    int-to-float v1, v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->o:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/d;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "H,%f"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroidx/constraintlayout/widget/d;->G:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    return-void
.end method

.method public final u(Lcom/google/android/apps/nexuslauncher/allapps/i2;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->o:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BitmapInfo;->isLowRes()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(ILandroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
