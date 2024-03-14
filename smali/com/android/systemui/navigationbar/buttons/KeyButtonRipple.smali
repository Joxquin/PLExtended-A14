.class public Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field public static final A:Landroid/view/animation/Interpolator;


# instance fields
.field public final a:I

.field public b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/CanvasProperty;

.field public d:Landroid/graphics/CanvasProperty;

.field public e:Landroid/graphics/CanvasProperty;

.field public f:Landroid/graphics/CanvasProperty;

.field public g:Landroid/graphics/CanvasProperty;

.field public h:Landroid/graphics/CanvasProperty;

.field public i:Landroid/graphics/CanvasProperty;

.field public j:F

.field public k:F

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Z

.field public p:Z

.field public final q:Lm1/b;

.field public r:Z

.field public final s:Landroid/view/View;

.field public final t:Landroid/os/Handler;

.field public final u:Ljava/util/HashSet;

.field public final v:Ljava/util/ArrayList;

.field public final w:Lm1/a;

.field public final x:Lm1/a;

.field public y:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

.field public final z:Lm1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->A:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->k:F

    new-instance v0, Lm1/b;

    invoke-direct {v0}, Lm1/b;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->q:Lm1/b;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->t:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->u:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->v:Ljava/util/ArrayList;

    new-instance v0, Lm1/a;

    const-string v1, "exitHardware"

    invoke-direct {v0, v1}, Lm1/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->w:Lm1/a;

    new-instance v0, Lm1/a;

    const-string v1, "enterHardware"

    invoke-direct {v0, v1}, Lm1/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->x:Lm1/a;

    sget-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;->e:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->y:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    new-instance v0, Lm1/a;

    invoke-direct {v0, p0}, Lm1/a;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->z:Lm1/a;

    iput p3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->n:I

    iput-object p2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->s:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyButtonRipple.endAnim: reason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cancel="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->v:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->u:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->u:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->t:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e()Z

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final c()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->o:Z

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final d()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->n:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->r:Z

    sget-object v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;->e:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    if-eqz v0, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/graphics/RecordingCanvas;

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->m:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->y:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    if-ne p1, v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->c:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->d:Landroid/graphics/CanvasProperty;

    iget-object v5, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e:Landroid/graphics/CanvasProperty;

    iget-object v6, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->f:Landroid/graphics/CanvasProperty;

    iget-object v7, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->g:Landroid/graphics/CanvasProperty;

    iget-object v8, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->h:Landroid/graphics/CanvasProperty;

    iget-object v9, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->i:Landroid/graphics/CanvasProperty;

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/RecordingCanvas;->drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v1, v1

    mul-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->i:Landroid/graphics/CanvasProperty;

    invoke-virtual {v2, p1, v0, v1, p0}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto/16 :goto_3

    :cond_1
    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->c()Landroid/graphics/Paint;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->d()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->k:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    mul-float/2addr v2, v6

    mul-float/2addr v3, v6

    if-eqz v4, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    if-eqz v4, :cond_4

    move v5, v3

    :cond_4
    if-eqz v4, :cond_5

    move v8, v3

    goto :goto_2

    :cond_5
    move v8, v2

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->y:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    if-ne p0, v1, :cond_6

    sub-float p0, v2, v6

    sub-float v4, v3, v5

    add-float v1, v6, v2

    add-float v6, v3, v5

    move-object v2, p1

    move v3, p0

    move v5, v1

    move v7, v8

    move-object v9, v0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    neg-float v4, v6

    move-object v2, p1

    move v3, v4

    move v5, v6

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_3
    return-void
.end method

.method public final e()Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getGlowAlpha()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    return p0
.end method

.method public getGlowScale()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->k:F

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final hasFocusStateSpecified()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final jumpToCurrentState()V
    .locals 2

    const-string v0, "jumpToCurrentState"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStateChange([I)Z
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    const v4, 0x10100a7

    if-ne v2, v4, :cond_0

    move p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->l:Z

    if-eq p1, v1, :cond_d

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->p:Z

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->o:Z

    if-eq v1, v2, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->o:Z

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->r:Z

    const-wide/16 v4, 0x15e

    const v2, 0x3dcccccd    # 0.1f

    const v6, 0x3e4ccccd    # 0.2f

    const-wide/16 v7, 0x1c2

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v1, :cond_a

    if-eqz p1, :cond_9

    const-string v0, "enterHardware"

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->a(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->m:Z

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b()I

    move-result v0

    div-int/2addr v0, v10

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->c:Landroid/graphics/CanvasProperty;

    goto :goto_2

    :cond_3
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->d:Landroid/graphics/CanvasProperty;

    :goto_2
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->c:Landroid/graphics/CanvasProperty;

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->d:Landroid/graphics/CanvasProperty;

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b()I

    move-result v7

    div-int/2addr v7, v10

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->d()I

    move-result v8

    int-to-float v8, v8

    const v11, 0x3faccccd    # 1.35f

    mul-float/2addr v8, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    invoke-direct {v0, v1, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    invoke-virtual {v0, v4, v5}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->q:Lm1/b;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->z:Lm1/a;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b()I

    move-result v1

    div-int/2addr v1, v10

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e()Z

    move-result v7

    if-eqz v7, :cond_5

    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e:Landroid/graphics/CanvasProperty;

    goto :goto_4

    :cond_5
    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->f:Landroid/graphics/CanvasProperty;

    :goto_4
    new-instance v1, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e:Landroid/graphics/CanvasProperty;

    goto :goto_5

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->f:Landroid/graphics/CanvasProperty;

    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b()I

    move-result v8

    div-int/2addr v8, v10

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->d()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v11

    div-float/2addr v13, v12

    add-float/2addr v13, v8

    invoke-direct {v1, v7, v13}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    invoke-virtual {v1, v4, v5}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->q:Lm1/b;

    invoke-virtual {v1, v4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->z:Lm1/a;

    invoke-virtual {v1, v4}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->x:Lm1/a;

    invoke-virtual {v1, v4}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->s:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v9}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->d:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->f:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/2addr v4, v10

    int-to-float v4, v4

    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->g:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/2addr v4, v10

    int-to-float v4, v4

    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->h:Landroid/graphics/CanvasProperty;

    goto :goto_6

    :cond_7
    invoke-static {v9}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->c:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v10

    int-to-float v4, v4

    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->g:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v10

    int-to-float v4, v4

    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->h:Landroid/graphics/CanvasProperty;

    :goto_6
    iput v11, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->k:F

    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->o:Z

    if-eqz v4, :cond_8

    goto :goto_7

    :cond_8
    move v2, v6

    :goto_7
    iput v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->c()Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->i:Landroid/graphics/CanvasProperty;

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->start()V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->u:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->u:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto/16 :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->c()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->i:Landroid/graphics/CanvasProperty;

    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->i:Landroid/graphics/CanvasProperty;

    invoke-direct {v0, v1, v3, v9}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    invoke-virtual {v0, v7, v8}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    sget-object v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->z:Lm1/a;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->w:Lm1/a;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->u:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_9

    :cond_a
    if-eqz p1, :cond_c

    const-string v0, "enterSoftware"

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->a(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->o:Z

    if-eqz v0, :cond_b

    goto :goto_8

    :cond_b
    move v2, v6

    :goto_8
    iput v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    new-array v0, v10, [F

    fill-array-data v0, :array_0

    const-string v1, "glowScale"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->q:Lm1/b;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->z:Lm1/a;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->u:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    new-array v1, v10, [F

    iget v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    aput v2, v1, v0

    aput v9, v1, v3

    const-string v0, "glowAlpha"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->z:Lm1/a;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->u:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_9
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->l:Z

    return v3

    :cond_d
    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3faccccd    # 1.35f
    .end array-data
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setGlowScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->k:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->jumpToCurrentState()V

    :cond_0
    return p1
.end method
