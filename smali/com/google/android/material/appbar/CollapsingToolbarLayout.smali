.class public Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public A:Landroidx/core/view/c0;

.field public B:I

.field public final C:Z

.field public D:I

.field public final E:Z

.field public d:Z

.field public final e:I

.field public f:Landroid/view/ViewGroup;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:Landroid/graphics/Rect;

.field public final n:Lcom/google/android/material/internal/a;

.field public final o:Z

.field public p:Z

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:Landroid/graphics/drawable/Drawable;

.field public s:I

.field public t:Z

.field public u:Landroid/animation/ValueAnimator;

.field public final v:J

.field public final w:I

.field public x:Lk2/p;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040123

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const v0, 0x7f1403a4

    .line 3
    invoke-static {p1, p2, p3, v0}, LH2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Z

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->w:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->B:I

    .line 8
    iput v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->D:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 10
    new-instance v9, Lcom/google/android/material/internal/a;

    invoke-direct {v9, p0}, Lcom/google/android/material/internal/a;-><init>(Landroid/view/View;)V

    iput-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    .line 11
    sget-object v2, Lj2/a;->e:Landroid/animation/TimeInterpolator;

    .line 12
    iput-object v2, v9, Lcom/google/android/material/internal/a;->W:Landroid/animation/TimeInterpolator;

    .line 13
    invoke-virtual {v9, v1}, Lcom/google/android/material/internal/a;->i(Z)V

    .line 14
    iput-boolean v1, v9, Lcom/google/android/material/internal/a;->J:Z

    .line 15
    new-instance v10, Lu2/a;

    invoke-direct {v10, v8}, Lu2/a;-><init>(Landroid/content/Context;)V

    .line 16
    sget-object v4, Li2/a;->g:[I

    const v6, 0x7f1403a4

    new-array v7, v1, [I

    move-object v2, v8

    move-object v3, p2

    move v5, p3

    .line 17
    invoke-static/range {v2 .. v7}, Lx2/r;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x4

    const v2, 0x800053

    .line 18
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 19
    iget v2, v9, Lcom/google/android/material/internal/a;->j:I

    if-eq v2, p3, :cond_0

    .line 20
    iput p3, v9, Lcom/google/android/material/internal/a;->j:I

    .line 21
    invoke-virtual {v9, v1}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_0
    const p3, 0x800013

    .line 22
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 23
    iget v2, v9, Lcom/google/android/material/internal/a;->k:I

    if-eq v2, p3, :cond_1

    .line 24
    iput p3, v9, Lcom/google/android/material/internal/a;->k:I

    .line 25
    invoke-virtual {v9, v1}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_1
    const/4 p3, 0x5

    .line 26
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:I

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:I

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:I

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->i:I

    const/16 p3, 0x8

    .line 27
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 28
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->i:I

    :cond_2
    const/4 p3, 0x7

    .line 29
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 30
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:I

    :cond_3
    const/16 p3, 0x9

    .line 31
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 32
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:I

    :cond_4
    const/4 p3, 0x6

    .line 33
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 34
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:I

    :cond_5
    const/16 p3, 0x14

    .line 35
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Z

    const/16 v2, 0x12

    .line 36
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 37
    iget-object v4, v9, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    .line 38
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 39
    :cond_6
    iput-object v2, v9, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    .line 40
    iput-object v3, v9, Lcom/google/android/material/internal/a;->H:Ljava/lang/CharSequence;

    .line 41
    iget-object v2, v9, Lcom/google/android/material/internal/a;->K:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 42
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    iput-object v3, v9, Lcom/google/android/material/internal/a;->K:Landroid/graphics/Bitmap;

    .line 44
    :cond_7
    invoke-virtual {v9, v1}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_8
    if-eqz p3, :cond_9

    .line 45
    iget-object p3, v9, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_9
    move-object p3, v3

    .line 46
    :goto_0
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const p3, 0x7f140225

    .line 47
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/a;->m(I)V

    const p3, 0x7f140210

    .line 48
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/a;->j(I)V

    const/16 p3, 0xa

    .line 49
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 50
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 51
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/a;->m(I)V

    .line 52
    :cond_a
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 53
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 54
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/a;->j(I)V

    :cond_b
    const/16 p3, 0x16

    .line 55
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v4, 0x3

    if-eqz v2, :cond_f

    .line 56
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-eqz p3, :cond_e

    if-eq p3, p1, :cond_d

    if-eq p3, v4, :cond_c

    .line 57
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 58
    :cond_c
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 59
    :cond_d
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 60
    :cond_e
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 61
    :goto_1
    iput-object p3, v9, Lcom/google/android/material/internal/a;->F:Landroid/text/TextUtils$TruncateAt;

    .line 62
    invoke-virtual {v9, v1}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_f
    const/16 p3, 0xb

    .line 63
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 64
    invoke-static {v8, p2, p3}, LA2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 65
    iget-object v2, v9, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    if-eq v2, p3, :cond_10

    .line 66
    iput-object p3, v9, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    .line 67
    invoke-virtual {v9, v1}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_10
    const/4 p3, 0x2

    .line 68
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 69
    invoke-static {v8, p2, p3}, LA2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 70
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/a;->k(Landroid/content/res/ColorStateList;)V

    :cond_11
    const/16 p3, 0x10

    .line 71
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->w:I

    const/16 p3, 0xe

    .line 72
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 73
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 74
    iget v2, v9, Lcom/google/android/material/internal/a;->n0:I

    if-eq p3, v2, :cond_13

    .line 75
    iput p3, v9, Lcom/google/android/material/internal/a;->n0:I

    .line 76
    iget-object p3, v9, Lcom/google/android/material/internal/a;->K:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_12

    .line 77
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    iput-object v3, v9, Lcom/google/android/material/internal/a;->K:Landroid/graphics/Bitmap;

    .line 79
    :cond_12
    invoke-virtual {v9, v1}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_13
    const/16 p3, 0x15

    .line 80
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 81
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 82
    invoke-static {v8, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    .line 83
    iput-object p3, v9, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    .line 84
    invoke-virtual {v9, v1}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_14
    const/16 p3, 0xf

    const/16 v2, 0x258

    .line 85
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    int-to-long v5, p3

    iput-wide v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->v:J

    .line 86
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d(Landroid/graphics/drawable/Drawable;)V

    const/16 p3, 0x11

    .line 87
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 88
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    if-eq v2, p3, :cond_1a

    if-eqz v2, :cond_15

    .line 89
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_15
    if-eqz p3, :cond_16

    .line 90
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_16
    iput-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_19

    .line 91
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p3

    if-eqz p3, :cond_17

    .line 92
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 93
    :cond_17
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    .line 94
    invoke-static {p0}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result v2

    .line 95
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 96
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_18

    move v2, p1

    goto :goto_2

    :cond_18
    move v2, v1

    :goto_2
    invoke-virtual {p3, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 97
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 98
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 99
    :cond_19
    sget-object p3, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    .line 100
    invoke-static {p0}, Landroidx/core/view/x;->i(Landroid/view/View;)V

    :cond_1a
    const/16 p3, 0x13

    .line 101
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 102
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->z:I

    if-ne p3, p1, :cond_1b

    move p3, p1

    goto :goto_3

    :cond_1b
    move p3, v1

    .line 103
    :goto_3
    iput-boolean p3, v9, Lcom/google/android/material/internal/a;->c:Z

    .line 104
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 105
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_1d

    .line 106
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 107
    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->z:I

    if-ne v3, p1, :cond_1c

    goto :goto_4

    :cond_1c
    move p1, v1

    :goto_4
    if-eqz p1, :cond_1d

    .line 108
    iput-boolean v1, v2, Lcom/google/android/material/appbar/AppBarLayout;->n:Z

    :cond_1d
    if-eqz p3, :cond_1e

    .line 109
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1e

    .line 110
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0700ff

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 111
    iget p3, v10, Lu2/a;->d:I

    .line 112
    invoke-virtual {v10, p1, p3}, Lu2/a;->a(FI)I

    move-result p1

    .line 113
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d(Landroid/graphics/drawable/Drawable;)V

    :cond_1e
    const/16 p1, 0x17

    .line 114
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e:I

    const/16 p1, 0xd

    .line 115
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->C:Z

    const/16 p1, 0xc

    .line 116
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->E:Z

    .line 117
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 119
    new-instance p1, Lk2/m;

    invoke-direct {p1, p0}, Lk2/m;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    sget-object p2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    .line 120
    invoke-static {p0, p1}, Landroidx/core/view/D;->l(Landroid/view/View;Landroidx/core/view/r;)V

    return-void
.end method

.method public static c(Landroid/view/View;)Lk2/u;
    .locals 2

    const v0, 0x7f0a03c5

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/u;

    if-nez v1, :cond_0

    new-instance v1, Lk2/u;

    invoke-direct {v1, p0}, Lk2/u;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_0
    if-eq v3, p0, :cond_2

    if-eqz v3, :cond_2

    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_1

    move-object v1, v3

    check-cast v1, Landroid/view/View;

    :cond_1
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g:Landroid/view/View;

    :cond_3
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-nez v1, :cond_8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_7

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroidx/appcompat/widget/Toolbar;

    if-nez v6, :cond_5

    instance-of v6, v5, Landroid/widget/Toolbar;

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v6, v3

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_6

    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/View;

    if-nez v0, :cond_a

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/View;

    :cond_a
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_b
    iput-boolean v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Z

    return-void
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->w:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->B:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->D:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->A:Landroidx/core/view/c0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/core/view/c0;->d()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/x;->c(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lk2/o;

    return p0
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->z:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    :cond_3
    invoke-virtual {v1, v4, v4, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    sget-object p1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/x;->i(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a()V

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->z:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    iget v2, v0, Lcom/google/android/material/internal/a;->b:F

    iget v0, v0, Lcom/google/android/material/internal/a;->e:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    invoke-virtual {v2, p1}, Lcom/google/android/material/internal/a;->d(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->d(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->A:Landroidx/core/view/c0;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/core/view/c0;->d()I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    if-lez v0, :cond_5

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->y:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->y:I

    sub-int/2addr v0, v5

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g:Landroid/view/View;

    if-eqz v3, :cond_1

    if-ne v3, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    if-ne p2, v3, :cond_2

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->z:I

    if-ne v5, v1, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    if-eqz v5, :cond_4

    if-eqz p2, :cond_4

    iget-boolean v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Z

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    :cond_4
    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    if-nez p0, :cond_7

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :cond_7
    :goto_5
    return v1
.end method

.method public final drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/a;->q([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->y:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/A;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->t:Z

    if-eq v1, v0, :cond_b

    const/16 v1, 0xff

    if-eqz v2, :cond_7

    if-eqz v0, :cond_3

    move v3, v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a()V

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_5

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    if-le v3, v2, :cond_4

    sget-object v2, Lj2/a;->c:LU/a;

    goto :goto_2

    :cond_4
    sget-object v2, Lj2/a;->d:LU/c;

    :goto_2
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:Landroid/animation/ValueAnimator;

    new-instance v2, Lk2/n;

    invoke-direct {v2, p0}, Lk2/n;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->v:J

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    move v3, v1

    :cond_8
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    if-eq v3, v1, :cond_a

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    invoke-static {v1}, Landroidx/core/view/x;->i(Landroid/view/View;)V

    :cond_9
    iput v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    invoke-static {p0}, Landroidx/core/view/x;->i(Landroid/view/View;)V

    :cond_a
    :goto_4
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->t:Z

    :cond_b
    return-void
.end method

.method public final f(ZIIII)V
    .locals 14

    move-object v0, p0

    move v1, p1

    iget-boolean v2, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Z

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/View;

    if-eqz v2, :cond_e

    sget-object v3, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v2}, Landroidx/core/view/A;->b(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_e

    :cond_1
    invoke-static {p0}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result v2

    if-ne v2, v4, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iget-object v5, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g:Landroid/view/View;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    :goto_2
    invoke-static {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c(Landroid/view/View;)Lk2/u;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lk2/o;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    iget v6, v6, Lk2/u;->b:I

    sub-int/2addr v8, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v8, v5

    iget v5, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v5

    iget-object v5, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/View;

    iget-object v6, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:Landroid/graphics/Rect;

    invoke-static {p0, v5, v6}, Lx2/e;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    instance-of v6, v5, Landroidx/appcompat/widget/Toolbar;

    if-eqz v6, :cond_4

    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    iget v6, v5, Landroidx/appcompat/widget/Toolbar;->s:I

    iget v7, v5, Landroidx/appcompat/widget/Toolbar;->t:I

    iget v9, v5, Landroidx/appcompat/widget/Toolbar;->u:I

    iget v5, v5, Landroidx/appcompat/widget/Toolbar;->v:I

    goto :goto_3

    :cond_4
    instance-of v6, v5, Landroid/widget/Toolbar;

    if-eqz v6, :cond_5

    check-cast v5, Landroid/widget/Toolbar;

    invoke-virtual {v5}, Landroid/widget/Toolbar;->getTitleMarginStart()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/Toolbar;->getTitleMarginEnd()I

    move-result v7

    invoke-virtual {v5}, Landroid/widget/Toolbar;->getTitleMarginTop()I

    move-result v9

    invoke-virtual {v5}, Landroid/widget/Toolbar;->getTitleMarginBottom()I

    move-result v5

    goto :goto_3

    :cond_5
    move v5, v3

    move v6, v5

    move v7, v6

    move v9, v7

    :goto_3
    iget-object v10, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    iget-object v11, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_6

    move v13, v7

    goto :goto_4

    :cond_6
    move v13, v6

    :goto_4
    add-int/2addr v12, v13

    iget v13, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v8

    add-int/2addr v13, v9

    iget v9, v11, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    move v6, v7

    :goto_5
    sub-int/2addr v9, v6

    iget v6, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v8

    sub-int/2addr v6, v5

    iget-object v5, v10, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-ne v7, v12, :cond_8

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-ne v7, v13, :cond_8

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-ne v7, v9, :cond_8

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-ne v7, v6, :cond_8

    move v7, v4

    goto :goto_6

    :cond_8
    move v7, v3

    :goto_6
    if-nez v7, :cond_9

    invoke-virtual {v5, v12, v13, v9, v6}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v4, v10, Lcom/google/android/material/internal/a;->S:Z

    :cond_9
    iget-object v5, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    if-eqz v2, :cond_a

    iget v6, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:I

    goto :goto_7

    :cond_a
    iget v6, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->i:I

    :goto_7
    iget-object v7, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:I

    add-int/2addr v7, v8

    sub-int v8, p4, p2

    if-eqz v2, :cond_b

    iget v2, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->i:I

    goto :goto_8

    :cond_b
    iget v2, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:I

    :goto_8
    sub-int/2addr v8, v2

    sub-int v2, p5, p3

    iget v9, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:I

    sub-int/2addr v2, v9

    iget-object v9, v5, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    if-ne v10, v6, :cond_c

    iget v10, v9, Landroid/graphics/Rect;->top:I

    if-ne v10, v7, :cond_c

    iget v10, v9, Landroid/graphics/Rect;->right:I

    if-ne v10, v8, :cond_c

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    if-ne v10, v2, :cond_c

    move v3, v4

    :cond_c
    if-nez v3, :cond_d

    invoke-virtual {v9, v6, v7, v8, v2}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v4, v5, Lcom/google/android/material/internal/a;->S:Z

    :cond_d
    iget-object v0, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_e
    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    iget-object v0, v0, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->A:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroid/widget/Toolbar;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    if-eqz v0, :cond_2

    iget-object v3, v1, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    iput-object v0, v1, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/google/android/material/internal/a;->H:Ljava/lang/CharSequence;

    iget-object v0, v1, Lcom/google/android/material/internal/a;->K:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, v1, Lcom/google/android/material/internal/a;->K:Landroid/graphics/Bitmap;

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    iget-object v2, v0, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    :cond_5
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    new-instance p0, Lk2/o;

    invoke-direct {p0}, Lk2/o;-><init>()V

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2
    new-instance p0, Lk2/o;

    invoke-direct {p0}, Lk2/o;-><init>()V

    return-object p0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3
    new-instance p0, Lk2/o;

    invoke-direct {p0, p1}, Lk2/o;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lk2/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->z:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iput-boolean v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->n:Z

    :cond_1
    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/x;->a(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->x:Lk2/p;

    if-nez v1, :cond_2

    new-instance v1, Lk2/p;

    invoke-direct {v1, p0}, Lk2/p;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->x:Lk2/p;

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->x:Lk2/p;

    iget-object v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->k:Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->k:Ljava/util/List;

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->k:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p0}, Landroidx/core/view/B;->c(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/a;->h(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->x:Lk2/p;

    if-eqz v1, :cond_0

    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->A:Landroidx/core/view/c0;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/core/view/c0;->d()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, Landroidx/core/view/x;->a(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, p1, :cond_0

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c(Landroid/view/View;)Lk2/u;

    move-result-object v2

    iget-object v3, v2, Lk2/u;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v2, Lk2/u;->b:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v2, Lk2/u;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f(ZIIII)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g()V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c(Landroid/view/View;)Lk2/u;

    move-result-object p2

    invoke-virtual {p2}, Lk2/u;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a()V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->A:Landroidx/core/view/c0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/view/c0;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->C:Z

    if-eqz p2, :cond_2

    :cond_1
    if-lez v0, :cond_2

    iput v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->B:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_2
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->E:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    iget p2, p2, Lcom/google/android/material/internal/a;->n0:I

    const/4 v0, 0x1

    if-le p2, v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    const/4 v3, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f(ZIIII)V

    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Lcom/google/android/material/internal/a;

    iget v2, p2, Lcom/google/android/material/internal/a;->p:I

    if-le v2, v0, :cond_3

    iget-object v3, p2, Lcom/google/android/material/internal/a;->U:Landroid/text/TextPaint;

    iget v4, p2, Lcom/google/android/material/internal/a;->l:F

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v4, p2, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget p2, p2, Lcom/google/android/material/internal/a;->g0:F

    invoke-virtual {v3, p2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result p2

    neg-float p2, p2

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr v2, v0

    mul-int/2addr v2, p2

    iput v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->D:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->D:I

    add-int/2addr p2, v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g:Landroid/view/View;

    if-eqz p2, :cond_6

    if-ne p2, p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v0

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p2, p1

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_4

    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_7

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v0

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p2

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_2

    iget-object p4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->z:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Z

    if-eqz p0, :cond_1

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p2

    :cond_1
    invoke-virtual {p3, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-void
.end method

.method public final setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_2

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
