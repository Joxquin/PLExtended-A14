.class public final Lf0/y;
.super Lf0/F;
.source "SourceFile"


# instance fields
.field public p:Lf0/j;

.field public q:Landroidx/slice/SliceItem;

.field public r:Landroidx/core/graphics/drawable/IconCompat;

.field public s:Ljava/util/Set;

.field public final t:I

.field public final u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lf0/F;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070048

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lf0/y;->u:I

    const v0, 0x7f070055

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lf0/y;->t:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lf0/y;->s:Ljava/util/Set;

    return-object p0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lf0/y;->p:Lf0/j;

    iput-object v0, p0, Lf0/y;->q:Landroidx/slice/SliceItem;

    iput-object v0, p0, Lf0/y;->r:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public final h(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lf0/y;->s:Ljava/util/Set;

    return-void
.end method

.method public final m(Lf0/j;)V
    .locals 9

    invoke-virtual {p0}, Lf0/y;->c()V

    iput-object p1, p0, Lf0/y;->p:Lf0/j;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf0/j;->e(Landroid/content/Context;)Ld0/a;

    move-result-object p1

    check-cast p1, Landroidx/slice/core/a;

    iget-object v0, p1, Landroidx/slice/core/a;->a:Landroidx/slice/SliceItem;

    iput-object v0, p0, Lf0/y;->q:Landroidx/slice/SliceItem;

    iget-object v0, p1, Landroidx/slice/core/a;->b:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v0, p0, Lf0/y;->r:Landroidx/core/graphics/drawable/IconCompat;

    iget p1, p1, Landroidx/slice/core/a;->c:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-object v2, p0, Lf0/y;->p:Lf0/j;

    iget-object v2, v2, Lf0/G;->b:Landroidx/slice/SliceItem;

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->d()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x1010435

    invoke-static {v4, v2}, Lf0/P;->b(ILandroid/content/Context;)I

    move-result v2

    :goto_2
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lf0/y;->r:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v5, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lf0/y;->r:Landroidx/core/graphics/drawable/IconCompat;

    const/16 v5, 0x11

    if-eqz v4, :cond_8

    if-eqz p1, :cond_5

    iget v4, p0, Lf0/y;->u:I

    goto :goto_3

    :cond_5
    iget v4, p0, Lf0/y;->t:I

    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lf0/y;->r:Landroidx/core/graphics/drawable/IconCompat;

    xor-int/2addr p1, v0

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroidx/core/graphics/drawable/IconCompat;->h(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_6

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_4

    :cond_6
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    :goto_4
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_7

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v1, v1, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    invoke-static {p1}, Lf0/P;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_5
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    goto :goto_6

    :cond_8
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :goto_6
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final performClick()Z
    .locals 6

    iget-object v0, p0, Lf0/y;->p:Lf0/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lf0/y;->q:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroidx/slice/SliceItem;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    iget-object v0, p0, Lf0/F;->d:Lf0/M;

    if-eqz v0, :cond_2

    new-instance v3, Lf0/c;

    const/4 v4, 0x3

    const/4 v5, -0x1

    invoke-direct {v3, v4, v2, v5, v1}, Lf0/c;-><init>(IIII)V

    iget-object v1, p0, Lf0/y;->q:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lf0/y;->p:Lf0/j;

    iget-object v1, p0, Lf0/G;->a:Landroidx/slice/SliceItem;

    :goto_0
    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->k(Landroidx/slice/SliceItem;Lf0/c;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "ShortcutView"

    const-string v1, "PendingIntent for slice cannot be sent"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return v2
.end method
