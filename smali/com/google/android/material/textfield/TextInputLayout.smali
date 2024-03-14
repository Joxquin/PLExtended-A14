.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final A0:[[I


# instance fields
.field public A:Lg0/h;

.field public B:Landroid/content/res/ColorStateList;

.field public C:Landroid/content/res/ColorStateList;

.field public final D:Z

.field public E:Ljava/lang/CharSequence;

.field public F:Z

.field public G:LC2/i;

.field public H:LC2/i;

.field public I:Landroid/graphics/drawable/StateListDrawable;

.field public J:Z

.field public K:LC2/i;

.field public L:LC2/i;

.field public M:LC2/n;

.field public N:Z

.field public final O:I

.field public P:I

.field public Q:I

.field public R:I

.field public final S:I

.field public final T:I

.field public U:I

.field public V:I

.field public final W:Landroid/graphics/Rect;

.field public final a0:Landroid/graphics/Rect;

.field public final b0:Landroid/graphics/RectF;

.field public c0:Landroid/graphics/drawable/Drawable;

.field public final d:Landroid/widget/FrameLayout;

.field public d0:I

.field public final e:LF2/H;

.field public final e0:Ljava/util/LinkedHashSet;

.field public final f:LF2/v;

.field public f0:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/widget/EditText;

.field public g0:I

.field public h:Ljava/lang/CharSequence;

.field public h0:Landroid/graphics/drawable/Drawable;

.field public i:I

.field public i0:Landroid/content/res/ColorStateList;

.field public j:I

.field public j0:Landroid/content/res/ColorStateList;

.field public k:I

.field public k0:I

.field public l:I

.field public l0:I

.field public final m:LF2/A;

.field public m0:I

.field public n:Z

.field public n0:Landroid/content/res/ColorStateList;

.field public o:I

.field public final o0:I

.field public p:Z

.field public final p0:I

.field public final q:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

.field public final q0:I

.field public r:Landroidx/appcompat/widget/AppCompatTextView;

.field public final r0:I

.field public s:I

.field public s0:I

.field public t:I

.field public t0:Z

.field public u:Ljava/lang/CharSequence;

.field public final u0:Lcom/google/android/material/internal/a;

.field public v:Z

.field public final v0:Z

.field public w:Landroidx/appcompat/widget/AppCompatTextView;

.field public final w0:Z

.field public x:Landroid/content/res/ColorStateList;

.field public x0:Landroid/animation/ValueAnimator;

.field public y:I

.field public y0:Z

.field public z:Lg0/h;

.field public z0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/textfield/TextInputLayout;->A0:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04059e

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const v9, 0x7f1403ab

    move-object/from16 v1, p1

    .line 3
    invoke-static {v1, v7, v8, v9}, LH2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v10, -0x1

    .line 4
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    .line 5
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    .line 6
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    .line 7
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 8
    new-instance v11, LF2/A;

    invoke-direct {v11, v0}, LF2/A;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    .line 9
    new-instance v1, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->q:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    .line 10
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->W:Landroid/graphics/Rect;

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/Rect;

    .line 12
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/RectF;

    .line 13
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Ljava/util/LinkedHashSet;

    .line 14
    new-instance v12, Lcom/google/android/material/internal/a;

    invoke-direct {v12, v0}, Lcom/google/android/material/internal/a;-><init>(Landroid/view/View;)V

    iput-object v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    .line 16
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v15, 0x0

    .line 17
    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 18
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setAddStatesFromChildren(Z)V

    .line 19
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    .line 20
    invoke-virtual {v6, v14}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 21
    sget-object v5, Lj2/a;->a:Landroid/animation/TimeInterpolator;

    .line 22
    iput-object v5, v12, Lcom/google/android/material/internal/a;->W:Landroid/animation/TimeInterpolator;

    .line 23
    invoke-virtual {v12, v15}, Lcom/google/android/material/internal/a;->i(Z)V

    .line 24
    iput-object v5, v12, Lcom/google/android/material/internal/a;->V:Landroid/animation/TimeInterpolator;

    .line 25
    invoke-virtual {v12, v15}, Lcom/google/android/material/internal/a;->i(Z)V

    .line 26
    iget v1, v12, Lcom/google/android/material/internal/a;->k:I

    const v2, 0x800033

    if-eq v1, v2, :cond_0

    .line 27
    iput v2, v12, Lcom/google/android/material/internal/a;->k:I

    .line 28
    invoke-virtual {v12, v15}, Lcom/google/android/material/internal/a;->i(Z)V

    .line 29
    :cond_0
    sget-object v4, Li2/a;->C:[I

    const/16 v3, 0x16

    const/16 v2, 0x14

    const/16 v1, 0x23

    const/16 v15, 0x28

    const/16 v10, 0x2c

    filled-new-array {v3, v2, v1, v15, v10}, [I

    move-result-object v16

    .line 30
    invoke-static {v13, v7, v8, v9}, Lx2/r;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v17, 0x7f1403ab

    move v15, v1

    move-object v1, v13

    move-object/from16 v2, p2

    move-object v3, v4

    move-object v15, v4

    move/from16 v4, p3

    move-object/from16 v18, v5

    move/from16 v5, v17

    move-object/from16 v19, v6

    move-object/from16 v6, v16

    .line 31
    invoke-static/range {v1 .. v6}, Lx2/r;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 32
    new-instance v1, Lk/R0;

    .line 33
    invoke-virtual {v13, v7, v15, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-direct {v1, v13, v2}, Lk/R0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 34
    new-instance v3, LF2/H;

    invoke-direct {v3, v0, v1}, LF2/H;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lk/R0;)V

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    const/16 v4, 0x2b

    .line 35
    invoke-virtual {v1, v4, v14}, Lk/R0;->a(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z

    const/4 v4, 0x4

    .line 36
    invoke-virtual {v1, v4}, Lk/R0;->k(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->l(Ljava/lang/CharSequence;)V

    const/16 v4, 0x2a

    .line 37
    invoke-virtual {v1, v4, v14}, Lk/R0;->a(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Z

    const/16 v4, 0x25

    .line 38
    invoke-virtual {v1, v4, v14}, Lk/R0;->a(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Z

    const/4 v4, 0x6

    .line 39
    invoke-virtual {v1, v4}, Lk/R0;->l(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    .line 40
    invoke-virtual {v1, v4, v5}, Lk/R0;->h(II)I

    move-result v4

    .line 41
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    .line 42
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v6, :cond_2

    if-eq v4, v5, :cond_2

    .line 43
    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setMinEms(I)V

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    const/4 v4, 0x3

    .line 44
    invoke-virtual {v1, v4}, Lk/R0;->l(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 45
    invoke-virtual {v1, v4, v5}, Lk/R0;->d(II)I

    move-result v4

    .line 46
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    .line 47
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v6, :cond_2

    if-eq v4, v5, :cond_2

    .line 48
    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setMinWidth(I)V

    :cond_2
    :goto_0
    const/4 v4, 0x5

    .line 49
    invoke-virtual {v1, v4}, Lk/R0;->l(I)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_3

    const/4 v5, -0x1

    .line 50
    invoke-virtual {v1, v4, v5}, Lk/R0;->h(II)I

    move-result v4

    .line 51
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    .line 52
    iget-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v15, :cond_4

    if-eq v4, v5, :cond_4

    .line 53
    invoke-virtual {v15, v4}, Landroid/widget/EditText;->setMaxEms(I)V

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    .line 54
    invoke-virtual {v1, v6}, Lk/R0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 55
    invoke-virtual {v1, v6, v5}, Lk/R0;->d(II)I

    move-result v4

    .line 56
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 57
    iget-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v15, :cond_4

    if-eq v4, v5, :cond_4

    .line 58
    invoke-virtual {v15, v4}, Landroid/widget/EditText;->setMaxWidth(I)V

    .line 59
    :cond_4
    :goto_1
    invoke-static {v13, v7, v8, v9}, LC2/n;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)LC2/m;

    move-result-object v4

    .line 60
    new-instance v5, LC2/n;

    invoke-direct {v5, v4}, LC2/n;-><init>(LC2/m;)V

    .line 61
    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->M:LC2/n;

    .line 62
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703e6

    .line 63
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    const/16 v4, 0x9

    const/4 v5, 0x0

    .line 64
    invoke-virtual {v1, v4, v5}, Lk/R0;->c(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 65
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703e7

    .line 66
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/16 v5, 0x10

    .line 67
    invoke-virtual {v1, v5, v4}, Lk/R0;->d(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 68
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0703e8

    .line 69
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/16 v7, 0x11

    .line 70
    invoke-virtual {v1, v7, v5}, Lk/R0;->d(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 71
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    const/16 v4, 0xd

    const/high16 v5, -0x40800000    # -1.0f

    .line 72
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v7, 0xc

    .line 73
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    const/16 v8, 0xa

    .line 74
    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    const/16 v9, 0xb

    .line 75
    invoke-virtual {v2, v9, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 76
    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->M:LC2/n;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    new-instance v15, LC2/m;

    invoke-direct {v15, v9}, LC2/m;-><init>(LC2/n;)V

    const/4 v9, 0x0

    cmpl-float v16, v4, v9

    if-ltz v16, :cond_5

    .line 78
    new-instance v6, LC2/a;

    invoke-direct {v6, v4}, LC2/a;-><init>(F)V

    iput-object v6, v15, LC2/m;->e:LC2/c;

    :cond_5
    cmpl-float v4, v7, v9

    if-ltz v4, :cond_6

    .line 79
    new-instance v4, LC2/a;

    invoke-direct {v4, v7}, LC2/a;-><init>(F)V

    iput-object v4, v15, LC2/m;->f:LC2/c;

    :cond_6
    cmpl-float v4, v8, v9

    if-ltz v4, :cond_7

    .line 80
    new-instance v4, LC2/a;

    invoke-direct {v4, v8}, LC2/a;-><init>(F)V

    iput-object v4, v15, LC2/m;->g:LC2/c;

    :cond_7
    cmpl-float v4, v5, v9

    if-ltz v4, :cond_8

    .line 81
    new-instance v4, LC2/a;

    invoke-direct {v4, v5}, LC2/a;-><init>(F)V

    iput-object v4, v15, LC2/m;->h:LC2/c;

    .line 82
    :cond_8
    new-instance v4, LC2/n;

    invoke-direct {v4, v15}, LC2/n;-><init>(LC2/m;)V

    .line 83
    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->M:LC2/n;

    const/4 v4, 0x7

    .line 84
    invoke-static {v13, v1, v4}, LA2/d;->b(Landroid/content/Context;Lk/R0;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const v5, 0x101009c

    const v6, 0x101009e

    const v7, 0x1010367

    const v8, -0x101009e

    if-eqz v4, :cond_a

    .line 85
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v9

    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 86
    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    .line 87
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 88
    filled-new-array {v8}, [I

    move-result-object v9

    const/4 v15, -0x1

    .line 89
    invoke-virtual {v4, v9, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    .line 90
    filled-new-array {v5, v6}, [I

    move-result-object v9

    .line 91
    invoke-virtual {v4, v9, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 92
    filled-new-array {v7, v6}, [I

    move-result-object v9

    .line 93
    invoke-virtual {v4, v9, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    goto :goto_2

    :cond_9
    const/4 v15, -0x1

    .line 94
    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    const v4, 0x7f0602c0

    .line 95
    invoke-static {v4, v13}, LB/c;->a(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 96
    filled-new-array {v8}, [I

    move-result-object v9

    .line 97
    invoke-virtual {v4, v9, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    .line 98
    filled-new-array {v7}, [I

    move-result-object v9

    .line 99
    invoke-virtual {v4, v9, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    .line 100
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    .line 101
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 102
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    .line 103
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 104
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    .line 105
    :goto_2
    invoke-virtual {v1, v14}, Lk/R0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 106
    invoke-virtual {v1, v14}, Lk/R0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    :cond_b
    const/16 v4, 0xe

    .line 107
    invoke-static {v13, v1, v4}, LA2/d;->b(Landroid/content/Context;Lk/R0;I)Landroid/content/res/ColorStateList;

    move-result-object v9

    const/4 v15, 0x0

    .line 108
    invoke-virtual {v2, v4, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 109
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 110
    sget-object v2, LB/c;->a:Ljava/lang/Object;

    const v2, 0x7f0602db

    .line 111
    invoke-virtual {v13, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 112
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    const v2, 0x7f0602dc

    .line 113
    invoke-virtual {v13, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 114
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    const v2, 0x7f0602df

    .line 115
    invoke-virtual {v13, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 116
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->l0:I

    if-eqz v9, :cond_e

    .line 117
    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 118
    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    .line 119
    filled-new-array {v8}, [I

    move-result-object v2

    const/4 v4, -0x1

    .line 120
    invoke-virtual {v9, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    .line 121
    filled-new-array {v7, v6}, [I

    move-result-object v2

    .line 122
    invoke-virtual {v9, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->l0:I

    .line 123
    filled-new-array {v5, v6}, [I

    move-result-object v2

    .line 124
    invoke-virtual {v9, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    goto :goto_3

    .line 125
    :cond_c
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    if-eq v2, v4, :cond_d

    .line 126
    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 127
    :cond_d
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    :cond_e
    const/16 v2, 0xf

    .line 128
    invoke-virtual {v1, v2}, Lk/R0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 129
    invoke-static {v13, v1, v2}, LA2/d;->b(Landroid/content/Context;Lk/R0;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 130
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    if-eq v4, v2, :cond_f

    .line 131
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    :cond_f
    const/4 v2, -0x1

    .line 133
    invoke-virtual {v1, v10, v2}, Lk/R0;->i(II)I

    move-result v4

    if-eq v4, v2, :cond_10

    const/4 v2, 0x0

    .line 134
    invoke-virtual {v1, v10, v2}, Lk/R0;->i(II)I

    move-result v4

    .line 135
    invoke-virtual {v12, v4}, Lcom/google/android/material/internal/a;->j(I)V

    .line 136
    iget-object v4, v12, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;

    .line 137
    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 138
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v4, :cond_11

    .line 139
    invoke-virtual {v0, v2, v2}, Lcom/google/android/material/textfield/TextInputLayout;->v(ZZ)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    goto :goto_4

    :cond_10
    const/4 v2, 0x0

    :cond_11
    :goto_4
    const/16 v4, 0x23

    .line 141
    invoke-virtual {v1, v4, v2}, Lk/R0;->i(II)I

    move-result v4

    const/16 v5, 0x1e

    .line 142
    invoke-virtual {v1, v5}, Lk/R0;->k(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/16 v6, 0x1f

    .line 143
    invoke-virtual {v1, v6, v2}, Lk/R0;->a(IZ)Z

    move-result v6

    const/16 v7, 0x28

    .line 144
    invoke-virtual {v1, v7, v2}, Lk/R0;->i(II)I

    move-result v7

    const/16 v8, 0x27

    .line 145
    invoke-virtual {v1, v8, v2}, Lk/R0;->a(IZ)Z

    move-result v8

    const/16 v9, 0x26

    .line 146
    invoke-virtual {v1, v9}, Lk/R0;->k(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/16 v10, 0x34

    .line 147
    invoke-virtual {v1, v10, v2}, Lk/R0;->i(II)I

    move-result v10

    const/16 v13, 0x33

    .line 148
    invoke-virtual {v1, v13}, Lk/R0;->k(I)Ljava/lang/CharSequence;

    move-result-object v13

    const/16 v15, 0x12

    .line 149
    invoke-virtual {v1, v15, v2}, Lk/R0;->a(IZ)Z

    move-result v15

    const/16 v2, 0x13

    const/4 v14, -0x1

    .line 150
    invoke-virtual {v1, v2, v14}, Lk/R0;->h(II)I

    move-result v2

    .line 151
    iget v14, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    move-object/from16 p2, v9

    if-eq v14, v2, :cond_14

    if-lez v2, :cond_12

    .line 152
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    goto :goto_5

    :cond_12
    const/4 v2, -0x1

    .line 153
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    .line 154
    :goto_5
    iget-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->n:Z

    if-eqz v2, :cond_14

    .line 155
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_14

    .line 156
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_6

    :cond_13
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    :goto_6
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->p(Landroid/text/Editable;)V

    :cond_14
    const/16 v2, 0x16

    const/4 v14, 0x0

    .line 157
    invoke-virtual {v1, v2, v14}, Lk/R0;->i(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    const/16 v2, 0x14

    .line 158
    invoke-virtual {v1, v2, v14}, Lk/R0;->i(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->s:I

    const/16 v2, 0x8

    .line 159
    invoke-virtual {v1, v2, v14}, Lk/R0;->h(II)I

    move-result v2

    .line 160
    iget v14, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-ne v2, v14, :cond_15

    goto :goto_7

    .line 161
    :cond_15
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 162
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v2, :cond_16

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()V

    .line 164
    :cond_16
    :goto_7
    iput-object v5, v11, LF2/A;->m:Ljava/lang/CharSequence;

    .line 165
    iget-object v2, v11, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_17

    .line 166
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    :cond_17
    iput v7, v11, LF2/A;->s:I

    .line 168
    iget-object v2, v11, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_18

    .line 169
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 170
    :cond_18
    iput v4, v11, LF2/A;->n:I

    .line 171
    iget-object v2, v11, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_19

    .line 172
    iget-object v5, v11, LF2/A;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5, v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->n(Landroid/widget/TextView;I)V

    .line 173
    :cond_19
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v2, :cond_1a

    .line 174
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    const v4, 0x7f0a0387

    .line 175
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setId(I)V

    .line 176
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v4, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    const/4 v4, 0x2

    .line 177
    invoke-static {v2, v4}, Landroidx/core/view/x;->o(Landroid/view/View;I)V

    .line 178
    new-instance v2, Lg0/h;

    invoke-direct {v2}, Lg0/h;-><init>()V

    const-wide/16 v4, 0x57

    .line 179
    iput-wide v4, v2, Lg0/x;->f:J

    move-object/from16 v7, v18

    .line 180
    iput-object v7, v2, Lg0/x;->g:Landroid/animation/TimeInterpolator;

    .line 181
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->z:Lg0/h;

    move/from16 p3, v10

    const-wide/16 v9, 0x43

    .line 182
    iput-wide v9, v2, Lg0/x;->e:J

    .line 183
    new-instance v2, Lg0/h;

    invoke-direct {v2}, Lg0/h;-><init>()V

    .line 184
    iput-wide v4, v2, Lg0/x;->f:J

    .line 185
    iput-object v7, v2, Lg0/x;->g:Landroid/animation/TimeInterpolator;

    .line 186
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->A:Lg0/h;

    .line 187
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    .line 188
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    .line 189
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_1b

    .line 190
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_8

    :cond_1a
    move/from16 p3, v10

    .line 191
    :cond_1b
    :goto_8
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    .line 192
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->m(Z)V

    goto :goto_9

    .line 193
    :cond_1c
    iget-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    if-nez v2, :cond_1d

    const/4 v2, 0x1

    .line 194
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->m(Z)V

    .line 195
    :cond_1d
    iput-object v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->u:Ljava/lang/CharSequence;

    .line 196
    :goto_9
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_a

    :cond_1e
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    :goto_a
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->w(Landroid/text/Editable;)V

    move/from16 v2, p3

    .line 197
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    .line 198
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_1f

    .line 199
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_1f
    const/16 v2, 0x24

    .line 200
    invoke-virtual {v1, v2}, Lk/R0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 201
    invoke-virtual {v1, v2}, Lk/R0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 202
    iput-object v2, v11, LF2/A;->o:Landroid/content/res/ColorStateList;

    .line 203
    iget-object v4, v11, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_20

    if-eqz v2, :cond_20

    .line 204
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_20
    const/16 v2, 0x29

    .line 205
    invoke-virtual {v1, v2}, Lk/R0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 206
    invoke-virtual {v1, v2}, Lk/R0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 207
    iput-object v2, v11, LF2/A;->t:Landroid/content/res/ColorStateList;

    .line 208
    iget-object v4, v11, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_21

    if-eqz v2, :cond_21

    .line 209
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_21
    const/16 v2, 0x2d

    .line 210
    invoke-virtual {v1, v2}, Lk/R0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 211
    invoke-virtual {v1, v2}, Lk/R0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 212
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    if-eq v4, v2, :cond_23

    .line 213
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_22

    .line 214
    invoke-virtual {v12, v2}, Lcom/google/android/material/internal/a;->k(Landroid/content/res/ColorStateList;)V

    .line 215
    :cond_22
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 216
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v2, :cond_23

    const/4 v2, 0x0

    .line 217
    invoke-virtual {v0, v2, v2}, Lcom/google/android/material/textfield/TextInputLayout;->v(ZZ)V

    :cond_23
    const/16 v2, 0x17

    .line 218
    invoke-virtual {v1, v2}, Lk/R0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 219
    invoke-virtual {v1, v2}, Lk/R0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 220
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    if-eq v4, v2, :cond_24

    .line 221
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    :cond_24
    const/16 v2, 0x15

    .line 223
    invoke-virtual {v1, v2}, Lk/R0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 224
    invoke-virtual {v1, v2}, Lk/R0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 225
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->C:Landroid/content/res/ColorStateList;

    if-eq v4, v2, :cond_25

    .line 226
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->C:Landroid/content/res/ColorStateList;

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    :cond_25
    const/16 v2, 0x35

    .line 228
    invoke-virtual {v1, v2}, Lk/R0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 229
    invoke-virtual {v1, v2}, Lk/R0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 230
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/content/res/ColorStateList;

    if-eq v4, v2, :cond_26

    .line 231
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/content/res/ColorStateList;

    .line 232
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_26

    if-eqz v2, :cond_26

    .line 233
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 234
    :cond_26
    new-instance v2, LF2/v;

    invoke-direct {v2, v0, v1}, LF2/v;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lk/R0;)V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 235
    invoke-virtual {v1, v5, v4}, Lk/R0;->a(IZ)Z

    move-result v7

    .line 236
    invoke-virtual {v1}, Lk/R0;->n()V

    .line 237
    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x2

    .line 238
    invoke-static {v0, v1}, Landroidx/core/view/x;->o(Landroid/view/View;I)V

    .line 239
    invoke-static {v0, v4}, Landroidx/core/view/F;->b(Landroid/view/View;I)V

    move-object/from16 v1, v19

    .line 240
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 241
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 242
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 244
    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->k(Z)V

    .line 245
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->j(Z)V

    .line 246
    iget-boolean v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->n:Z

    if-eq v1, v15, :cond_2a

    if-eqz v15, :cond_28

    .line 247
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const v2, 0x7f0a0384

    .line 248
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 249
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 250
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x2

    invoke-virtual {v11, v1, v2}, LF2/A;->a(Landroid/widget/TextView;I)V

    .line 251
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 252
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 253
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 254
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 256
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_29

    .line 257
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-nez v1, :cond_27

    const/4 v9, 0x0

    goto :goto_b

    :cond_27
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    :goto_b
    invoke-virtual {v0, v9}, Lcom/google/android/material/textfield/TextInputLayout;->p(Landroid/text/Editable;)V

    goto :goto_c

    .line 258
    :cond_28
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x2

    invoke-virtual {v11, v1, v2}, LF2/A;->g(Landroid/widget/TextView;I)V

    const/4 v1, 0x0

    .line 259
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 260
    :cond_29
    :goto_c
    iput-boolean v15, v0, Lcom/google/android/material/textfield/TextInputLayout;->n:Z

    .line 261
    :cond_2a
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 262
    iget-boolean v1, v11, LF2/A;->q:Z

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    .line 263
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->k(Z)V

    goto :goto_d

    .line 264
    :cond_2b
    iget-boolean v1, v11, LF2/A;->q:Z

    if-nez v1, :cond_2c

    const/4 v1, 0x1

    .line 265
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->k(Z)V

    .line 266
    :cond_2c
    invoke-virtual {v11}, LF2/A;->c()V

    move-object/from16 v0, p2

    .line 267
    iput-object v0, v11, LF2/A;->p:Ljava/lang/CharSequence;

    .line 268
    iget-object v1, v11, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget v1, v11, LF2/A;->h:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2d

    .line 270
    iput v2, v11, LF2/A;->i:I

    .line 271
    :cond_2d
    iget v2, v11, LF2/A;->i:I

    iget-object v3, v11, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 272
    invoke-virtual {v11, v3, v0}, LF2/A;->h(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 273
    invoke-virtual {v11, v1, v2, v0}, LF2/A;->i(IIZ)V

    :cond_2e
    :goto_d
    return-void
.end method

.method public static i(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->i(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, LC2/i;->d:LC2/h;

    iget-object v1, v1, LC2/h;->a:LC2/n;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:LC2/n;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v2}, LC2/i;->b(LC2/n;)V

    :cond_1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    if-le v0, v2, :cond_2

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    int-to-float v1, v1

    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    iget-object v6, v0, LC2/i;->d:LC2/h;

    iput v1, v6, LC2/h;->k:F

    invoke-virtual {v0}, LC2/i;->invalidateSelf()V

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v5, v0, LC2/i;->d:LC2/h;

    iget-object v6, v5, LC2/h;->d:Landroid/content/res/ColorStateList;

    if-eq v6, v1, :cond_4

    iput-object v1, v5, LC2/h;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, LC2/i;->onStateChange([I)Z

    :cond_4
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-ne v1, v4, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040146

    invoke-static {v0, v1, v3}, Ls2/a;->a(Landroid/content/Context;II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    invoke-static {v1, v0}, LE/a;->h(II)I

    move-result v0

    :cond_5
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, LC2/i;->l(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LC2/i;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LC2/i;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    if-le v1, v2, :cond_7

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    if-eqz v1, :cond_7

    move v3, v4

    :cond_7
    if-eqz v3, :cond_9

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_2

    :cond_8
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, LC2/i;->l(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LC2/i;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, LC2/i;->l(Landroid/content/res/ColorStateList;)V

    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()V

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_13

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    check-cast p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-nez p2, :cond_12

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    iget p2, p2, LF2/v;->k:I

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    instance-of p2, p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-nez p2, :cond_0

    const-string p2, "TextInputLayout"

    const-string p3, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    iget p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    if-eqz p1, :cond_2

    if-eq p2, p3, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setMinEms(I)V

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    if-eqz p1, :cond_2

    if-eq p2, p3, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setMinWidth(I)V

    :cond_2
    :goto_0
    iget p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    if-eq p2, p3, :cond_3

    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    if-eq p2, p3, :cond_4

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setMaxEms(I)V

    goto :goto_1

    :cond_3
    iget p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    if-eq p2, p3, :cond_4

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setMaxWidth(I)V

    :cond_4
    :goto_1
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()V

    new-instance p3, LF2/L;

    invoke-direct {p3, p0}, LF2/L;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    invoke-static {v0, p3}, Landroidx/core/view/J;->h(Landroid/view/View;Landroidx/core/view/b;)V

    :cond_5
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/internal/a;->l(Landroid/graphics/Typeface;)Z

    move-result v1

    invoke-virtual {p3, v0}, Lcom/google/android/material/internal/a;->n(Landroid/graphics/Typeface;)Z

    move-result v0

    if-nez v1, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_7
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    iget v1, p3, Lcom/google/android/material/internal/a;->l:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_8

    iput v0, p3, Lcom/google/android/material/internal/a;->l:F

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_8
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLetterSpacing()F

    move-result v0

    iget v1, p3, Lcom/google/android/material/internal/a;->g0:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_9

    iput v0, p3, Lcom/google/android/material/internal/a;->g0:F

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_9
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getGravity()I

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    and-int/lit8 v1, p3, -0x71

    or-int/lit8 v1, v1, 0x30

    iget v2, v0, Lcom/google/android/material/internal/a;->k:I

    if-eq v2, v1, :cond_a

    iput v1, v0, Lcom/google/android/material/internal/a;->k:I

    invoke-virtual {v0, p2}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget v1, v0, Lcom/google/android/material/internal/a;->j:I

    if-eq v1, p3, :cond_b

    iput p3, v0, Lcom/google/android/material/internal/a;->j:I

    invoke-virtual {v0, p2}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_b
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    new-instance v0, LF2/I;

    invoke-direct {v0, p0}, LF2/I;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_c

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    :cond_c
    iget-boolean p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_d

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Ljava/lang/CharSequence;

    invoke-virtual {p0, p3}, Lcom/google/android/material/textfield/TextInputLayout;->l(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_d
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    :cond_e
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p3, :cond_f

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/textfield/TextInputLayout;->p(Landroid/text/Editable;)V

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    invoke-virtual {p3}, LF2/A;->b()V

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Ljava/util/LinkedHashSet;

    invoke-virtual {p3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LF2/M;

    invoke-interface {v1, p0}, LF2/M;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    goto :goto_2

    :cond_10
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    invoke-virtual {p3}, LF2/v;->l()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p3

    if-nez p3, :cond_11

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_11
    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->v(ZZ)V

    goto :goto_3

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "We already have an EditText, can only have one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void
.end method

.method public animateToExpansionFraction(F)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget v0, v0, Lcom/google/android/material/internal/a;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/animation/ValueAnimator;

    sget-object v1, Lj2/a;->b:LU/b;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/animation/ValueAnimator;

    new-instance v1, LF2/K;

    invoke-direct {v1, p0}, LF2/K;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget v2, v2, Lcom/google/android/material/internal/a;->b:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final b()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->e()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    :goto_0
    float-to-int p0, p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->e()F

    move-result p0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    instance-of p0, p0, LF2/h;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cutoutIsOpen()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    check-cast p0, LF2/h;

    iget-object p0, p0, LF2/h;->C:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d(Z)LC2/i;
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    instance-of v2, v1, LF2/D;

    if-eqz v2, :cond_1

    check-cast v1, LF2/D;

    iget v1, v1, LF2/D;->k:F

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07038e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070390

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    new-instance v3, LC2/m;

    invoke-direct {v3}, LC2/m;-><init>()V

    new-instance v4, LC2/a;

    invoke-direct {v4, p1}, LC2/a;-><init>(F)V

    iput-object v4, v3, LC2/m;->e:LC2/c;

    new-instance v4, LC2/a;

    invoke-direct {v4, p1}, LC2/a;-><init>(F)V

    iput-object v4, v3, LC2/m;->f:LC2/c;

    new-instance p1, LC2/a;

    invoke-direct {p1, v0}, LC2/a;-><init>(F)V

    iput-object p1, v3, LC2/m;->h:LC2/c;

    new-instance p1, LC2/a;

    invoke-direct {p1, v0}, LC2/a;-><init>(F)V

    iput-object p1, v3, LC2/m;->g:LC2/c;

    new-instance p1, LC2/n;

    invoke-direct {p1, v3}, LC2/n;-><init>(LC2/m;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, LC2/i;->A:Ljava/lang/String;

    const-class v0, LC2/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f040146

    invoke-static {v3, p0, v0}, LA2/c;->b(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v0

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_2

    sget-object v0, LB/c;->a:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_2
    iget v0, v0, Landroid/util/TypedValue;->data:I

    :goto_2
    new-instance v3, LC2/i;

    invoke-direct {v3}, LC2/i;-><init>()V

    invoke-virtual {v3, p0}, LC2/i;->j(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v3, p0}, LC2/i;->l(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v1}, LC2/i;->k(F)V

    invoke-virtual {v3, p1}, LC2/i;->b(LC2/n;)V

    iget-object p0, v3, LC2/i;->d:LC2/h;

    iget-object p1, p0, LC2/h;->h:Landroid/graphics/Rect;

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LC2/h;->h:Landroid/graphics/Rect;

    :cond_3
    iget-object p0, v3, LC2/i;->d:LC2/h;

    iget-object p0, p0, LC2/h;->h:Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3}, LC2/i;->invalidateSelf()V

    return-object v3
.end method

.method public final dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    throw p1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:Z

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->d(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LC2/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LC2/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, LC2/i;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LC2/i;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LC2/i;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget v2, v2, Lcom/google/android/material/internal/a;->b:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sget-object v5, Lj2/a;->a:Landroid/animation/TimeInterpolator;

    sub-int/2addr v4, v3

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LC2/i;

    invoke-virtual {p0, p1}, LC2/i;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/a;->q([I)Z

    move-result v1

    or-int/2addr v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/A;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->v(ZZ)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_4
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Z

    return-void
.end method

.method public final e(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    iget-object v1, p1, LF2/H;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p1, LF2/H;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    iget-object p0, p0, LF2/H;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public final f(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    iget-object v1, v0, LF2/H;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object p2, v0, LF2/H;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    iget-object p0, p0, LF2/H;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p0

    sub-int/2addr p2, p0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method public final g()V
    .locals 9

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    instance-of v0, v0, LF2/h;

    if-nez v0, :cond_0

    new-instance v0, LF2/h;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:LC2/n;

    invoke-direct {v0, v4}, LF2/h;-><init>(LC2/n;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    goto :goto_0

    :cond_0
    new-instance v0, LC2/i;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:LC2/n;

    invoke-direct {v0, v4}, LC2/i;-><init>(LC2/n;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    :goto_0
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LC2/i;

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LC2/i;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    const-string v2, " is illegal; only @BoxBackgroundMode constants are supported."

    invoke-static {v1, p0, v2}, Lv/e;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, LC2/i;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:LC2/n;

    invoke-direct {v0, v3}, LC2/i;-><init>(LC2/n;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    new-instance v0, LC2/i;

    invoke-direct {v0}, LC2/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LC2/i;

    new-instance v0, LC2/i;

    invoke-direct {v0}, LC2/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LC2/i;

    goto :goto_1

    :cond_3
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LC2/i;

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LC2/i;

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v4

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070316

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LA2/d;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070315

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-eq v0, v2, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v4

    :goto_4
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    sget-object v3, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/y;->e(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070314

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-static {v6}, Landroidx/core/view/y;->d(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070313

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-static {v0, v3, v5, v6, v7}, Landroidx/core/view/y;->h(Landroid/view/View;IIII)V

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LA2/d;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    sget-object v3, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/y;->e(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070312

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-static {v6}, Landroidx/core/view/y;->d(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070311

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-static {v0, v3, v5, v6, v7}, Landroidx/core/view/y;->h(Landroid/view/View;IIII)V

    :cond_a
    :goto_5
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    :cond_b
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    instance-of v3, v0, Landroid/widget/AutoCompleteTextView;

    if-nez v3, :cond_c

    goto :goto_6

    :cond_c
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_11

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-ne v3, v1, :cond_e

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:LC2/i;

    if-nez v1, :cond_d

    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->d(Z)LC2/i;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:LC2/i;

    :cond_d
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:LC2/i;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_e
    if-ne v3, v2, :cond_11

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroid/graphics/drawable/StateListDrawable;

    if-nez v1, :cond_10

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroid/graphics/drawable/StateListDrawable;

    const v3, 0x10100aa

    filled-new-array {v3}, [I

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:LC2/i;

    if-nez v5, :cond_f

    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->d(Z)LC2/i;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:LC2/i;

    :cond_f
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:LC2/i;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v4, [I

    invoke-virtual {p0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->d(Z)LC2/i;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_10
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    :goto_6
    return-void
.end method

.method public final getBaseline()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result p0

    return p0
.end method

.method public final getHintCollapsedTextHeight()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->e()F

    move-result p0

    return p0
.end method

.method public final getHintCurrentCollapsedTextColor()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget-object v0, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/a;->f(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method public final h()V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getGravity()I

    move-result v3

    iget-object v4, v1, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Lcom/google/android/material/internal/a;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/material/internal/a;->I:Z

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x5

    const v7, 0x800005

    const/4 v8, 0x1

    const/16 v9, 0x11

    iget-object v10, v1, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;

    if-eq v3, v9, :cond_6

    and-int/lit8 v11, v3, 0x7

    if-ne v11, v8, :cond_1

    goto :goto_2

    :cond_1
    and-int v11, v3, v7

    if-eq v11, v7, :cond_4

    and-int/lit8 v11, v3, 0x5

    if-ne v11, v6, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    iget v4, v10, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v11, v1, Lcom/google/android/material/internal/a;->j0:F

    goto :goto_3

    :cond_3
    iget v4, v10, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    iget v4, v10, Landroid/graphics/Rect;->left:I

    :goto_1
    int-to-float v4, v4

    goto :goto_4

    :cond_5
    iget v4, v10, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v11, v1, Lcom/google/android/material/internal/a;->j0:F

    goto :goto_3

    :cond_6
    :goto_2
    int-to-float v4, v2

    div-float/2addr v4, v5

    iget v11, v1, Lcom/google/android/material/internal/a;->j0:F

    div-float/2addr v11, v5

    :goto_3
    sub-float/2addr v4, v11

    :goto_4
    iget v11, v10, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Landroid/graphics/RectF;->left:F

    iget v11, v10, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    iput v11, v0, Landroid/graphics/RectF;->top:F

    if-eq v3, v9, :cond_c

    and-int/lit8 v9, v3, 0x7

    if-ne v9, v8, :cond_7

    goto :goto_7

    :cond_7
    and-int v2, v3, v7

    if-eq v2, v7, :cond_a

    and-int/lit8 v2, v3, 0x5

    if-ne v2, v6, :cond_8

    goto :goto_5

    :cond_8
    iget-boolean v2, v1, Lcom/google/android/material/internal/a;->I:Z

    if-eqz v2, :cond_9

    iget v2, v10, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :cond_9
    iget v2, v1, Lcom/google/android/material/internal/a;->j0:F

    add-float/2addr v2, v4

    goto :goto_8

    :cond_a
    :goto_5
    iget-boolean v2, v1, Lcom/google/android/material/internal/a;->I:Z

    if-eqz v2, :cond_b

    iget v2, v1, Lcom/google/android/material/internal/a;->j0:F

    add-float/2addr v2, v4

    goto :goto_8

    :cond_b
    iget v2, v10, Landroid/graphics/Rect;->right:I

    :goto_6
    int-to-float v2, v2

    goto :goto_8

    :cond_c
    :goto_7
    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, v1, Lcom/google/android/material/internal/a;->j0:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    :goto_8
    iget v3, v10, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/google/android/material/internal/a;->e()F

    move-result v1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_e

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    goto :goto_9

    :cond_d
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    check-cast p0, LF2/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v1, v2, v3, v0}, LF2/h;->p(FFFF)V

    :cond_e
    :goto_9
    return-void
.end method

.method public final isHelperTextDisplayed()Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    iget v0, p0, LF2/A;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, LF2/A;->p:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Z)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    iget-boolean v0, p0, LF2/A;->k:Z

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LF2/A;->c()V

    iget-object v0, p0, LF2/A;->b:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, p0, LF2/A;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    const v3, 0x7f0a0385

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    iget-object v2, p0, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget v2, p0, LF2/A;->n:I

    iput v2, p0, LF2/A;->n:I

    iget-object v3, p0, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->n(Landroid/widget/TextView;I)V

    :cond_1
    iget-object v0, p0, LF2/A;->o:Landroid/content/res/ColorStateList;

    iput-object v0, p0, LF2/A;->o:Landroid/content/res/ColorStateList;

    iget-object v2, p0, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    iget-object v0, p0, LF2/A;->m:Ljava/lang/CharSequence;

    iput-object v0, p0, LF2/A;->m:Ljava/lang/CharSequence;

    iget-object v2, p0, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/core/view/A;->e(Landroid/view/View;I)V

    iget-object v0, p0, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v0, v1}, LF2/A;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, LF2/A;->f()V

    iget-object v2, p0, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v2, v1}, LF2/A;->g(Landroid/widget/TextView;I)V

    const/4 v1, 0x0

    iput-object v1, p0, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    :goto_0
    iput-boolean p1, p0, LF2/A;->k:Z

    :goto_1
    return-void
.end method

.method public final k(Z)V
    .locals 5

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    iget-boolean v0, p0, LF2/A;->q:Z

    if-ne v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, LF2/A;->c()V

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, LF2/A;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const v2, 0x7f0a0386

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v1, p0, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v0}, Landroidx/core/view/A;->e(Landroid/view/View;I)V

    iget v1, p0, LF2/A;->s:I

    iput v1, p0, LF2/A;->s:I

    iget-object v2, p0, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_1
    iget-object v1, p0, LF2/A;->t:Landroid/content/res/ColorStateList;

    iput-object v1, p0, LF2/A;->t:Landroid/content/res/ColorStateList;

    iget-object v2, p0, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    iget-object v1, p0, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v1, v0}, LF2/A;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, LF2/z;

    invoke-direct {v1, p0}, LF2/z;-><init>(LF2/A;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LF2/A;->c()V

    iget v1, p0, LF2/A;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v2, 0x0

    iput v2, p0, LF2/A;->i:I

    :cond_4
    iget v2, p0, LF2/A;->i:I

    iget-object v3, p0, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, LF2/A;->h(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, LF2/A;->i(IIZ)V

    iget-object v1, p0, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v1, v0}, LF2/A;->g(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    iput-object v0, p0, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, LF2/A;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    :goto_0
    iput-boolean p1, p0, LF2/A;->q:Z

    :goto_1
    return-void
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iput-object p1, v0, Lcom/google/android/material/internal/a;->G:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/material/internal/a;->H:Ljava/lang/CharSequence;

    iget-object v1, v0, Lcom/google/android/material/internal/a;->K:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object p1, v0, Lcom/google/android/material/internal/a;->K:Landroid/graphics/Bitmap;

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    :cond_3
    const/16 p1, 0x800

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    :cond_4
    return-void
.end method

.method public final m(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    return-void
.end method

.method public final n(Landroid/widget/TextView;I)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, -0xff01

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move v0, p2

    :catch_0
    :goto_0
    if-eqz v0, :cond_1

    const p2, 0x7f1401f4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p2, LB/c;->a:Ljava/lang/Object;

    const p2, 0x7f060071

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public final o()Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    iget v0, p0, LF2/A;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, LF2/A;->j:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/a;->h(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz p1, :cond_11

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Landroid/graphics/Rect;

    invoke-static {p0, p1, p2}, Lx2/e;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LC2/i;

    if-eqz p1, :cond_0

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    iget p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    sub-int p4, p3, p4

    iget p5, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p5, p4, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LC2/i;

    if-eqz p1, :cond_1

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    iget p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    sub-int p4, p3, p4

    iget p5, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p5, p4, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getTextSize()F

    move-result p3

    iget p4, p1, Lcom/google/android/material/internal/a;->l:F

    cmpl-float p4, p4, p3

    const/4 p5, 0x0

    if-eqz p4, :cond_2

    iput p3, p1, Lcom/google/android/material/internal/a;->l:F

    invoke-virtual {p1, p5}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getGravity()I

    move-result p1

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    and-int/lit8 p4, p1, -0x71

    or-int/lit8 p4, p4, 0x30

    iget v0, p3, Lcom/google/android/material/internal/a;->k:I

    if-eq v0, p4, :cond_3

    iput p4, p3, Lcom/google/android/material/internal/a;->k:I

    invoke-virtual {p3, p5}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_3
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget p4, p3, Lcom/google/android/material/internal/a;->j:I

    if-eq p4, p1, :cond_4

    iput p1, p3, Lcom/google/android/material/internal/a;->j:I

    invoke-virtual {p3, p5}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz p3, :cond_10

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/Rect;

    invoke-static {p0}, Lx2/w;->a(Landroid/view/View;)Z

    move-result p4

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0, p4}, Lcom/google/android/material/textfield/TextInputLayout;->e(IZ)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, p4}, Lcom/google/android/material/textfield/TextInputLayout;->f(IZ)I

    move-result p4

    iput p4, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_5
    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p4

    iput v0, p3, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()I

    move-result v0

    sub-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->top:I

    iget p4, p2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_6
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0, p4}, Lcom/google/android/material/textfield/TextInputLayout;->e(IZ)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    add-int/2addr v0, v2

    iput v0, p3, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, p4}, Lcom/google/android/material/textfield/TextInputLayout;->f(IZ)I

    move-result p4

    iput p4, p3, Landroid/graphics/Rect;->right:I

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p1, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ne v4, p4, :cond_7

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ne v4, v0, :cond_7

    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-ne v4, v2, :cond_7

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v4, p3, :cond_7

    move v4, v1

    goto :goto_1

    :cond_7
    move v4, p5

    :goto_1
    if-nez v4, :cond_8

    invoke-virtual {v3, p4, v0, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v1, p1, Lcom/google/android/material/internal/a;->S:Z

    :cond_8
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz p3, :cond_f

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/Rect;

    iget-object p4, p1, Lcom/google/android/material/internal/a;->U:Landroid/text/TextPaint;

    iget v0, p1, Lcom/google/android/material/internal/a;->l:F

    invoke-virtual {p4, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p1, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    invoke-virtual {p4, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p1, Lcom/google/android/material/internal/a;->g0:F

    invoke-virtual {p4, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    invoke-virtual {p4}, Landroid/text/TextPaint;->ascent()F

    move-result p4

    neg-float p4, p4

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMinLines()I

    move-result v0

    if-gt v0, v1, :cond_9

    move v0, v1

    goto :goto_2

    :cond_9
    move v0, p5

    :goto_2
    if-eqz v0, :cond_a

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p4, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3

    :cond_a
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    :goto_3
    iput v0, p3, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p3, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMinLines()I

    move-result v0

    if-gt v0, v1, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    move v0, p5

    :goto_4
    if-eqz v0, :cond_c

    iget p2, p3, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p2, p4

    float-to-int p2, p2

    goto :goto_5

    :cond_c
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result p4

    sub-int/2addr p2, p4

    :goto_5
    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ne v3, p4, :cond_d

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ne v3, v0, :cond_d

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-ne v3, p3, :cond_d

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v3, p2, :cond_d

    move v3, v1

    goto :goto_6

    :cond_d
    move v3, p5

    :goto_6
    if-nez v3, :cond_e

    invoke-virtual {v2, p4, v0, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v1, p1, Lcom/google/android/material/internal/a;->S:Z

    :cond_e
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    invoke-virtual {p1, p5}, Lcom/google/android/material/internal/a;->i(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Z

    if-nez p1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    goto :goto_7

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_11
    :goto_7
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    const/4 p2, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v0

    if-ge v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinimumHeight(I)V

    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()Z

    move-result v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    new-instance v0, LF2/J;

    invoke-direct {v0, p0, p2}, LF2/J;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/EditText;->getGravity()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_4
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    invoke-virtual {p0}, LF2/v;->l()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    instance-of v0, p1, LF2/P;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, LF2/P;

    iget-object v0, p1, LP/c;->d:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, LF2/P;->f:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    iget-boolean v1, v1, LF2/A;->k:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->j(Z)V

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    invoke-virtual {v1}, LF2/A;->c()V

    iput-object v0, v1, LF2/A;->j:Ljava/lang/CharSequence;

    iget-object v3, v1, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, v1, LF2/A;->h:I

    if-eq v3, v2, :cond_3

    iput v2, v1, LF2/A;->i:I

    :cond_3
    iget v2, v1, LF2/A;->i:I

    iget-object v4, v1, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v4, v0}, LF2/A;->h(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v1, v3, v2, v0}, LF2/A;->i(IIZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    invoke-virtual {v0}, LF2/A;->f()V

    :goto_0
    iget-boolean p1, p1, LF2/P;->g:Z

    if-eqz p1, :cond_5

    new-instance p1, LF2/J;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, LF2/J;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Z

    if-eq p1, v2, :cond_b

    if-eqz p1, :cond_1

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:LC2/n;

    iget-object p1, p1, LC2/n;->e:LC2/c;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/RectF;

    invoke-interface {p1, v1}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:LC2/n;

    iget-object v1, v1, LC2/n;->f:LC2/c;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/RectF;

    invoke-interface {v1, v2}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:LC2/n;

    iget-object v2, v2, LC2/n;->h:LC2/c;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/RectF;

    invoke-interface {v2, v3}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:LC2/n;

    iget-object v3, v3, LC2/n;->g:LC2/c;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/RectF;

    invoke-interface {v3, v4}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result v3

    if-eqz v0, :cond_2

    move v4, p1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v0, :cond_3

    move p1, v1

    :cond_3
    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    invoke-static {p0}, Lx2/w;->a(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Z

    if-eqz v0, :cond_6

    move v3, p1

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v4, p1

    :goto_4
    if-eqz v0, :cond_8

    move p1, v2

    goto :goto_5

    :cond_8
    move p1, v1

    :goto_5
    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move v1, v2

    :goto_6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    if-eqz v0, :cond_a

    iget-object v2, v0, LC2/i;->d:LC2/h;

    iget-object v2, v2, LC2/h;->a:LC2/n;

    iget-object v2, v2, LC2/n;->e:LC2/c;

    invoke-virtual {v0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {v2, v0}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    iget-object v2, v0, LC2/i;->d:LC2/h;

    iget-object v2, v2, LC2/h;->a:LC2/n;

    iget-object v2, v2, LC2/n;->f:LC2/c;

    invoke-virtual {v0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {v2, v0}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    iget-object v2, v0, LC2/i;->d:LC2/h;

    iget-object v2, v2, LC2/h;->a:LC2/n;

    iget-object v2, v2, LC2/n;->h:LC2/c;

    invoke-virtual {v0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {v2, v0}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    iget-object v2, v0, LC2/i;->d:LC2/h;

    iget-object v2, v2, LC2/h;->a:LC2/n;

    iget-object v2, v2, LC2/n;->g:LC2/c;

    invoke-virtual {v0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {v2, v0}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:LC2/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LC2/m;

    invoke-direct {v2, v0}, LC2/m;-><init>(LC2/n;)V

    new-instance v0, LC2/a;

    invoke-direct {v0, v3}, LC2/a;-><init>(F)V

    iput-object v0, v2, LC2/m;->e:LC2/c;

    new-instance v0, LC2/a;

    invoke-direct {v0, v4}, LC2/a;-><init>(F)V

    iput-object v0, v2, LC2/m;->f:LC2/c;

    new-instance v0, LC2/a;

    invoke-direct {v0, p1}, LC2/a;-><init>(F)V

    iput-object v0, v2, LC2/m;->h:LC2/c;

    new-instance p1, LC2/a;

    invoke-direct {p1, v1}, LC2/a;-><init>(F)V

    iput-object p1, v2, LC2/m;->g:LC2/c;

    new-instance p1, LC2/n;

    invoke-direct {p1, v2}, LC2/n;-><init>(LC2/m;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:LC2/n;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->a()V

    :cond_b
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, LF2/P;

    invoke-direct {v1, v0}, LF2/P;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    iget-boolean v2, v0, LF2/A;->k:Z

    if-eqz v2, :cond_0

    iget-object v0, v0, LF2/A;->j:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, LF2/P;->f:Ljava/lang/CharSequence;

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    iget v0, p0, LF2/v;->k:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    iget-object p0, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iput-boolean v2, v1, LF2/P;->g:Z

    return-object v1
.end method

.method public final p(Landroid/text/Editable;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    goto :goto_3

    :cond_1
    if-le p1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    iget-boolean v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eqz v5, :cond_3

    const v5, 0x7f130090

    goto :goto_2

    :cond_3
    const v5, 0x7f13008f

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    :cond_4
    invoke-static {}, LK/b;->c()LK/b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object p1

    const v5, 0x7f130091

    invoke-virtual {v4, v5, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, LK/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eq v1, p1, :cond_5

    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->v(ZZ)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    :cond_5
    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->n(Landroid/widget/TextView;I)V

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public final r()Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    iget-object v0, v0, LF2/H;->g:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    iget-object v3, v0, LF2/H;->f:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iget-object v0, v0, LF2/H;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:I

    if-eq v6, v0, :cond_4

    :cond_3
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:I

    invoke-virtual {v6, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v6, v0, v1

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/Drawable;

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    aget-object v8, v0, v2

    aget-object v9, v0, v3

    aget-object v0, v0, v5

    invoke-virtual {v6, v7, v8, v9, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    aget-object v7, v0, v2

    aget-object v8, v0, v3

    aget-object v0, v0, v5

    invoke-virtual {v6, v4, v7, v8, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/Drawable;

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    invoke-virtual {v6}, LF2/v;->e()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    iget v7, v6, LF2/v;->k:I

    if-eqz v7, :cond_7

    move v7, v2

    goto :goto_3

    :cond_7
    move v7, v1

    :goto_3
    if-eqz v7, :cond_8

    invoke-virtual {v6}, LF2/v;->d()Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    iget-object v6, v6, LF2/v;->p:Ljava/lang/CharSequence;

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    if-lez v6, :cond_a

    move v6, v2

    goto :goto_4

    :cond_a
    move v6, v1

    :goto_4
    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    iget-object v6, v6, LF2/v;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    invoke-virtual {v7}, LF2/v;->e()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v4, v7, LF2/v;->f:Lcom/google/android/material/internal/CheckableImageButton;

    goto :goto_6

    :cond_b
    iget v8, v7, LF2/v;->k:I

    if-eqz v8, :cond_c

    move v8, v2

    goto :goto_5

    :cond_c
    move v8, v1

    :goto_5
    if-eqz v8, :cond_d

    invoke-virtual {v7}, LF2/v;->d()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v4, v7, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    :cond_d
    :goto_6
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    add-int v6, v4, v7

    :cond_e
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_f

    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    if-eq v8, v6, :cond_f

    iput v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    invoke-virtual {v7, v1, v1, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    aget-object v1, v4, v1

    aget-object v3, v4, v2

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v5

    invoke-virtual {v0, v1, v3, p0, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_f
    if-nez v7, :cond_10

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/Drawable;

    iput v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    invoke-virtual {v7, v1, v1, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_10
    aget-object v3, v4, v3

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/Drawable;

    if-eq v3, v6, :cond_11

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    aget-object v0, v4, v1

    aget-object v1, v4, v2

    aget-object v3, v4, v5

    invoke-virtual {p0, v0, v1, v6, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_11
    move v2, v0

    goto :goto_8

    :cond_12
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v3, v6, v3

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/Drawable;

    if-ne v3, v7, :cond_13

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    aget-object v1, v6, v1

    aget-object v3, v6, v2

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/graphics/drawable/Drawable;

    aget-object v5, v6, v5

    invoke-virtual {v0, v1, v3, v7, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_13
    move v2, v0

    :goto_7
    iput-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/Drawable;

    :goto_8
    move v0, v2

    :cond_14
    return v0
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lk/o0;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    iget-object p0, p0, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v1}, Lk/A;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v1}, Lk/A;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->refreshDrawableState()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->i(Landroid/view/ViewGroup;Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public final t()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    instance-of v1, v0, Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    const v4, 0x7f04012a

    invoke-static {v1, v4}, Ls2/a;->b(Landroid/view/View;I)I

    move-result v1

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    sget-object v5, Lcom/google/android/material/textfield/TextInputLayout;->A0:[[I

    const/4 v6, 0x2

    const v7, 0x3dcccccd    # 0.1f

    if-ne v4, v6, :cond_5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    const v8, 0x7f040146

    const-string v9, "TextInputLayout"

    invoke-static {v8, v4, v9}, LA2/c;->b(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v8

    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_4

    sget-object v8, LB/c;->a:Ljava/lang/Object;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto :goto_1

    :cond_4
    iget v4, v8, Landroid/util/TypedValue;->data:I

    :goto_1
    new-instance v8, LC2/i;

    iget-object v9, v6, LC2/i;->d:LC2/h;

    iget-object v9, v9, LC2/h;->a:LC2/n;

    invoke-direct {v8, v9}, LC2/i;-><init>(LC2/n;)V

    invoke-static {v1, v4, v7}, Ls2/a;->d(IIF)I

    move-result v1

    filled-new-array {v1, v3}, [I

    move-result-object v3

    new-instance v7, Landroid/content/res/ColorStateList;

    invoke-direct {v7, v5, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v8, v7}, LC2/i;->l(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v8, v4}, LC2/i;->setTint(I)V

    filled-new-array {v1, v4}, [I

    move-result-object v1

    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v5, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v1, LC2/i;

    iget-object v4, v6, LC2/i;->d:LC2/h;

    iget-object v4, v4, LC2/h;->a:LC2/n;

    invoke-direct {v1, v4}, LC2/i;-><init>(LC2/n;)V

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, LC2/i;->setTint(I)V

    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v4, v3, v8, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    filled-new-array {v4, v6}, [Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    if-ne v4, v2, :cond_6

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    invoke-static {v1, v4, v7}, Ls2/a;->d(IIF)I

    move-result v1

    filled-new-array {v1, v4}, [I

    move-result-object v1

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v5, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v1, v4, v3, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v3, v1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    :goto_3
    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v3}, Landroidx/core/view/x;->m(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    :cond_8
    :goto_4
    return-void
.end method

.method public final u()V
    .locals 3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()I

    move-result v1

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final v(ZZ)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    invoke-virtual {v6, v5}, Lcom/google/android/material/internal/a;->k(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    iget-object v7, v5, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    if-eq v7, v6, :cond_2

    iput-object v6, v5, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v3}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_2
    const/4 v5, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    const v6, -0x101009e

    filled-new-array {v6}, [I

    move-result-object v6

    iget v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    :goto_2
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/internal/a;->k(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v7, v6, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    if-eq v7, v0, :cond_8

    iput-object v0, v6, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v3}, Lcom/google/android/material/internal/a;->i(Z)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    iget-object v6, v6, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_3

    :cond_5
    move-object v6, v5

    :goto_3
    invoke-virtual {v0, v6}, Lcom/google/android/material/internal/a;->k(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_7

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/material/internal/a;->k(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_8

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    invoke-virtual {v6, v0}, Lcom/google/android/material/internal/a;->k(Landroid/content/res/ColorStateList;)V

    :cond_8
    :goto_4
    if-nez v1, :cond_f

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    goto/16 :goto_6

    :cond_9
    if-nez p2, :cond_a

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Z

    if-nez p2, :cond_15

    :cond_a
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    const/4 p2, 0x0

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_5

    :cond_c
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/a;->o(F)V

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    check-cast p1, LF2/h;

    iget-object p1, p1, LF2/h;->C:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    check-cast p1, LF2/h;

    invoke-virtual {p1, p2, p2, p2, p2}, LF2/h;->p(FFFF)V

    :cond_d
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Z

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_e

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    if-eqz p2, :cond_e

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Lg0/h;

    invoke-static {p1, p2}, Lg0/B;->a(Landroid/view/ViewGroup;Lg0/x;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    iput-boolean v2, p1, LF2/H;->k:Z

    invoke-virtual {p1}, LF2/H;->b()V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    iput-boolean v2, p0, LF2/v;->r:Z

    invoke-virtual {p0}, LF2/v;->m()V

    goto :goto_9

    :cond_f
    :goto_6
    if-nez p2, :cond_10

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Z

    if-eqz p2, :cond_15

    :cond_10
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_11
    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Z

    if-eqz p1, :cond_12

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_7

    :cond_12
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/a;

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/a;->o(F)V

    :goto_7
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    :cond_13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-nez p1, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    :goto_8
    invoke-virtual {p0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->w(Landroid/text/Editable;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    iput-boolean v3, p1, LF2/H;->k:Z

    invoke-virtual {p1}, LF2/H;->b()V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    iput-boolean v3, p0, LF2/v;->r:Z

    invoke-virtual {p0}, LF2/v;->m()V

    :cond_15
    :goto_9
    return-void
.end method

.method public final w(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Lg0/h;

    invoke-static {p1, v1}, Lg0/B;->a(Landroid/view/ViewGroup;Lg0/x;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->bringToFront()V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Lg0/h;

    invoke-static {p1, v0}, Lg0/B;->a(Landroid/view/ViewGroup;Lg0/x;)V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final x(ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    const v2, 0x1010367

    const v3, 0x101009e

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    const v4, 0x10102fe

    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eqz p1, :cond_0

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    :goto_0
    return-void
.end method

.method public final y()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isHovered()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/EditText;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_5

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_6

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->x(ZZ)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    iget-object v3, v3, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    goto :goto_2

    :cond_7
    move v3, v4

    :goto_2
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    goto :goto_3

    :cond_8
    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_a

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->x(ZZ)V

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    goto :goto_3

    :cond_a
    if-eqz v0, :cond_b

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    goto :goto_3

    :cond_b
    if-eqz v1, :cond_c

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    goto :goto_3

    :cond_c
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    :goto_3
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    invoke-virtual {v3}, LF2/v;->k()V

    iget-object v5, v3, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v6, v3, LF2/v;->f:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v7, v3, LF2/v;->g:Landroid/content/res/ColorStateList;

    invoke-static {v5, v6, v7}, LF2/x;->b(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    iget-object v5, v3, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v6, v3, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v7, v3, LF2/v;->m:Landroid/content/res/ColorStateList;

    invoke-static {v5, v6, v7}, LF2/x;->b(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3}, LF2/v;->c()LF2/w;

    move-result-object v5

    instance-of v5, v5, LF2/q;

    if-eqz v5, :cond_f

    iget-object v5, v3, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->o()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v3, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v5, v3, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, v3, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v6, v6, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    iget-object v6, v6, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    :cond_d
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v3, v3, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v3, v5}, Lk/G;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_e
    iget-object v4, v3, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v5, v3, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v6, v3, LF2/v;->m:Landroid/content/res/ColorStateList;

    iget-object v3, v3, LF2/v;->n:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v5, v6, v3}, LF2/x;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_f
    :goto_4
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    iget-object v4, v3, LF2/H;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v5, v3, LF2/H;->g:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v3, v3, LF2/H;->h:Landroid/content/res/ColorStateList;

    invoke-static {v4, v5, v3}, LF2/x;->b(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    goto :goto_5

    :cond_10
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    :goto_5
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    if-eq v4, v3, :cond_12

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Z

    if-nez v3, :cond_12

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:LC2/i;

    check-cast v3, LF2/h;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, LF2/h;->p(FFFF)V

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    :cond_12
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-ne v3, v2, :cond_16

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    goto :goto_6

    :cond_13
    if-eqz v1, :cond_14

    if-nez v0, :cond_14

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    goto :goto_6

    :cond_14
    if-eqz v0, :cond_15

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    goto :goto_6

    :cond_15
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    :cond_16
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->a()V

    :cond_17
    :goto_7
    return-void
.end method
