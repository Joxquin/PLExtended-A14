.class public final Lcom/android/systemui/animation/i;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public b:I

.field public final c:Landroid/graphics/Rect;

.field public final d:[F

.field public final e:[F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/i;->a:Landroid/graphics/drawable/Drawable;

    const/16 p1, 0xff

    iput p1, p0, Lcom/android/systemui/animation/i;->b:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/i;->c:Landroid/graphics/Rect;

    const/16 p1, 0x8

    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/animation/i;->d:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/systemui/animation/i;->e:[F

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;[F)V
    .locals 4

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-void

    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0, p1}, Lcom/android/systemui/animation/i;->a(Landroid/graphics/drawable/Drawable;[F)V

    :cond_1
    return-void

    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_3

    return-void

    :cond_3
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_4

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/animation/i;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/animation/i;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/systemui/animation/i;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/animation/i;->d:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/animation/i;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/android/systemui/animation/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/android/systemui/animation/i;->e:[F

    array-length v5, v4

    const-string v6, "destination"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr v5, v2

    invoke-static {v4, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/animation/i;->e:[F

    aput v1, v4, v2

    const/4 v5, 0x1

    aput v1, v4, v5

    const/4 v5, 0x2

    aput v1, v4, v5

    const/4 v5, 0x3

    aput v1, v4, v5

    const/4 v5, 0x4

    aput v1, v4, v5

    const/4 v5, 0x5

    aput v1, v4, v5

    const/4 v5, 0x6

    aput v1, v4, v5

    const/4 v5, 0x7

    aput v1, v4, v5

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/animation/i;->a:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/animation/i;->d:[F

    invoke-static {v1, v4}, Lcom/android/systemui/animation/i;->a(Landroid/graphics/drawable/Drawable;[F)V

    :cond_4
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/android/systemui/animation/i;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/systemui/animation/i;->d:[F

    aget p1, p1, v2

    cmpg-float p1, p1, v3

    if-ltz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/animation/i;->a:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/animation/i;->e:[F

    invoke-static {p1, p0}, Lcom/android/systemui/animation/i;->a(Landroid/graphics/drawable/Drawable;[F)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/animation/i;->b:I

    return p0
.end method

.method public final getOpacity()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/i;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/animation/i;->b:I

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return p0
.end method

.method public final setAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/animation/i;->b:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/systemui/animation/i;->b:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/i;->a:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void
.end method
