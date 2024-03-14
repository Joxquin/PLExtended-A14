.class public final Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final iconInsetSize:I

.field private final mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

.field private final mCanvasSize:I

.field private final mDoubleShadowNode:Landroid/graphics/RenderNode;

.field private final mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

.field private final mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    const-string v0, "keyShadowInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ambientShadowInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconDrawable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p5, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->iconInsetSize:I

    mul-int/lit8 v0, p5, 0x2

    add-int/2addr v0, p4

    iput v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mCanvasSize:I

    iput-object p1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    iput-object p2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {p2, p3, p5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object p2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p2, p1, p1, v0, v0}, Landroid/graphics/drawable/InsetDrawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->createShadowRenderNode()Landroid/graphics/RenderNode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    return-void
.end method

.method private final createShadowRenderEffect(FFFF)Landroid/graphics/RenderEffect;
    .locals 1

    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v0, 0x0

    invoke-static {p4, v0, v0, v0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p4

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p4, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object p4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p1, p1, p4}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    invoke-static {p2, p3, p1}, Landroid/graphics/RenderEffect;->createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    const-string p1, "createColorFilterEffect(\u2026)\n            )\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final createShadowRenderNode()Landroid/graphics/RenderNode;
    .locals 6

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "DoubleShadowNode"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mCanvasSize:I

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    iget-object v1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-virtual {v1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getBlur()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-virtual {v2}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getOffsetX()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-virtual {v3}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getOffsetY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-virtual {v4}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getAlpha()F

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->createShadowRenderEffect(FFFF)Landroid/graphics/RenderEffect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-virtual {v2}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getBlur()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-virtual {v3}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getOffsetX()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-virtual {v4}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getOffsetY()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-virtual {v5}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getAlpha()F

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->createShadowRenderEffect(FFFF)Landroid/graphics/RenderEffect;

    move-result-object p0

    sget-object v2, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    invoke-static {v1, p0, v2}, Landroid/graphics/RenderEffect;->createBlendModeEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;Landroid/graphics/BlendMode;)Landroid/graphics/RenderEffect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getIconInsetSize()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->iconInsetSize:I

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mCanvasSize:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mCanvasSize:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
