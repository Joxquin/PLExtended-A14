.class public Landroidx/appcompat/widget/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public d:Landroid/util/TypedValue;

.field public e:Landroid/util/TypedValue;

.field public f:Landroid/util/TypedValue;

.field public g:Landroid/util/TypedValue;

.field public h:Landroid/util/TypedValue;

.field public i:Landroid/util/TypedValue;

.field public final j:Landroid/graphics/Rect;

.field public k:Le/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->j:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object p0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->k:Le/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->k:Le/t;

    if-eqz p0, :cond_4

    iget-object p0, p0, Le/t;->e:Le/D;

    iget-object v0, p0, Le/D;->s:Lk/m0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lk/m0;->n()V

    :cond_0
    iget-object v0, p0, Le/D;->x:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Le/D;->y:Le/s;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Le/D;->x:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Le/D;->x:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Le/D;->x:Landroid/widget/PopupWindow;

    :cond_2
    iget-object v0, p0, Le/D;->z:Landroidx/core/view/O;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/core/view/O;->b()V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le/D;->J(I)Le/C;

    move-result-object p0

    iget-object p0, p0, Le/C;->h:Lj/o;

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lj/o;->c(Z)V

    :cond_4
    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/high16 v8, -0x80000000

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v2, v8, :cond_4

    if-eqz v1, :cond_1

    iget-object v10, p0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v10, p0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    :goto_1
    if-eqz v10, :cond_4

    iget v11, v10, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_4

    if-ne v11, v7, :cond_2

    invoke-virtual {v10, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v10

    :goto_2
    float-to-int v10, v10

    goto :goto_3

    :cond_2
    if-ne v11, v6, :cond_3

    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v11

    int-to-float v11, v11

    invoke-virtual {v10, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v10

    goto :goto_2

    :cond_3
    move v10, v4

    :goto_3
    if-lez v10, :cond_4

    iget-object v11, p0, Landroidx/appcompat/widget/ContentFrameLayout;->j:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v11

    sub-int/2addr v10, v12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v10, v3

    goto :goto_4

    :cond_4
    move v10, v4

    :goto_4
    if-ne v5, v8, :cond_8

    if-eqz v1, :cond_5

    iget-object v5, p0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/util/TypedValue;

    goto :goto_5

    :cond_5
    iget-object v5, p0, Landroidx/appcompat/widget/ContentFrameLayout;->i:Landroid/util/TypedValue;

    :goto_5
    if-eqz v5, :cond_8

    iget v11, v5, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_8

    if-ne v11, v7, :cond_6

    invoke-virtual {v5, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    :goto_6
    float-to-int v5, v5

    goto :goto_7

    :cond_6
    if-ne v11, v6, :cond_7

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v11

    int-to-float v11, v11

    invoke-virtual {v5, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    goto :goto_6

    :cond_7
    move v5, v4

    :goto_7
    if-lez v5, :cond_8

    iget-object v11, p0, Landroidx/appcompat/widget/ContentFrameLayout;->j:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v11

    sub-int/2addr v5, v12

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    if-nez v10, :cond_d

    if-ne v2, v8, :cond_d

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    goto :goto_8

    :cond_9
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    :goto_8
    if-eqz v1, :cond_d

    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-eqz v2, :cond_d

    if-ne v2, v7, :cond_a

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    :goto_9
    float-to-int v0, v0

    goto :goto_a

    :cond_a
    if-ne v2, v6, :cond_b

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    goto :goto_9

    :cond_b
    move v0, v4

    :goto_a
    if-lez v0, :cond_c

    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->j:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    :cond_c
    if-ge p1, v0, :cond_d

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_b

    :cond_d
    move v3, v4

    :goto_b
    if-eqz v3, :cond_e

    invoke-super {p0, v5, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_e
    return-void
.end method
