.class public Lcom/google/android/apps/nexuslauncher/allapps/r2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Landroid/graphics/Path;

.field public static final o:Landroid/graphics/RectF;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/content/Context;

.field public final d:Landroid/graphics/RectF;

.field public final e:I

.field public final f:I

.field public final g:F

.field public final h:I

.field public final i:Landroid/graphics/Paint;

.field public j:[F

.field public k:I

.field public l:Z

.field public m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->n:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->o:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->i:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->c:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->h:I

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->k:I

    const v0, 0x7f040232

    invoke-static {v0, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->e:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const p2, 0x7f040266

    invoke-static {p2, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->f:I

    iput-boolean p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->m:Z

    iput-boolean p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->l:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070477

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07048f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070476

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->g:F

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/r2;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->m:Z

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->a:I

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->b:I

    if-eqz v1, :cond_0

    int-to-float v4, v2

    goto :goto_0

    :cond_0
    int-to-float v4, v3

    :goto_0
    const/4 v5, 0x0

    aput v4, v0, v5

    if-eqz v1, :cond_1

    int-to-float v4, v2

    goto :goto_1

    :cond_1
    int-to-float v4, v3

    :goto_1
    const/4 v5, 0x1

    aput v4, v0, v5

    if-eqz v1, :cond_2

    int-to-float v4, v2

    goto :goto_2

    :cond_2
    int-to-float v4, v3

    :goto_2
    const/4 v5, 0x2

    aput v4, v0, v5

    if-eqz v1, :cond_3

    int-to-float v1, v2

    goto :goto_3

    :cond_3
    int-to-float v1, v3

    :goto_3
    const/4 v4, 0x3

    aput v1, v0, v4

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->l:Z

    if-eqz v1, :cond_4

    int-to-float v4, v2

    goto :goto_4

    :cond_4
    int-to-float v4, v3

    :goto_4
    const/4 v5, 0x4

    aput v4, v0, v5

    if-eqz v1, :cond_5

    int-to-float v4, v2

    goto :goto_5

    :cond_5
    int-to-float v4, v3

    :goto_5
    const/4 v5, 0x5

    aput v4, v0, v5

    if-eqz v1, :cond_6

    int-to-float v4, v2

    goto :goto_6

    :cond_6
    int-to-float v4, v3

    :goto_6
    const/4 v5, 0x6

    aput v4, v0, v5

    if-eqz v1, :cond_7

    int-to-float v1, v2

    goto :goto_7

    :cond_7
    int-to-float v1, v3

    :goto_7
    const/4 v2, 0x7

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->j:[F

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 7

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/r2;->o:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->d:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->g:F

    add-float/2addr v3, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v4

    iget v6, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v4

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v4

    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->j:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->i:Landroid/graphics/Paint;

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->e:I

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p3, 0xff

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->f:I

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->k:I

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v0

    mul-float/2addr v0, p3

    float-to-int p3, v0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->d:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/r2;->b(Landroid/graphics/Canvas;)V

    return-void
.end method
