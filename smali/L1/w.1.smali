.class public final LL1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final y:Landroid/view/animation/Interpolator;

.field public static final z:LU/a;


# instance fields
.field public final a:LX1/u;

.field public final b:Landroid/view/ViewGroup;

.field public final c:LL1/a0;

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Landroid/util/SparseArray;

.field public final h:LK1/a;

.field public final i:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

.field public final j:LV1/u;

.field public k:LX1/s;

.field public final l:Ljava/util/List;

.field public m:F

.field public n:Z

.field public o:LX1/f;

.field public p:Z

.field public q:Landroid/widget/ImageView;

.field public r:LL1/n;

.field public s:LL1/A0;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Landroid/widget/FrameLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3d4ccccd    # 0.05f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, LL1/w;->y:Landroid/view/animation/Interpolator;

    new-instance v0, LU/a;

    invoke-direct {v0}, LU/a;-><init>()V

    sput-object v0, LL1/w;->z:LU/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;Landroid/view/ViewGroup;LX1/u;LL1/a0;LK1/a;LV1/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LL1/w;->g:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LL1/w;->l:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, LL1/w;->p:Z

    iput-object p1, p0, LL1/w;->i:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iput-object p2, p0, LL1/w;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, LL1/w;->a:LX1/u;

    iput-object p4, p0, LL1/w;->c:LL1/a0;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704a7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, LL1/w;->d:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, LL1/w;->e:I

    const p2, 0x7f1300f4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LL1/w;->f:Ljava/lang/String;

    iput-object p5, p0, LL1/w;->h:LK1/a;

    iput-object p6, p0, LL1/w;->j:LV1/u;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-boolean v0, p0, LL1/w;->n:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LL1/w;->b(Z)V

    iget-object v0, p0, LL1/w;->r:LL1/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, LL1/w;->z:LU/a;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, LL1/u;

    invoke-direct {v2, p0, v1}, LL1/u;-><init>(LL1/w;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-object v0, p0, LL1/w;->x:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, LL1/w;->s:LL1/A0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, LL1/A0;->b(Z)V

    :cond_2
    iget-object p0, p0, LL1/w;->k:LX1/s;

    iget-object p0, p0, LX1/s;->a:LX1/t;

    iget-object v0, p0, LX1/t;->a:LV1/i;

    invoke-interface {v0}, LV1/i;->f()V

    iget-object p0, p0, LX1/t;->b:LX1/u;

    invoke-virtual {p0, v1}, LX1/u;->o(Z)V

    :cond_3
    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, LL1/w;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, LL1/w;->z:LU/a;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x14d

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, LL1/u;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LL1/u;-><init>(LL1/w;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LL1/w;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, LL1/w;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, LL1/w;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, LL1/w;->q:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-boolean v0, p0, LL1/w;->p:Z

    iget-object p0, p0, LL1/w;->k:LX1/s;

    iget-object p0, p0, LX1/s;->a:LX1/t;

    iget-object p0, p0, LX1/t;->b:LX1/u;

    invoke-static {p0}, LX1/u;->g(LX1/u;)Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method public final d(Landroid/graphics/RectF;)V
    .locals 8

    const-string v0, "Show single image indicators"

    invoke-static {v0}, LM1/b;->f(Ljava/lang/String;)V

    iget-object v0, p0, LL1/w;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070216

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070214

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    add-float/2addr v3, v2

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v1

    sub-float/2addr v4, v5

    sub-float/2addr v4, v2

    const/4 v2, 0x0

    cmpg-float v6, v3, v2

    if-ltz v6, :cond_2

    cmpg-float v6, v4, v2

    if-ltz v6, :cond_2

    add-float v6, v3, v5

    iget v7, p0, LL1/w;->v:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_2

    add-float/2addr v5, v4

    iget v6, p0, LL1/w;->w:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v5, p0, LL1/w;->j:LV1/u;

    iget-object v5, v5, LV1/u;->a:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v5}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_SHOW_IMAGE_INDICATOR:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v5, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/widget/ImageButton;

    invoke-direct {v6, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0802d4

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v7, 0x7f0802d5

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget v7, p0, LL1/w;->u:I

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget v7, p0, LL1/w;->t:I

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v7, 0x7f1300f4

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setY(F)V

    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setX(F)V

    iget-object v1, p0, LL1/w;->x:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LL1/w;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, LL1/w;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, LL1/v;

    invoke-direct {v0, p0, p1}, LL1/v;-><init>(LL1/w;Landroid/graphics/RectF;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {v6}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x85

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget v1, p0, LL1/w;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, LL1/w;->w:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Indicator rect %s is outside taskview %dx%d"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Landroid/graphics/RectF;FF)Z
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, LL1/w;->w:I

    if-eqz v0, :cond_2

    iget v0, p0, LL1/w;->v:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, LL1/w;->v:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float p2, v0, p2

    if-lez p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget p0, p0, LL1/w;->w:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    cmpl-float p0, p1, p3

    if-lez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method
