.class public final Lk2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/i;


# instance fields
.field public final synthetic a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 0

    iput-object p1, p0, Lk2/p;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 10

    iget-object p0, p0, Lk2/p;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->y:I

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->A:Landroidx/core/view/c0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/view/c0;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lk2/o;

    invoke-static {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c(Landroid/view/View;)Lk2/u;

    move-result-object v6

    iget v7, v5, Lk2/o;->a:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v4, 0x2

    if-eq v7, v4, :cond_1

    goto :goto_2

    :cond_1
    neg-int v4, p1

    int-to-float v4, v4

    iget v5, v5, Lk2/o;->b:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v6, v4}, Lk2/u;->b(I)Z

    goto :goto_2

    :cond_2
    neg-int v5, p1

    invoke-static {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c(Landroid/view/View;)Lk2/u;

    move-result-object v7

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lk2/o;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    iget v7, v7, Lk2/u;->b:I

    sub-int/2addr v9, v7

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v9, v4

    iget v4, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v4

    invoke-static {v5, v1, v9}, LH/a;->b(III)I

    move-result v4

    invoke-virtual {v6, v4}, Lk2/u;->b(I)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e()V

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/x;->i(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/x;->c(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    int-to-float v1, v1

    int-to-float v3, v2

    div-float/2addr v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/google/android/material/internal/a;->d:F

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v4, v1, v5, v1}, Lw/f;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/google/android/material/internal/a;->e:F

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    iget p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->y:I

    add-int/2addr p0, v2

    iput p0, v0, Lcom/google/android/material/internal/a;->f:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/a;->o(F)V

    return-void
.end method
