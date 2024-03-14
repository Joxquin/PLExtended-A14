.class public Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;
.super Lcom/google/android/apps/nexuslauncher/allapps/y1;
.source "SourceFile"


# instance fields
.field public e:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/allapps/y1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/y1;->e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v0}, Lz0/f;->b(Landroid/app/search/SearchTarget;)Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SearchResultThumbnailContainer"

    const-string v2, "Unknown crop type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;->e:Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;->u(Lcom/google/android/apps/nexuslauncher/allapps/h1;)I

    move-result p1

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;->e:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;->t(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;->e:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/LaunchableConstraintLayout;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;->e:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;->e:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(Lcom/google/android/apps/nexuslauncher/allapps/h1;Landroid/app/search/SearchTarget;Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;->e:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->b:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;->d:Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    :try_start_0
    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-static {v2}, Lz0/f;->b(Landroid/app/search/SearchTarget;)Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SearchResultThumbnailContainer"

    const-string v4, "Unknown crop type"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v1, v3, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;->e:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    array-length p1, p1

    int-to-float p1, p1

    div-float/2addr v5, p1

    iput v5, v2, Landroidx/constraintlayout/widget/d;->R:F

    check-cast p3, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a(Landroid/app/search/SearchTarget;)Lcom/google/android/apps/nexuslauncher/allapps/h1;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;->e:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    array-length p0, p0

    invoke-virtual {p3, p1, p0, v4}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->s(Lcom/google/android/apps/nexuslauncher/allapps/h1;IZ)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;->u(Lcom/google/android/apps/nexuslauncher/allapps/h1;)I

    move-result p0

    int-to-float p1, p0

    div-float/2addr v5, p1

    iput v5, v2, Landroidx/constraintlayout/widget/d;->R:F

    check-cast p3, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a(Landroid/app/search/SearchTarget;)Lcom/google/android/apps/nexuslauncher/allapps/h1;

    move-result-object p1

    invoke-virtual {p3, p1, p0, v4}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->s(Lcom/google/android/apps/nexuslauncher/allapps/h1;IZ)V

    goto :goto_1

    :cond_1
    int-to-float p0, v0

    div-float/2addr v5, p0

    iput v5, v2, Landroidx/constraintlayout/widget/d;->R:F

    check-cast p3, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a(Landroid/app/search/SearchTarget;)Lcom/google/android/apps/nexuslauncher/allapps/h1;

    move-result-object p0

    invoke-virtual {p3, p0, v0, v4}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->s(Lcom/google/android/apps/nexuslauncher/allapps/h1;IZ)V

    :goto_1
    return-void
.end method

.method public final t(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->t()V

    return-void
.end method

.method public final u(Lcom/google/android/apps/nexuslauncher/allapps/h1;)I
    .locals 2

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;->e:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    array-length v0, v0

    const-string v1, "thumbnail_max_count"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;->e:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    array-length p0, p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailContainer;->e:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    array-length p0, p0

    return p0
.end method
