.class public final Landroidx/recyclerview/widget/U;
.super Landroidx/recyclerview/widget/O;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/V;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/V;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/U;->a:Landroidx/recyclerview/widget/V;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/O;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    return p1
.end method

.method public final calculateTimeForScrolling(I)I
    .locals 1

    const/16 v0, 0x64

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/O;->calculateTimeForScrolling(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/y0;)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/U;->a:Landroidx/recyclerview/widget/V;

    iget-object v1, v0, Landroidx/recyclerview/widget/V;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/l0;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/V;->a(Landroidx/recyclerview/widget/l0;Landroid/view/View;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/U;->calculateTimeForScrolling(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-lez v2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/O;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iput v0, p2, Landroidx/recyclerview/widget/y0;->a:I

    iput p1, p2, Landroidx/recyclerview/widget/y0;->b:I

    iput v2, p2, Landroidx/recyclerview/widget/y0;->c:I

    iput-object p0, p2, Landroidx/recyclerview/widget/y0;->e:Landroid/view/animation/Interpolator;

    iput-boolean v1, p2, Landroidx/recyclerview/widget/y0;->f:Z

    :cond_0
    return-void
.end method
