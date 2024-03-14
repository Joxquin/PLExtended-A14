.class public Lcom/google/android/material/chip/Chip;
.super Lk/v;
.source "SourceFile"

# interfaces
.implements Lq2/e;
.implements LC2/y;
.implements Landroid/widget/Checkable;


# static fields
.field public static final w:Landroid/graphics/Rect;

.field public static final x:[I

.field public static final y:[I


# instance fields
.field public h:Lq2/f;

.field public i:Landroid/graphics/drawable/InsetDrawable;

.field public j:Landroid/graphics/drawable/RippleDrawable;

.field public k:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:I

.field public s:Ljava/lang/CharSequence;

.field public final t:Landroid/graphics/Rect;

.field public final u:Landroid/graphics/RectF;

.field public final v:Lq2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->w:Landroid/graphics/Rect;

    const v0, 0x10100a1

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/chip/Chip;->x:[I

    const v0, 0x101009f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/chip/Chip;->y:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040101

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const v1, 0x7f140461

    move-object/from16 v2, p1

    .line 3
    invoke-static {v2, v7, v8, v1}, LH2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lk/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->t:Landroid/graphics/Rect;

    .line 5
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->u:Landroid/graphics/RectF;

    .line 6
    new-instance v1, Lq2/b;

    invoke-direct {v1, v0}, Lq2/b;-><init>(Lcom/google/android/material/chip/Chip;)V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->v:Lq2/b;

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x800013

    const/4 v11, 0x1

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "background"

    const-string v2, "http://schemas.android.com/apk/res/android"

    .line 8
    invoke-interface {v7, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Chip"

    if-eqz v1, :cond_1

    const-string v1, "Do not set the background; Chip manages its own background drawable."

    .line 9
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "drawableLeft"

    .line 10
    invoke-interface {v7, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_42

    const-string v1, "drawableStart"

    .line 11
    invoke-interface {v7, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_41

    const-string v1, "drawableEnd"

    .line 12
    invoke-interface {v7, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Please set end drawable using R.attr#closeIcon."

    if-nez v1, :cond_40

    const-string v1, "drawableRight"

    .line 13
    invoke-interface {v7, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3f

    const-string v1, "singleLine"

    .line 14
    invoke-interface {v7, v2, v1, v11}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "lines"

    .line 15
    invoke-interface {v7, v2, v1, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v11, :cond_3e

    const-string v1, "minLines"

    .line 16
    invoke-interface {v7, v2, v1, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v11, :cond_3e

    const-string v1, "maxLines"

    .line 17
    invoke-interface {v7, v2, v1, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v11, :cond_3e

    const-string v1, "gravity"

    .line 18
    invoke-interface {v7, v2, v1, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v10, :cond_2

    const-string v1, "Chip text must be vertically center and start aligned"

    .line 19
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_2
    :goto_0
    new-instance v12, Lq2/f;

    invoke-direct {v12, v9, v7, v8}, Lq2/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iget-object v1, v12, Lq2/f;->g0:Landroid/content/Context;

    sget-object v13, Li2/a;->d:[I

    const/4 v14, 0x0

    new-array v6, v14, [I

    const v5, 0x7f140461

    move-object/from16 v2, p2

    move-object v3, v13

    move/from16 v4, p3

    .line 22
    invoke-static/range {v1 .. v6}, Lx2/r;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v15, 0x25

    .line 23
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iput-boolean v2, v12, Lq2/f;->H0:Z

    .line 24
    iget-object v2, v12, Lq2/f;->g0:Landroid/content/Context;

    const/16 v3, 0x18

    .line 25
    invoke-static {v2, v1, v3}, LA2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 26
    iget-object v3, v12, Lq2/f;->C:Landroid/content/res/ColorStateList;

    if-eq v3, v2, :cond_3

    .line 27
    iput-object v2, v12, Lq2/f;->C:Landroid/content/res/ColorStateList;

    .line 28
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v12, v2}, Lq2/f;->onStateChange([I)Z

    .line 29
    :cond_3
    iget-object v2, v12, Lq2/f;->g0:Landroid/content/Context;

    const/16 v3, 0xb

    .line 30
    invoke-static {v2, v1, v3}, LA2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 31
    iget-object v3, v12, Lq2/f;->D:Landroid/content/res/ColorStateList;

    if-eq v3, v2, :cond_4

    .line 32
    iput-object v2, v12, Lq2/f;->D:Landroid/content/res/ColorStateList;

    .line 33
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v12, v2}, Lq2/f;->onStateChange([I)Z

    :cond_4
    const/16 v2, 0x13

    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 35
    iget v4, v12, Lq2/f;->E:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_5

    .line 36
    iput v2, v12, Lq2/f;->E:F

    .line 37
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    .line 38
    invoke-virtual {v12}, Lq2/f;->w()V

    :cond_5
    const/16 v2, 0xc

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 41
    iget v4, v12, Lq2/f;->F:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_6

    .line 42
    iput v2, v12, Lq2/f;->F:F

    .line 43
    iget-object v4, v12, LC2/i;->d:LC2/h;

    iget-object v4, v4, LC2/h;->a:LC2/n;

    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    new-instance v5, LC2/m;

    invoke-direct {v5, v4}, LC2/m;-><init>(LC2/n;)V

    .line 46
    new-instance v4, LC2/a;

    invoke-direct {v4, v2}, LC2/a;-><init>(F)V

    iput-object v4, v5, LC2/m;->e:LC2/c;

    .line 47
    new-instance v4, LC2/a;

    invoke-direct {v4, v2}, LC2/a;-><init>(F)V

    iput-object v4, v5, LC2/m;->f:LC2/c;

    .line 48
    new-instance v4, LC2/a;

    invoke-direct {v4, v2}, LC2/a;-><init>(F)V

    iput-object v4, v5, LC2/m;->g:LC2/c;

    .line 49
    new-instance v4, LC2/a;

    invoke-direct {v4, v2}, LC2/a;-><init>(F)V

    iput-object v4, v5, LC2/m;->h:LC2/c;

    .line 50
    new-instance v2, LC2/n;

    invoke-direct {v2, v5}, LC2/n;-><init>(LC2/m;)V

    .line 51
    invoke-virtual {v12, v2}, LC2/i;->b(LC2/n;)V

    .line 52
    :cond_6
    iget-object v2, v12, Lq2/f;->g0:Landroid/content/Context;

    const/16 v4, 0x16

    .line 53
    invoke-static {v2, v1, v4}, LA2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 54
    iget-object v4, v12, Lq2/f;->G:Landroid/content/res/ColorStateList;

    if-eq v4, v2, :cond_8

    .line 55
    iput-object v2, v12, Lq2/f;->G:Landroid/content/res/ColorStateList;

    .line 56
    iget-boolean v4, v12, Lq2/f;->H0:Z

    if-eqz v4, :cond_7

    .line 57
    iget-object v4, v12, LC2/i;->d:LC2/h;

    iget-object v5, v4, LC2/h;->d:Landroid/content/res/ColorStateList;

    if-eq v5, v2, :cond_7

    .line 58
    iput-object v2, v4, LC2/h;->d:Landroid/content/res/ColorStateList;

    .line 59
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v12, v2}, Lq2/f;->onStateChange([I)Z

    .line 60
    :cond_7
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v12, v2}, Lq2/f;->onStateChange([I)Z

    :cond_8
    const/16 v2, 0x17

    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 62
    iget v4, v12, Lq2/f;->H:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_a

    .line 63
    iput v2, v12, Lq2/f;->H:F

    .line 64
    iget-object v4, v12, Lq2/f;->h0:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    iget-boolean v4, v12, Lq2/f;->H0:Z

    if-eqz v4, :cond_9

    .line 66
    iget-object v4, v12, LC2/i;->d:LC2/h;

    iput v2, v4, LC2/h;->k:F

    .line 67
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    .line 68
    :cond_9
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    .line 69
    :cond_a
    iget-object v2, v12, Lq2/f;->g0:Landroid/content/Context;

    const/16 v4, 0x24

    invoke-static {v2, v1, v4}, LA2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 70
    iget-object v4, v12, Lq2/f;->I:Landroid/content/res/ColorStateList;

    if-eq v4, v2, :cond_d

    .line 71
    iput-object v2, v12, Lq2/f;->I:Landroid/content/res/ColorStateList;

    .line 72
    iget-boolean v4, v12, Lq2/f;->B0:Z

    if-eqz v4, :cond_c

    sget v4, Lcom/google/android/material/ripple/a;->a:I

    if-eqz v2, :cond_b

    goto :goto_1

    .line 73
    :cond_b
    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_1

    :cond_c
    const/4 v2, 0x0

    .line 74
    :goto_1
    iput-object v2, v12, Lq2/f;->C0:Landroid/content/res/ColorStateList;

    .line 75
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v12, v2}, Lq2/f;->onStateChange([I)Z

    :cond_d
    const/4 v2, 0x5

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_e

    const-string v2, ""

    .line 77
    :cond_e
    iget-object v4, v12, Lq2/f;->J:Ljava/lang/CharSequence;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 78
    iput-object v2, v12, Lq2/f;->J:Ljava/lang/CharSequence;

    .line 79
    iget-object v2, v12, Lq2/f;->m0:Lx2/p;

    .line 80
    iput-boolean v11, v2, Lx2/p;->d:Z

    .line 81
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    .line 82
    invoke-virtual {v12}, Lq2/f;->w()V

    .line 83
    :cond_f
    iget-object v2, v12, Lq2/f;->g0:Landroid/content/Context;

    .line 84
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 85
    invoke-virtual {v1, v14, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_10

    .line 86
    new-instance v5, LA2/g;

    invoke-direct {v5, v4, v2}, LA2/g;-><init>(ILandroid/content/Context;)V

    goto :goto_2

    :cond_10
    const/4 v5, 0x0

    .line 87
    :goto_2
    iget v2, v5, LA2/g;->k:F

    .line 88
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 89
    iput v2, v5, LA2/g;->k:F

    .line 90
    invoke-virtual {v12, v5}, Lq2/f;->B(LA2/g;)V

    const/4 v2, 0x3

    .line 91
    invoke-virtual {v1, v2, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-eq v4, v11, :cond_13

    const/4 v5, 0x2

    if-eq v4, v5, :cond_12

    if-eq v4, v2, :cond_11

    goto :goto_3

    .line 92
    :cond_11
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 93
    iput-object v2, v12, Lq2/f;->E0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_3

    .line 94
    :cond_12
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 95
    iput-object v2, v12, Lq2/f;->E0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_3

    .line 96
    :cond_13
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 97
    iput-object v2, v12, Lq2/f;->E0:Landroid/text/TextUtils$TruncateAt;

    :goto_3
    const/16 v2, 0x12

    .line 98
    invoke-virtual {v1, v2, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v12, v2}, Lq2/f;->z(Z)V

    const-string v2, "http://schemas.android.com/apk/res-auto"

    if-eqz v7, :cond_14

    const-string v4, "chipIconEnabled"

    .line 99
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    const-string v4, "chipIconVisible"

    .line 100
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    const/16 v4, 0xf

    .line 101
    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v12, v4}, Lq2/f;->z(Z)V

    .line 102
    :cond_14
    iget-object v4, v12, Lq2/f;->g0:Landroid/content/Context;

    const/16 v5, 0xe

    invoke-static {v4, v1, v5}, LA2/d;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 103
    iget-object v5, v12, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_15

    .line 104
    instance-of v6, v5, LF/c;

    if-eqz v6, :cond_16

    .line 105
    check-cast v5, LF/c;

    invoke-interface {v5}, LF/c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_4

    :cond_15
    const/4 v5, 0x0

    :cond_16
    :goto_4
    if-eq v5, v4, :cond_19

    .line 106
    invoke-virtual {v12}, Lq2/f;->r()F

    move-result v6

    if-eqz v4, :cond_17

    .line 107
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_5

    :cond_17
    const/4 v4, 0x0

    :goto_5
    iput-object v4, v12, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {v12}, Lq2/f;->r()F

    move-result v4

    .line 109
    invoke-static {v5}, Lq2/f;->F(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v12}, Lq2/f;->D()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 111
    iget-object v5, v12, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v5}, Lq2/f;->p(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_18
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    cmpl-float v4, v6, v4

    if-eqz v4, :cond_19

    .line 113
    invoke-virtual {v12}, Lq2/f;->w()V

    :cond_19
    const/16 v4, 0x11

    .line 114
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 115
    iget-object v5, v12, Lq2/f;->g0:Landroid/content/Context;

    .line 116
    invoke-static {v5, v1, v4}, LA2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 117
    iput-boolean v11, v12, Lq2/f;->O:Z

    .line 118
    iget-object v5, v12, Lq2/f;->M:Landroid/content/res/ColorStateList;

    if-eq v5, v4, :cond_1b

    .line 119
    iput-object v4, v12, Lq2/f;->M:Landroid/content/res/ColorStateList;

    .line 120
    invoke-virtual {v12}, Lq2/f;->D()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 121
    iget-object v5, v12, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    .line 122
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 123
    :cond_1a
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v12, v4}, Lq2/f;->onStateChange([I)Z

    :cond_1b
    const/16 v4, 0x10

    const/high16 v5, -0x40800000    # -1.0f

    .line 124
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 125
    iget v5, v12, Lq2/f;->N:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_1c

    .line 126
    invoke-virtual {v12}, Lq2/f;->r()F

    move-result v5

    .line 127
    iput v4, v12, Lq2/f;->N:F

    .line 128
    invoke-virtual {v12}, Lq2/f;->r()F

    move-result v4

    .line 129
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_1c

    .line 130
    invoke-virtual {v12}, Lq2/f;->w()V

    :cond_1c
    const/16 v4, 0x1f

    .line 131
    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v12, v4}, Lq2/f;->A(Z)V

    if-eqz v7, :cond_1d

    const-string v4, "closeIconEnabled"

    .line 132
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1d

    const-string v4, "closeIconVisible"

    .line 133
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1d

    const/16 v4, 0x1a

    .line 134
    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v12, v4}, Lq2/f;->A(Z)V

    .line 135
    :cond_1d
    iget-object v4, v12, Lq2/f;->g0:Landroid/content/Context;

    const/16 v5, 0x19

    invoke-static {v4, v1, v5}, LA2/d;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 136
    iget-object v5, v12, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1e

    .line 137
    instance-of v6, v5, LF/c;

    if-eqz v6, :cond_1f

    .line 138
    check-cast v5, LF/c;

    invoke-interface {v5}, LF/c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_6

    :cond_1e
    const/4 v5, 0x0

    :cond_1f
    :goto_6
    if-eq v5, v4, :cond_23

    .line 139
    invoke-virtual {v12}, Lq2/f;->s()F

    move-result v6

    if-eqz v4, :cond_20

    .line 140
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_7

    :cond_20
    const/4 v4, 0x0

    :goto_7
    iput-object v4, v12, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 141
    sget v4, Lcom/google/android/material/ripple/a;->a:I

    .line 142
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    .line 143
    iget-object v10, v12, Lq2/f;->I:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_21

    goto :goto_8

    .line 144
    :cond_21
    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 145
    :goto_8
    iget-object v15, v12, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    sget-object v11, Lq2/f;->J0:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v4, v10, v15, v11}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, v12, Lq2/f;->R:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {v12}, Lq2/f;->s()F

    move-result v4

    .line 147
    invoke-static {v5}, Lq2/f;->F(Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-virtual {v12}, Lq2/f;->E()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 149
    iget-object v5, v12, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v5}, Lq2/f;->p(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_22
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    cmpl-float v4, v6, v4

    if-eqz v4, :cond_23

    .line 151
    invoke-virtual {v12}, Lq2/f;->w()V

    .line 152
    :cond_23
    iget-object v4, v12, Lq2/f;->g0:Landroid/content/Context;

    const/16 v5, 0x1e

    .line 153
    invoke-static {v4, v1, v5}, LA2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 154
    iget-object v5, v12, Lq2/f;->S:Landroid/content/res/ColorStateList;

    if-eq v5, v4, :cond_25

    .line 155
    iput-object v4, v12, Lq2/f;->S:Landroid/content/res/ColorStateList;

    .line 156
    invoke-virtual {v12}, Lq2/f;->E()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 157
    iget-object v5, v12, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    .line 158
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 159
    :cond_24
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v12, v4}, Lq2/f;->onStateChange([I)Z

    :cond_25
    const/16 v4, 0x1c

    .line 160
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 161
    iget v5, v12, Lq2/f;->T:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_26

    .line 162
    iput v4, v12, Lq2/f;->T:F

    .line 163
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    .line 164
    invoke-virtual {v12}, Lq2/f;->E()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 165
    invoke-virtual {v12}, Lq2/f;->w()V

    :cond_26
    const/4 v4, 0x6

    .line 166
    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 167
    iget-boolean v5, v12, Lq2/f;->U:Z

    if-eq v5, v4, :cond_28

    .line 168
    iput-boolean v4, v12, Lq2/f;->U:Z

    .line 169
    invoke-virtual {v12}, Lq2/f;->r()F

    move-result v5

    if-nez v4, :cond_27

    .line 170
    iget-boolean v4, v12, Lq2/f;->t0:Z

    if-eqz v4, :cond_27

    .line 171
    iput-boolean v14, v12, Lq2/f;->t0:Z

    .line 172
    :cond_27
    invoke-virtual {v12}, Lq2/f;->r()F

    move-result v4

    .line 173
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_28

    .line 174
    invoke-virtual {v12}, Lq2/f;->w()V

    :cond_28
    const/16 v4, 0xa

    .line 175
    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v12, v4}, Lq2/f;->y(Z)V

    if-eqz v7, :cond_29

    const-string v4, "checkedIconEnabled"

    .line 176
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_29

    const-string v4, "checkedIconVisible"

    .line 177
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    const/16 v2, 0x8

    .line 178
    invoke-virtual {v1, v2, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v12, v2}, Lq2/f;->y(Z)V

    .line 179
    :cond_29
    iget-object v2, v12, Lq2/f;->g0:Landroid/content/Context;

    const/4 v4, 0x7

    invoke-static {v2, v1, v4}, LA2/d;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 180
    iget-object v4, v12, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    if-eq v4, v2, :cond_2a

    .line 181
    invoke-virtual {v12}, Lq2/f;->r()F

    move-result v4

    .line 182
    iput-object v2, v12, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    .line 183
    invoke-virtual {v12}, Lq2/f;->r()F

    move-result v2

    .line 184
    iget-object v5, v12, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    invoke-static {v5}, Lq2/f;->F(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v5, v12, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v5}, Lq2/f;->p(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_2a

    .line 187
    invoke-virtual {v12}, Lq2/f;->w()V

    :cond_2a
    const/16 v2, 0x9

    .line 188
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 189
    iget-object v4, v12, Lq2/f;->g0:Landroid/content/Context;

    .line 190
    invoke-static {v4, v1, v2}, LA2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 191
    iget-object v4, v12, Lq2/f;->X:Landroid/content/res/ColorStateList;

    if-eq v4, v2, :cond_2d

    .line 192
    iput-object v2, v12, Lq2/f;->X:Landroid/content/res/ColorStateList;

    .line 193
    iget-boolean v4, v12, Lq2/f;->V:Z

    if-eqz v4, :cond_2b

    iget-object v4, v12, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2b

    iget-boolean v4, v12, Lq2/f;->U:Z

    if-eqz v4, :cond_2b

    const/4 v4, 0x1

    goto :goto_9

    :cond_2b
    move v4, v14

    :goto_9
    if-eqz v4, :cond_2c

    .line 194
    iget-object v4, v12, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    .line 195
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 196
    :cond_2c
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v12, v2}, Lq2/f;->onStateChange([I)Z

    .line 197
    :cond_2d
    iget-object v2, v12, Lq2/f;->g0:Landroid/content/Context;

    const/16 v4, 0x27

    .line 198
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 199
    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_2e

    .line 200
    invoke-static {v4, v2}, Lj2/g;->a(ILandroid/content/Context;)Lj2/g;

    .line 201
    :cond_2e
    iget-object v2, v12, Lq2/f;->g0:Landroid/content/Context;

    const/16 v4, 0x21

    .line 202
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 203
    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_2f

    .line 204
    invoke-static {v4, v2}, Lj2/g;->a(ILandroid/content/Context;)Lj2/g;

    :cond_2f
    const/16 v2, 0x15

    .line 205
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 206
    iget v4, v12, Lq2/f;->Y:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_30

    .line 207
    iput v2, v12, Lq2/f;->Y:F

    .line 208
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    .line 209
    invoke-virtual {v12}, Lq2/f;->w()V

    :cond_30
    const/16 v2, 0x23

    .line 210
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 211
    iget v4, v12, Lq2/f;->Z:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_31

    .line 212
    invoke-virtual {v12}, Lq2/f;->r()F

    move-result v4

    .line 213
    iput v2, v12, Lq2/f;->Z:F

    .line 214
    invoke-virtual {v12}, Lq2/f;->r()F

    move-result v2

    .line 215
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_31

    .line 216
    invoke-virtual {v12}, Lq2/f;->w()V

    :cond_31
    const/16 v2, 0x22

    .line 217
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 218
    iget v4, v12, Lq2/f;->a0:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_32

    .line 219
    invoke-virtual {v12}, Lq2/f;->r()F

    move-result v4

    .line 220
    iput v2, v12, Lq2/f;->a0:F

    .line 221
    invoke-virtual {v12}, Lq2/f;->r()F

    move-result v2

    .line 222
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_32

    .line 223
    invoke-virtual {v12}, Lq2/f;->w()V

    :cond_32
    const/16 v2, 0x29

    .line 224
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 225
    iget v4, v12, Lq2/f;->b0:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_33

    .line 226
    iput v2, v12, Lq2/f;->b0:F

    .line 227
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    .line 228
    invoke-virtual {v12}, Lq2/f;->w()V

    :cond_33
    const/16 v2, 0x28

    .line 229
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 230
    iget v4, v12, Lq2/f;->c0:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_34

    .line 231
    iput v2, v12, Lq2/f;->c0:F

    .line 232
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    .line 233
    invoke-virtual {v12}, Lq2/f;->w()V

    :cond_34
    const/16 v2, 0x1d

    .line 234
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 235
    iget v4, v12, Lq2/f;->d0:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_35

    .line 236
    iput v2, v12, Lq2/f;->d0:F

    .line 237
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    .line 238
    invoke-virtual {v12}, Lq2/f;->E()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 239
    invoke-virtual {v12}, Lq2/f;->w()V

    :cond_35
    const/16 v2, 0x1b

    .line 240
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 241
    iget v4, v12, Lq2/f;->e0:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_36

    .line 242
    iput v2, v12, Lq2/f;->e0:F

    .line 243
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    .line 244
    invoke-virtual {v12}, Lq2/f;->E()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 245
    invoke-virtual {v12}, Lq2/f;->w()V

    :cond_36
    const/16 v2, 0xd

    .line 246
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 247
    iget v3, v12, Lq2/f;->f0:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_37

    .line 248
    iput v2, v12, Lq2/f;->f0:F

    .line 249
    invoke-virtual {v12}, LC2/i;->invalidateSelf()V

    .line 250
    invoke-virtual {v12}, Lq2/f;->w()V

    :cond_37
    const/4 v2, 0x4

    const v3, 0x7fffffff

    .line 251
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 252
    iput v2, v12, Lq2/f;->G0:I

    .line 253
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const v5, 0x7f140461

    new-array v6, v14, [I

    move-object v1, v9

    move-object/from16 v2, p2

    move-object v3, v13

    move/from16 v4, p3

    const/4 v10, 0x0

    .line 254
    invoke-static/range {v1 .. v6}, Lx2/r;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x20

    .line 255
    invoke-virtual {v1, v2, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/chip/Chip;->p:Z

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0x30

    int-to-float v3, v3

    .line 258
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-double v2, v2

    .line 259
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/16 v3, 0x14

    .line 260
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-double v2, v2

    .line 261
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/google/android/material/chip/Chip;->r:I

    .line 262
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 263
    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eq v1, v12, :cond_39

    if-eqz v1, :cond_38

    .line 264
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lq2/f;->D0:Ljava/lang/ref/WeakReference;

    .line 265
    :cond_38
    iput-object v12, v0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    .line 266
    iput-boolean v14, v12, Lq2/f;->F0:Z

    .line 267
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v12, Lq2/f;->D0:Ljava/lang/ref/WeakReference;

    .line 268
    iget v1, v0, Lcom/google/android/material/chip/Chip;->r:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->c(I)V

    .line 269
    :cond_39
    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    .line 270
    invoke-static/range {p0 .. p0}, Landroidx/core/view/D;->d(Landroid/view/View;)F

    move-result v1

    .line 271
    invoke-virtual {v12, v1}, LC2/i;->k(F)V

    const v5, 0x7f140461

    new-array v6, v14, [I

    move-object v1, v9

    move-object/from16 v2, p2

    move-object v3, v13

    move/from16 v4, p3

    .line 272
    invoke-static/range {v1 .. v6}, Lx2/r;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x25

    .line 273
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    .line 274
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    new-instance v1, Lq2/d;

    invoke-direct {v1, v0, v0}, Lq2/d;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->e()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 277
    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz v1, :cond_3a

    .line 278
    iget-boolean v1, v1, Lq2/f;->P:Z

    .line 279
    :cond_3a
    invoke-static {v0, v10}, Landroidx/core/view/J;->h(Landroid/view/View;Landroidx/core/view/b;)V

    if-nez v2, :cond_3b

    .line 280
    new-instance v1, Lq2/c;

    invoke-direct {v1, v0}, Lq2/c;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 281
    :cond_3b
    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->l:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 282
    iget-object v1, v12, Lq2/f;->J:Ljava/lang/CharSequence;

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v1, v12, Lq2/f;->E0:Landroid/text/TextUtils$TruncateAt;

    .line 285
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->h()V

    .line 287
    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    .line 288
    iget-boolean v1, v1, Lq2/f;->F0:Z

    if-nez v1, :cond_3c

    const/4 v1, 0x1

    .line 289
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setLines(I)V

    .line 290
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setHorizontallyScrolling(Z)V

    :cond_3c
    const v1, 0x800013

    .line 291
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 293
    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->p:Z

    if-eqz v1, :cond_3d

    .line 294
    iget v1, v0, Lcom/google/android/material/chip/Chip;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setMinHeight(I)V

    .line 295
    :cond_3d
    invoke-static/range {p0 .. p0}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result v1

    .line 296
    iput v1, v0, Lcom/google/android/material/chip/Chip;->q:I

    .line 297
    new-instance v1, Lq2/a;

    invoke-direct {v1, v0}, Lq2/a;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-super {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    .line 298
    :cond_3e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_3f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/Chip;->r:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->c(I)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidateOutline()V

    return-void
.end method

.method public final b(LC2/n;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    invoke-virtual {p0, p1}, LC2/i;->b(LC2/n;)V

    return-void
.end method

.method public final c(I)V
    .locals 11

    iput p1, p0, Lcom/google/android/material/chip/Chip;->r:I

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->p:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_1

    if-eqz p1, :cond_2

    iput-object v2, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, v3}, Landroid/widget/CheckBox;->setMinWidth(I)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz p1, :cond_0

    iget v1, p1, Lq2/f;->E:F

    :cond_0
    float-to-int p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setMinHeight(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    iget v0, v0, Lq2/f;->E:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    invoke-virtual {v4}, Lq2/f;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-gtz v4, :cond_7

    if-gtz v0, :cond_7

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_5

    if-eqz p1, :cond_6

    iput-object v2, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, v3}, Landroid/widget/CheckBox;->setMinWidth(I)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz p1, :cond_4

    iget v1, p1, Lq2/f;->E:F

    :cond_4
    float-to-int p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setMinHeight(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    :cond_6
    :goto_1
    return-void

    :cond_7
    if-lez v4, :cond_8

    div-int/lit8 v4, v4, 0x2

    move v9, v4

    goto :goto_2

    :cond_8
    move v9, v3

    :goto_2
    if-lez v0, :cond_9

    div-int/lit8 v3, v0, 0x2

    :cond_9
    move v10, v3

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_a

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, v10, :cond_a

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v10, :cond_a

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, v9, :cond_a

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v9, :cond_a

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getMinHeight()I

    move-result v0

    if-eq v0, p1, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setMinHeight(I)V

    :cond_b
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getMinWidth()I

    move-result v0

    if-eq v0, p1, :cond_c

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setMinWidth(I)V

    :cond_c
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v6, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    move-object v5, p1

    move v7, v9

    move v8, v10

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    return-void
.end method

.method public final d()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->u:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->u:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final drawableStateChanged()V
    .locals 5

    invoke-super {p0}, Lk/v;->drawableStateChanged()V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lq2/f;->v(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->o:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->m:Z

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    new-array v2, v2, [I

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x101009e

    aput v3, v2, v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->o:Z

    if-eqz v4, :cond_5

    const v4, 0x101009c

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_5
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v4, :cond_6

    const v4, 0x1010367

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_6
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->m:Z

    if-eqz v4, :cond_7

    const v4, 0x10100a7

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x10100a1

    aput v4, v2, v3

    :cond_8
    iget-object v3, v0, Lq2/f;->A0:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_9

    iput-object v2, v0, Lq2/f;->A0:[I

    invoke-virtual {v0}, Lq2/f;->E()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lq2/f;->x([I[I)Z

    move-result v0

    move v1, v0

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    :cond_a
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    instance-of v0, p0, LF/c;

    if-eqz v0, :cond_1

    check-cast p0, LF/c;

    invoke-interface {p0}, LF/c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final f()V
    .locals 5

    sget v0, Lcom/google/android/material/ripple/a;->a:I

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    iget-object v1, v1, Lq2/f;->I:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    :cond_1
    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    iget-boolean v1, v0, Lq2/f;->B0:Z

    if-eqz v1, :cond_2

    iput-boolean v2, v0, Lq2/f;->B0:Z

    iput-object v4, v0, Lq2/f;->C0:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lq2/f;->onStateChange([I)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/graphics/drawable/RippleDrawable;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v0}, Landroidx/core/view/x;->m(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    return-void
.end method

.method public final g()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lq2/f;->f0:F

    iget v2, v0, Lq2/f;->c0:F

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lq2/f;->s()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    iget v2, v1, Lq2/f;->Y:F

    iget v3, v1, Lq2/f;->b0:F

    add-float/2addr v2, v3

    invoke-virtual {v1}, Lq2/f;->r()F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v3

    sget-object v4, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v1, v2, v0, v3}, Landroidx/core/view/y;->h(Landroid/view/View;IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->s:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->s:Ljava/lang/CharSequence;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lq2/f;->U:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "android.widget.Button"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Lq2/h;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    check-cast p0, Lq2/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v1

    :cond_4
    const-string p0, "android.view.View"

    return-object p0
.end method

.method public final getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lq2/f;->E0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getFocusedRect(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final h()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lq2/f;->m0:Lx2/p;

    iget-object v1, v1, Lx2/p;->f:LA2/g;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->v:Lq2/b;

    invoke-virtual {v1, v2, v0, p0}, LA2/g;->d(Landroid/content/Context;Landroid/text/TextPaint;LA2/h;)V

    :cond_2
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckBox;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    invoke-static {p0, v0}, LC2/j;->b(Landroid/view/View;LC2/i;)V

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/chip/Chip;->x:[I

    invoke-static {p1, v0}, Landroid/widget/CheckBox;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lq2/f;->U:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/material/chip/Chip;->y:[I

    invoke-static {p1, p0}, Landroid/widget/CheckBox;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/CheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lq2/f;->U:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lq2/h;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lq2/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    const v0, 0x7f0a02b8

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    move v1, v0

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-static/range {v1 .. v6}, LM/d;->a(IIIIZZ)LM/d;

    move-result-object p0

    iget-object p0, p0, LM/d;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :cond_2
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x3ea

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onRtlPropertiesChanged(I)V

    iget v0, p0, Lcom/google/android/material/chip/Chip;->q:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/Chip;->q:I

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->m:Z

    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/google/android/material/chip/Chip;->m:Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->m:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->m:Z

    if-eqz v1, :cond_6

    iput-boolean v3, p0, Lcom/google/android/material/chip/Chip;->m:Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_5

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->m:Z

    if-eq v0, v2, :cond_4

    iput-boolean v2, p0, Lcom/google/android/material/chip/Chip;->m:Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    :cond_4
    :goto_1
    move v0, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v3

    :cond_6
    :goto_3
    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    :cond_8
    :goto_4
    return v2
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    :cond_0
    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_1

    const-string p0, "Chip"

    const-string p1, "Do not set the background; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    const-string p0, "Chip"

    const-string p1, "Do not set the background color; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    :cond_0
    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_1

    const-string p0, "Chip"

    const-string p1, "Do not set the background drawable; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lk/v;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    const-string p0, "Chip"

    const-string p1, "Do not set the background resource; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    const-string p0, "Chip"

    const-string p1, "Do not set the background tint list; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    const-string p0, "Chip"

    const-string p1, "Do not set the background tint mode; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->l:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lq2/f;->U:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lk/v;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lk/v;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setElevation(F)V

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LC2/i;->k(F)V

    :cond_0
    return-void
.end method

.method public final setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz p0, :cond_1

    iput-object p1, p0, Lq2/f;->E0:Landroid/text/TextUtils$TruncateAt;

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Text within a chip are not allowed to scroll."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setGravity(I)V
    .locals 1

    const v0, 0x800013

    if-eq p1, v0, :cond_0

    const-string p0, "Chip"

    const-string p1, "Chip text must be vertically center and start aligned"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public final setLayoutDirection(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLayoutDirection(I)V

    return-void
.end method

.method public final setLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLines(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setMaxLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMaxLines(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setMaxWidth(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMaxWidth(I)V

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz p0, :cond_0

    iput p1, p0, Lq2/f;->G0:I

    :cond_0
    return-void
.end method

.method public final setMinLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMinLines(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public final setSingleLine(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setSingleLine(Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-boolean v0, v0, Lq2/f;->F0:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz p0, :cond_3

    iget-object p2, p0, Lq2/f;->J:Ljava/lang/CharSequence;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iput-object p1, p0, Lq2/f;->J:Ljava/lang/CharSequence;

    iget-object p1, p0, Lq2/f;->m0:Lx2/p;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lx2/p;->d:Z

    invoke-virtual {p0}, LC2/i;->invalidateSelf()V

    invoke-virtual {p0}, Lq2/f;->w()V

    :cond_3
    return-void
.end method

.method public final setTextAppearance(I)V
    .locals 3

    .line 5
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setTextAppearance(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, LA2/g;

    iget-object v2, v0, Lq2/f;->g0:Landroid/content/Context;

    invoke-direct {v1, p1, v2}, LA2/g;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lq2/f;->B(LA2/g;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->setTextAppearance(Landroid/content/Context;I)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, LA2/g;

    iget-object v1, p1, Lq2/f;->g0:Landroid/content/Context;

    invoke-direct {v0, p2, v1}, LA2/g;-><init>(ILandroid/content/Context;)V

    invoke-virtual {p1, v0}, Lq2/f;->B(LA2/g;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return-void
.end method

.method public final setTextSize(IF)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->setTextSize(IF)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iget-object p2, v0, Lq2/f;->m0:Lx2/p;

    iget-object v1, p2, Lx2/p;->f:LA2/g;

    if-eqz v1, :cond_0

    iput p1, v1, LA2/g;->k:F

    iget-object p2, p2, Lx2/p;->a:Landroid/text/TextPaint;

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v0}, Lq2/f;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return-void
.end method
