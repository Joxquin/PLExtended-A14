.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final f:[I

.field public static final g:Lp/a;


# instance fields
.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1010031

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/cardview/widget/CardView;->f:[I

    new-instance v0, Lp/a;

    invoke-direct {v0}, Lp/a;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->g:Lp/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400d0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->e:Landroid/graphics/Rect;

    .line 6
    sget-object v4, Lo/a;->a:[I

    const v1, 0x7f140130

    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const v8, 0x7f140130

    .line 7
    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v1

    move v7, p3

    .line 8
    invoke-static/range {v2 .. v8}, Landroidx/core/view/H;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p1, 0x2

    .line 9
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 p3, 0x3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v3, Landroidx/cardview/widget/CardView;->f:[I

    invoke-virtual {p2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 12
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-array p2, p3, [F

    .line 14
    invoke-static {v3, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget p1, p2, p1

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060046

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060045

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 17
    :goto_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_1
    const/4 p2, 0x0

    .line 18
    invoke-virtual {v1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    const/4 v3, 0x4

    .line 19
    invoke-virtual {v1, v3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    const/4 v4, 0x5

    .line 20
    invoke-virtual {v1, v4, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    const/4 v4, 0x7

    .line 21
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x1

    .line 22
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v7, 0x8

    .line 23
    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    const/16 v8, 0xa

    .line 24
    invoke-virtual {v1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroid/graphics/Rect;->left:I

    const/16 v8, 0xc

    .line 25
    invoke-virtual {v1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroid/graphics/Rect;->top:I

    const/16 v8, 0xb

    .line 26
    invoke-virtual {v1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroid/graphics/Rect;->right:I

    const/16 v8, 0x9

    .line 27
    invoke-virtual {v1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    cmpl-float v0, v3, p2

    if-lez v0, :cond_2

    move p2, v3

    .line 28
    :cond_2
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 29
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 30
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    new-instance v0, Lp/b;

    invoke-direct {v0, p3, p1}, Lp/b;-><init>(FLandroid/content/res/ColorStateList;)V

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    invoke-virtual {p0, v6}, Landroid/view/View;->setClipToOutline(Z)V

    .line 34
    invoke-virtual {p0, v3}, Landroid/view/View;->setElevation(F)V

    .line 35
    iget p1, v0, Lp/b;->e:F

    cmpl-float p1, p2, p1

    if-nez p1, :cond_3

    .line 36
    iget-boolean p1, v0, Lp/b;->f:Z

    if-ne p1, v4, :cond_3

    iget-boolean p1, v0, Lp/b;->g:Z

    if-ne p1, v5, :cond_3

    goto :goto_2

    .line 37
    :cond_3
    iput p2, v0, Lp/b;->e:F

    .line 38
    iput-boolean v4, v0, Lp/b;->f:Z

    .line 39
    iput-boolean v5, v0, Lp/b;->g:Z

    const/4 p1, 0x0

    .line 40
    invoke-virtual {v0, p1}, Lp/b;->b(Landroid/graphics/Rect;)V

    .line 41
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_2
    if-nez v4, :cond_4

    .line 42
    iget-object p1, p0, Landroidx/cardview/widget/CardView;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    iget-object p1, p0, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v2

    iget p3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p1

    invoke-static {p0, p2, p3, v0, v2}, Landroidx/cardview/widget/CardView;->a(Landroidx/cardview/widget/CardView;IIII)V

    goto :goto_4

    .line 44
    :cond_4
    iget p1, v0, Lp/b;->e:F

    .line 45
    iget p2, v0, Lp/b;->a:F

    if-eqz v5, :cond_5

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 46
    sget-wide v6, Lp/c;->a:D

    sub-double/2addr v2, v6

    float-to-double v6, p2

    mul-double/2addr v2, v6

    add-double/2addr v2, v0

    double-to-float p3, v2

    goto :goto_3

    .line 47
    :cond_5
    sget p3, Lp/c;->b:I

    move p3, p1

    :goto_3
    float-to-double v0, p3

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    .line 49
    invoke-static {p1, p2, v5}, Lp/c;->a(FFZ)F

    move-result p1

    float-to-double p1, p1

    .line 50
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 51
    iget-object p2, p0, Landroidx/cardview/widget/CardView;->e:Landroid/graphics/Rect;

    invoke-virtual {p2, p3, p1, p3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    iget-object p2, p0, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p3

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-static {p0, v0, v1, p3, p1}, Landroidx/cardview/widget/CardView;->a(Landroidx/cardview/widget/CardView;IIII)V

    :goto_4
    return-void
.end method

.method public static synthetic a(Landroidx/cardview/widget/CardView;IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setMinimumHeight(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public final setMinimumWidth(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public final setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method
