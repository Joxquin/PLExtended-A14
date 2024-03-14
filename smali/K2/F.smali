.class public final LK2/F;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public c:Landroid/graphics/drawable/InsetDrawable;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public h:Landroid/graphics/RenderNode;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3
    invoke-direct {p0, p1, v0, v1}, LK2/F;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, LK2/F;->i:Z

    .line 6
    iput p3, p0, LK2/F;->a:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p2

    .line 7
    iput p3, p0, LK2/F;->b:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700a2

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, LK2/F;->d:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07021d

    .line 11
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, LK2/F;->e:I

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07021b

    .line 13
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, LK2/F;->f:I

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07021c

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, LK2/F;->g:I

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1, p1, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public static a(IIII)Landroid/graphics/RenderEffect;
    .locals 2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    invoke-static {p3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p0, p0

    sget-object p3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p0, p0, p3}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroid/graphics/RenderEffect;->createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, LK2/F;->c:Landroid/graphics/drawable/InsetDrawable;

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, LK2/F;->a:I

    invoke-direct {v1, p1, v2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v1, p0, LK2/F;->c:Landroid/graphics/drawable/InsetDrawable;

    iget p1, p0, LK2/F;->b:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, p1}, Landroid/graphics/drawable/InsetDrawable;->setBounds(IIII)V

    iget-object p1, p0, LK2/F;->c:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/graphics/RenderNode;

    const-string v1, "DoubleShadowNode"

    invoke-direct {p1, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iget v1, p0, LK2/F;->b:I

    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    iget v1, p0, LK2/F;->d:I

    const/16 v3, 0x30

    invoke-static {v1, v2, v2, v3}, LK2/F;->a(IIII)Landroid/graphics/RenderEffect;

    move-result-object v1

    iget v2, p0, LK2/F;->e:I

    iget v3, p0, LK2/F;->f:I

    iget v4, p0, LK2/F;->g:I

    const/16 v5, 0x48

    invoke-static {v2, v3, v4, v5}, LK2/F;->a(IIII)Landroid/graphics/RenderEffect;

    move-result-object v2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    invoke-static {v1, v2, v0}, Landroid/graphics/RenderEffect;->createBlendModeEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;Landroid/graphics/BlendMode;)Landroid/graphics/RenderEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    move-object v0, p1

    :cond_2
    :goto_0
    iput-object v0, p0, LK2/F;->h:Landroid/graphics/RenderNode;

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LK2/F;->h:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, LK2/F;->i:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LK2/F;->h:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    iget-object v1, p0, LK2/F;->c:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, LK2/F;->h:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    :cond_0
    iget-object v0, p0, LK2/F;->h:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    :cond_1
    iget-object p0, p0, LK2/F;->c:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, LK2/F;->b:I

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, LK2/F;->b:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    iget-object p0, p0, LK2/F;->c:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, LK2/F;->c:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final setTint(I)V
    .locals 4

    iget-object v0, p0, LK2/F;->c:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/InsetDrawable;->setTint(I)V

    :cond_0
    invoke-static {p1}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, LK2/F;->i:Z

    return-void
.end method
