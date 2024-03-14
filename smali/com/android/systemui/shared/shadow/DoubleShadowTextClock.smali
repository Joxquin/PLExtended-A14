.class public final Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;
.super Landroid/widget/TextClock;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$Companion;

.field private static final paddingDividedOffset:I


# instance fields
.field private attributesInput:Landroid/content/res/TypedArray;

.field private mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

.field private mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

.field private resources:Landroid/content/res/Resources;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->Companion:Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$Companion;

    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->paddingDividedOffset:I

    return-void
.end method

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

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/f;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/f;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->initializeAttributes(Landroid/util/AttributeSet;II)V

    return-void
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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/TypedArray;)V
    .locals 1

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 9
    iput-object p6, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->attributesInput:Landroid/content/res/TypedArray;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->resources:Landroid/content/res/Resources;

    .line 11
    invoke-direct {p0, p3, p4, p5}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->initializeAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/Resources;Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/TypedArray;ILkotlin/jvm/internal/f;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 7
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/res/Resources;Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/TypedArray;)V

    return-void
.end method

.method public static final synthetic access$onDraw$s940309185(Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextClock;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private final initializeAttributes(Landroid/util/AttributeSet;II)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->attributesInput:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string p1, "context.obtainStyledAttr\u2026tyleRes\n                )"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->resources:Landroid/content/res/Resources;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "context.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    sget p2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_keyShadowBlur:I

    const/4 p3, 0x0

    invoke-virtual {v0, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    sget v1, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_keyShadowOffsetX:I

    invoke-virtual {v0, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sget v2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_keyShadowOffsetY:I

    invoke-virtual {v0, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v3, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_keyShadowAlpha:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    new-instance v5, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    int-to-float p2, p2

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v5, p2, v1, v2, v3}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    sget p2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_ambientShadowBlur:I

    invoke-virtual {v0, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    sget v1, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_ambientShadowOffsetX:I

    invoke-virtual {v0, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sget v2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_ambientShadowOffsetY:I

    invoke-virtual {v0, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v3, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_ambientShadowAlpha:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    new-instance v4, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    int-to-float p2, p2

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v4, p2, v1, v2, v3}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    sget p2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_removeTextDescent:I

    invoke-virtual {v0, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    sget v1, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_textDescentExtraPadding:I

    invoke-virtual {v0, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-eqz p2, :cond_3

    sget p2, Lcom/android/systemui/shared/R$bool;->dream_overlay_complication_clock_bottom_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    if-eqz p1, :cond_2

    iget p1, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    sget p2, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->paddingDividedOffset:I

    div-int/2addr p1, p2

    add-int/2addr v1, p1

    goto :goto_0

    :cond_2
    iget p1, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    sub-int/2addr v1, p1

    :goto_0
    invoke-virtual {p0, p3, p3, p3, v1}, Landroid/widget/TextClock;->setPaddingRelative(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->INSTANCE:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;

    iget-object v2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    if-eqz v3, :cond_0

    new-instance v6, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$onDraw$1;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$onDraw$1;-><init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;Landroid/graphics/Canvas;)V

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->applyShadows(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/widget/TextView;Landroid/graphics/Canvas;Lm3/a;)V

    return-void

    :cond_0
    const-string p0, "mAmbientShadowInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "mKeyShadowInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v0
.end method
