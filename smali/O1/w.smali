.class public final LO1/w;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final o:LO1/v;


# instance fields
.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Matrix;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public final g:F

.field public final h:I

.field public final i:LO1/m;

.field public final j:Landroid/widget/ProgressBar;

.field public k:Landroid/graphics/Bitmap;

.field public l:I

.field public m:I

.field public n:LO1/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LO1/v;

    invoke-direct {v0}, LO1/v;-><init>()V

    sput-object v0, LO1/w;->o:LO1/v;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LO1/m;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, LO1/w;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LO1/w;->e:Landroid/graphics/Matrix;

    iput-object p2, p0, LO1/w;->i:LO1/m;

    const p2, 0x7f080285

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, LO1/w;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700cf

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, LO1/w;->g:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, LO1/w;->h:I

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LO1/w;->j:Landroid/widget/ProgressBar;

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static a(LO1/w;I)V
    .locals 3

    iget v0, p0, LO1/w;->l:I

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iput p1, p0, LO1/w;->l:I

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    iget v1, p0, LO1/w;->m:I

    if-ne v1, v0, :cond_4

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    iget-object p1, p0, LO1/w;->j:Landroid/widget/ProgressBar;

    iget p0, p0, LO1/w;->l:I

    if-ne p0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object p0, p0, LO1/w;->n:LO1/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LO1/q;->run()V

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, LO1/w;->i:LO1/m;

    iget v0, v0, LO1/m;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, LO1/w;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, LO1/w;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, LO1/w;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v4, v2, v1

    mul-int v5, v0, v3

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    if-le v4, v5, :cond_1

    int-to-float v4, v1

    int-to-float v3, v3

    div-float/2addr v4, v3

    int-to-float v3, v0

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v3, v2

    mul-float/2addr v3, v6

    move v2, v7

    move v7, v3

    goto :goto_0

    :cond_1
    int-to-float v4, v0

    int-to-float v2, v2

    div-float/2addr v4, v2

    int-to-float v2, v1

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v2, v6

    :goto_0
    iget-object v3, p0, LO1/w;->e:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, p0, LO1/w;->e:Landroid/graphics/Matrix;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, LO1/w;->k:Landroid/graphics/Bitmap;

    iget-object v3, p0, LO1/w;->e:Landroid/graphics/Matrix;

    iget-object v4, p0, LO1/w;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v0

    int-to-float v3, v1

    iget v4, p0, LO1/w;->g:F

    iget-object v5, p0, LO1/w;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p0, LO1/w;->h:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, LO1/w;->f:Landroid/graphics/drawable/Drawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, LO1/w;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method
