.class public Lcom/google/android/material/button/MaterialButton;
.super Lk/u;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements LC2/y;


# static fields
.field public static final t:[I

.field public static final u:[I


# instance fields
.field public final g:Lo2/d;

.field public final h:Ljava/util/LinkedHashSet;

.field public i:Lo2/i;

.field public final j:Landroid/graphics/PorterDuff$Mode;

.field public final k:Landroid/content/res/ColorStateList;

.field public l:Landroid/graphics/drawable/Drawable;

.field public final m:I

.field public n:I

.field public o:I

.field public final p:I

.field public q:Z

.field public r:Z

.field public final s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x101009f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->t:[I

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->u:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040382

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const v9, 0x7f140453

    move-object/from16 v1, p1

    .line 3
    invoke-static {v1, v7, v8, v9}, LH2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lk/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/button/MaterialButton;->h:Ljava/util/LinkedHashSet;

    const/4 v10, 0x0

    .line 5
    iput-boolean v10, v0, Lcom/google/android/material/button/MaterialButton;->q:Z

    .line 6
    iput-boolean v10, v0, Lcom/google/android/material/button/MaterialButton;->r:Z

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 8
    sget-object v3, Li2/a;->m:[I

    const v5, 0x7f140453

    new-array v6, v10, [I

    move-object v1, v11

    move-object/from16 v2, p2

    move/from16 v4, p3

    .line 9
    invoke-static/range {v1 .. v6}, Lx2/r;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0xc

    .line 10
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/button/MaterialButton;->p:I

    const/16 v3, 0xf

    const/4 v4, -0x1

    .line 11
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 12
    invoke-static {v3, v5}, Lx2/w;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/PorterDuff$Mode;

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v5, 0xe

    .line 14
    invoke-static {v3, v1, v5}, LA2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/button/MaterialButton;->k:Landroid/content/res/ColorStateList;

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v5, 0xa

    invoke-static {v3, v1, v5}, LA2/d;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xb

    const/4 v5, 0x1

    .line 16
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/button/MaterialButton;->s:I

    const/16 v3, 0xd

    .line 17
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/button/MaterialButton;->m:I

    .line 18
    invoke-static {v11, v7, v8, v9}, LC2/n;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)LC2/m;

    move-result-object v3

    .line 19
    new-instance v6, LC2/n;

    invoke-direct {v6, v3}, LC2/n;-><init>(LC2/m;)V

    .line 20
    new-instance v3, Lo2/d;

    invoke-direct {v3, v0, v6}, Lo2/d;-><init>(Lcom/google/android/material/button/MaterialButton;LC2/n;)V

    iput-object v3, v0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    .line 21
    invoke-virtual {v1, v5, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v3, Lo2/d;->c:I

    const/4 v6, 0x2

    .line 22
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v3, Lo2/d;->d:I

    const/4 v6, 0x3

    .line 23
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v3, Lo2/d;->e:I

    const/4 v6, 0x4

    .line 24
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v3, Lo2/d;->f:I

    const/16 v6, 0x8

    .line 25
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 26
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 27
    iget-object v7, v3, Lo2/d;->b:LC2/n;

    int-to-float v6, v6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v8, LC2/m;

    invoke-direct {v8, v7}, LC2/m;-><init>(LC2/n;)V

    .line 29
    new-instance v7, LC2/a;

    invoke-direct {v7, v6}, LC2/a;-><init>(F)V

    iput-object v7, v8, LC2/m;->e:LC2/c;

    .line 30
    new-instance v7, LC2/a;

    invoke-direct {v7, v6}, LC2/a;-><init>(F)V

    iput-object v7, v8, LC2/m;->f:LC2/c;

    .line 31
    new-instance v7, LC2/a;

    invoke-direct {v7, v6}, LC2/a;-><init>(F)V

    iput-object v7, v8, LC2/m;->g:LC2/c;

    .line 32
    new-instance v7, LC2/a;

    invoke-direct {v7, v6}, LC2/a;-><init>(F)V

    iput-object v7, v8, LC2/m;->h:LC2/c;

    .line 33
    new-instance v6, LC2/n;

    invoke-direct {v6, v8}, LC2/n;-><init>(LC2/m;)V

    .line 34
    invoke-virtual {v3, v6}, Lo2/d;->c(LC2/n;)V

    :cond_0
    const/16 v6, 0x14

    .line 35
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v3, Lo2/d;->g:I

    const/4 v6, 0x7

    .line 36
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 37
    invoke-static {v6, v7}, Lx2/w;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v3, Lo2/d;->h:Landroid/graphics/PorterDuff$Mode;

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x6

    .line 39
    invoke-static {v6, v1, v7}, LA2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v3, Lo2/d;->i:Landroid/content/res/ColorStateList;

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x13

    .line 41
    invoke-static {v6, v1, v7}, LA2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v3, Lo2/d;->j:Landroid/content/res/ColorStateList;

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x10

    .line 43
    invoke-static {v6, v1, v7}, LA2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v3, Lo2/d;->k:Landroid/content/res/ColorStateList;

    const/4 v6, 0x5

    .line 44
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v3, Lo2/d;->o:Z

    const/16 v6, 0x9

    .line 45
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v3, Lo2/d;->r:I

    const/16 v6, 0x15

    .line 46
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v3, Lo2/d;->p:Z

    .line 47
    sget-object v6, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    .line 48
    invoke-static/range {p0 .. p0}, Landroidx/core/view/y;->e(Landroid/view/View;)I

    move-result v6

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v7

    .line 50
    invoke-static/range {p0 .. p0}, Landroidx/core/view/y;->d(Landroid/view/View;)I

    move-result v8

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v9

    .line 52
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 53
    iput-boolean v5, v3, Lo2/d;->n:Z

    .line 54
    iget-object v4, v3, Lo2/d;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Lcom/google/android/material/button/MaterialButton;->f(Landroid/content/res/ColorStateList;)V

    .line 55
    iget-object v4, v3, Lo2/d;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4}, Lcom/google/android/material/button/MaterialButton;->g(Landroid/graphics/PorterDuff$Mode;)V

    move v4, v10

    goto/16 :goto_2

    .line 56
    :cond_1
    new-instance v11, LC2/i;

    iget-object v12, v3, Lo2/d;->b:LC2/n;

    invoke-direct {v11, v12}, LC2/i;-><init>(LC2/n;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 58
    invoke-virtual {v11, v12}, LC2/i;->j(Landroid/content/Context;)V

    .line 59
    iget-object v12, v3, Lo2/d;->i:Landroid/content/res/ColorStateList;

    .line 60
    invoke-virtual {v11, v12}, LC2/i;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 61
    iget-object v12, v3, Lo2/d;->h:Landroid/graphics/PorterDuff$Mode;

    if-eqz v12, :cond_2

    .line 62
    invoke-virtual {v11, v12}, LC2/i;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 63
    :cond_2
    iget v12, v3, Lo2/d;->g:I

    int-to-float v12, v12

    iget-object v13, v3, Lo2/d;->j:Landroid/content/res/ColorStateList;

    .line 64
    iget-object v14, v11, LC2/i;->d:LC2/h;

    iput v12, v14, LC2/h;->k:F

    .line 65
    invoke-virtual {v11}, LC2/i;->invalidateSelf()V

    .line 66
    iget-object v12, v11, LC2/i;->d:LC2/h;

    iget-object v14, v12, LC2/h;->d:Landroid/content/res/ColorStateList;

    if-eq v14, v13, :cond_3

    .line 67
    iput-object v13, v12, LC2/h;->d:Landroid/content/res/ColorStateList;

    .line 68
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v12

    invoke-virtual {v11, v12}, LC2/i;->onStateChange([I)Z

    .line 69
    :cond_3
    new-instance v12, LC2/i;

    iget-object v13, v3, Lo2/d;->b:LC2/n;

    invoke-direct {v12, v13}, LC2/i;-><init>(LC2/n;)V

    .line 70
    invoke-virtual {v12, v10}, LC2/i;->setTint(I)V

    .line 71
    iget v13, v3, Lo2/d;->g:I

    int-to-float v13, v13

    .line 72
    iget-boolean v14, v3, Lo2/d;->m:Z

    if-eqz v14, :cond_4

    const v14, 0x7f040146

    .line 73
    invoke-static {v0, v14}, Ls2/a;->b(Landroid/view/View;I)I

    move-result v14

    goto :goto_0

    :cond_4
    move v14, v10

    .line 74
    :goto_0
    iget-object v15, v12, LC2/i;->d:LC2/h;

    iput v13, v15, LC2/h;->k:F

    .line 75
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    .line 76
    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 77
    iget-object v14, v12, LC2/i;->d:LC2/h;

    iget-object v15, v14, LC2/h;->d:Landroid/content/res/ColorStateList;

    if-eq v15, v13, :cond_5

    .line 78
    iput-object v13, v14, LC2/h;->d:Landroid/content/res/ColorStateList;

    .line 79
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v13

    invoke-virtual {v12, v13}, LC2/i;->onStateChange([I)Z

    .line 80
    :cond_5
    new-instance v13, LC2/i;

    iget-object v14, v3, Lo2/d;->b:LC2/n;

    invoke-direct {v13, v14}, LC2/i;-><init>(LC2/n;)V

    iput-object v13, v3, Lo2/d;->l:LC2/i;

    .line 81
    invoke-virtual {v13, v4}, LC2/i;->setTint(I)V

    .line 82
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    iget-object v13, v3, Lo2/d;->k:Landroid/content/res/ColorStateList;

    .line 83
    sget v14, Lcom/google/android/material/ripple/a;->a:I

    if-eqz v13, :cond_6

    goto :goto_1

    .line 84
    :cond_6
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 85
    :goto_1
    new-instance v15, Landroid/graphics/drawable/LayerDrawable;

    filled-new-array {v12, v11}, [Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v15, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 86
    new-instance v11, Landroid/graphics/drawable/InsetDrawable;

    iget v12, v3, Lo2/d;->c:I

    iget v14, v3, Lo2/d;->e:I

    iget v5, v3, Lo2/d;->d:I

    iget v10, v3, Lo2/d;->f:I

    move/from16 v17, v14

    move-object v14, v11

    move/from16 v16, v12

    move/from16 v18, v5

    move/from16 v19, v10

    invoke-direct/range {v14 .. v19}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 87
    iget-object v5, v3, Lo2/d;->l:LC2/i;

    invoke-direct {v4, v13, v11, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, v3, Lo2/d;->q:Landroid/graphics/drawable/LayerDrawable;

    .line 88
    invoke-virtual {v0, v4}, Lcom/google/android/material/button/MaterialButton;->e(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    .line 89
    invoke-virtual {v3, v4}, Lo2/d;->b(Z)LC2/i;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 90
    iget v10, v3, Lo2/d;->r:I

    int-to-float v10, v10

    invoke-virtual {v5, v10}, LC2/i;->k(F)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 92
    :cond_7
    :goto_2
    iget v5, v3, Lo2/d;->c:I

    add-int/2addr v6, v5

    iget v5, v3, Lo2/d;->e:I

    add-int/2addr v7, v5

    iget v5, v3, Lo2/d;->d:I

    add-int/2addr v8, v5

    iget v3, v3, Lo2/d;->f:I

    add-int/2addr v9, v3

    .line 93
    invoke-static {v0, v6, v7, v8, v9}, Landroidx/core/view/y;->h(Landroid/view/View;IIII)V

    .line 94
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 96
    iget-object v1, v0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    const/4 v10, 0x1

    goto :goto_3

    :cond_8
    move v10, v4

    :goto_3
    invoke-virtual {v0, v10}, Lcom/google/android/material/button/MaterialButton;->h(Z)V

    return-void
.end method


# virtual methods
.method public final b(LC2/n;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    invoke-virtual {p0, p1}, Lo2/d;->c(LC2/n;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lo2/d;->n:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()V
    .locals 5

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_2
    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v2

    :goto_3
    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    const/16 v3, 0x10

    if-eq v0, v3, :cond_6

    const/16 v3, 0x20

    if-ne v0, v3, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lk/u;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final f(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    iget-object v0, p0, Lo2/d;->i:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lo2/d;->i:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lo2/d;->b(Z)LC2/i;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lo2/d;->b(Z)LC2/i;

    move-result-object p1

    iget-object p0, p0, Lo2/d;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, LC2/i;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lk/u;->d:Lk/t;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lk/t;->h(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    iget-object v0, p0, Lo2/d;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lo2/d;->h:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lo2/d;->b(Z)LC2/i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo2/d;->h:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lo2/d;->b(Z)LC2/i;

    move-result-object p1

    iget-object p0, p0, Lo2/d;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0}, LC2/i;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lk/u;->d:Lk/t;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lk/t;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    iget-object p0, p0, Lo2/d;->i:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lk/u;->d:Lk/t;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk/t;->b()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    iget-object p0, p0, Lo2/d;->h:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lk/u;->d:Lk/t;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk/t;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final h(Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    add-int/2addr v0, v4

    add-int/2addr v2, v5

    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->d()V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v2, p1, v0

    aget-object v3, p1, v1

    const/4 v4, 0x2

    aget-object p1, p1, v4

    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    if-eq v5, v1, :cond_6

    if-ne v5, v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v0

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v1

    :goto_3
    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    if-ne v2, v4, :cond_e

    :cond_7
    const/4 v2, 0x3

    if-eq v5, v2, :cond_9

    const/4 v2, 0x4

    if-ne v5, v2, :cond_8

    goto :goto_4

    :cond_8
    move v2, v0

    goto :goto_5

    :cond_9
    :goto_4
    move v2, v1

    :goto_5
    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_e

    :cond_a
    const/16 p1, 0x10

    if-eq v5, p1, :cond_c

    const/16 p1, 0x20

    if-ne v5, p1, :cond_b

    goto :goto_6

    :cond_b
    move p1, v0

    goto :goto_7

    :cond_c
    :goto_6
    move p1, v1

    :goto_7
    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    if-eq v3, p1, :cond_d

    goto :goto_8

    :cond_d
    move v1, v0

    :cond_e
    :goto_8
    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->d()V

    :cond_f
    return-void
.end method

.method public final i(II)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_e

    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v3

    :goto_1
    const/4 v5, 0x4

    const/4 v6, 0x3

    if-nez v4, :cond_c

    if-eq v0, v6, :cond_4

    if-ne v0, v5, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v3

    :goto_3
    if-eqz v4, :cond_5

    goto/16 :goto_7

    :cond_5
    const/16 p1, 0x10

    if-eq v0, p1, :cond_7

    const/16 v4, 0x20

    if-ne v0, v4, :cond_6

    goto :goto_4

    :cond_6
    move v4, v2

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v3

    :goto_5
    if-eqz v4, :cond_1b

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    if-ne v0, p1, :cond_8

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->h(Z)V

    return-void

    :cond_8
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    :cond_9
    invoke-virtual {p0}, Landroid/widget/Button;->getLineCount()I

    move-result v0

    if-le v0, v3, :cond_a

    invoke-virtual {p0}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    invoke-interface {v4, v3, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_6
    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/2addr p2, v1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    if-eq p2, p1, :cond_1b

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->h(Z)V

    goto/16 :goto_c

    :cond_c
    :goto_7
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    invoke-virtual {p0}, Landroid/widget/Button;->getTextAlignment()I

    move-result p2

    if-eq p2, v3, :cond_f

    const/4 v0, 0x6

    if-eq p2, v0, :cond_e

    if-eq p2, v6, :cond_e

    if-eq p2, v5, :cond_d

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_d
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_e
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Landroid/widget/Button;->getGravity()I

    move-result p2

    const v0, 0x800007

    and-int/2addr p2, v0

    if-eq p2, v3, :cond_11

    const/4 v0, 0x5

    if-eq p2, v0, :cond_10

    const v0, 0x800005

    if-eq p2, v0, :cond_10

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_10
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_11
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_8
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    if-eq v0, v3, :cond_1c

    if-eq v0, v6, :cond_1c

    if-ne v0, v1, :cond_12

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq p2, v1, :cond_1c

    :cond_12
    if-ne v0, v5, :cond_13

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_13

    goto/16 :goto_d

    :cond_13
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :cond_14
    invoke-virtual {p0}, Landroid/widget/Button;->getLineCount()I

    move-result v1

    move v4, v2

    move v6, v4

    :goto_9
    if-ge v4, v1, :cond_16

    invoke-virtual {p0}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v9

    if-eqz v9, :cond_15

    invoke-virtual {p0}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v9

    invoke-interface {v9, v7, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_15
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_16
    sub-int/2addr p1, v6

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/y;->d(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    sub-int/2addr p1, v0

    invoke-static {p0}, Landroidx/core/view/y;->e(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_17

    div-int/lit8 p1, p1, 0x2

    :cond_17
    invoke-static {p0}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result p2

    if-ne p2, v3, :cond_18

    move p2, v3

    goto :goto_a

    :cond_18
    move p2, v2

    :goto_a
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    if-ne v0, v5, :cond_19

    goto :goto_b

    :cond_19
    move v3, v2

    :goto_b
    if-eq p2, v3, :cond_1a

    neg-int p1, p1

    :cond_1a
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    if-eq p2, p1, :cond_1b

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->h(Z)V

    :cond_1b
    :goto_c
    return-void

    :cond_1c
    :goto_d
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->h(Z)V

    :cond_1d
    :goto_e
    return-void
.end method

.method public final isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo2/d;->b(Z)LC2/i;

    move-result-object v0

    invoke-static {p0, v0}, LC2/j;->b(Landroid/view/View;LC2/i;)V

    :cond_0
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lo2/d;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/material/button/MaterialButton;->t:[I

    invoke-static {p1, v0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/material/button/MaterialButton;->u:[I

    invoke-static {p1, p0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lk/u;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lo2/d;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-class v0, Landroid/widget/CompoundButton;

    goto :goto_1

    :cond_1
    const-class v0, Landroid/widget/Button;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Lk/u;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lo2/d;->o:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const-class v0, Landroid/widget/CompoundButton;

    goto :goto_1

    :cond_1
    const-class v0, Landroid/widget/Button;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lo2/d;->o:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/Button;->isClickable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lk/u;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->i(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lo2/c;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lo2/c;

    iget-object v0, p1, LP/c;->d:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lo2/c;->f:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lo2/c;

    invoke-direct {v1, v0}, Lo2/c;-><init>(Landroid/os/Parcelable;)V

    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    iput-boolean p0, v1, Lo2/c;->f:Z

    return-object v1
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lk/u;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->i(II)V

    return-void
.end method

.method public final performClick()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    iget-boolean v0, v0, Lo2/d;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result p0

    return p0
.end method

.method public final refreshDrawableState()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Button;->refreshDrawableState()V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo2/d;->b(Z)LC2/i;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lo2/d;->b(Z)LC2/i;

    move-result-object p0

    invoke-virtual {p0, p1}, LC2/i;->setTint(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const-string v0, "MaterialButton"

    const-string v1, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo2/d;->n:Z

    iget-object v1, v0, Lo2/d;->i:Landroid/content/res/ColorStateList;

    iget-object v2, v0, Lo2/d;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2, v1}, Lcom/google/android/material/button/MaterialButton;->f(Landroid/content/res/ColorStateList;)V

    iget-object v0, v0, Lo2/d;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->g(Landroid/graphics/PorterDuff$Mode;)V

    invoke-super {p0, p1}, Lk/u;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lk/u;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lf/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->f(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->g(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lo2/d;->o:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    if-eq v0, p1, :cond_5

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    iget-boolean v3, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Button;->getId()I

    move-result v3

    invoke-virtual {p1, v3, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(IZ)V

    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->r:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/google/android/material/button/MaterialButton;->r:Z

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->h:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/a;

    invoke-interface {v0}, Lo2/a;->a()V

    goto :goto_2

    :cond_4
    iput-boolean v2, p0, Lcom/google/android/material/button/MaterialButton;->r:Z

    :cond_5
    return-void
.end method

.method public final setElevation(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->setElevation(F)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo2/d;->b(Z)LC2/i;

    move-result-object p0

    invoke-virtual {p0, p1}, LC2/i;->k(F)V

    :cond_0
    return-void
.end method

.method public final setPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Lo2/i;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo2/i;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setPressed(Z)V

    return-void
.end method

.method public final setTextAlignment(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->setTextAlignment(I)V

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->i(II)V

    return-void
.end method

.method public final toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method
