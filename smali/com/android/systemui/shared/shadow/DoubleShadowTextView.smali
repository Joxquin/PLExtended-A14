.class public Lcom/android/systemui/shared/shadow/DoubleShadowTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private final mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

.field private final mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    sget-object v0, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView:[I

    .line 7
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    :try_start_0
    sget p2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_keyShadowBlur:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 9
    sget p4, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_keyShadowOffsetX:I

    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    .line 10
    sget v0, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_keyShadowOffsetY:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 11
    sget v1, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_keyShadowAlpha:I

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 12
    new-instance v2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-direct {v2, p2, p4, v0, v1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    .line 13
    iput-object v2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 14
    sget p2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_ambientShadowBlur:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 15
    sget p4, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_ambientShadowOffsetX:I

    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    .line 16
    sget v0, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_ambientShadowOffsetY:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 17
    sget v1, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_ambientShadowAlpha:I

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 18
    new-instance v1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-direct {v1, p2, p4, v0, p3}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    .line 19
    iput-object v1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 20
    sget p2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_drawableIconSize:I

    const/4 p3, 0x0

    .line 21
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 22
    sget p4, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_drawableIconInsetSize:I

    .line 23
    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    .line 25
    filled-new-array {p1, p1, p1, p1}, [Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-string v0, "compoundDrawablesRelative"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v6

    move v8, p3

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v3, v6, v8

    if-eqz v3, :cond_0

    .line 27
    new-instance v9, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;

    .line 28
    iget-object v1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 29
    iget-object v2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    move-object v0, v9

    move v4, p2

    move v5, p4

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;-><init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/graphics/drawable/Drawable;II)V

    aput-object v9, p1, v8

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 31
    :cond_1
    aget-object p2, p1, p3

    const/4 p3, 0x1

    aget-object p3, p1, p3

    const/4 p4, 0x2

    aget-object p4, p1, p4

    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/f;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$onDraw$s-938935918(Lcom/android/systemui/shared/shadow/DoubleShadowTextView;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->INSTANCE:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;

    iget-object v2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    iget-object v3, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    new-instance v6, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;-><init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextView;Landroid/graphics/Canvas;)V

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->applyShadows(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/widget/TextView;Landroid/graphics/Canvas;Lm3/a;)V

    return-void
.end method
