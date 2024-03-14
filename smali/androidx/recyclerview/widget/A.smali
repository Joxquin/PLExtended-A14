.class public final Landroidx/recyclerview/widget/A;
.super Landroidx/recyclerview/widget/i0;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/p0;


# static fields
.field public static final G:[I

.field public static final H:[I


# instance fields
.field public final A:[I

.field public final B:[I

.field public final C:Landroid/animation/ValueAnimator;

.field public D:I

.field public final E:Landroidx/recyclerview/widget/w;

.field public final F:Landroidx/recyclerview/widget/x;

.field public final d:I

.field public final e:I

.field public final f:Landroid/graphics/drawable/StateListDrawable;

.field public final g:Landroid/graphics/drawable/Drawable;

.field public final h:I

.field public final i:I

.field public final j:Landroid/graphics/drawable/StateListDrawable;

.field public final k:Landroid/graphics/drawable/Drawable;

.field public final l:I

.field public final m:I

.field public n:I

.field public o:I

.field public p:F

.field public q:I

.field public r:I

.field public s:F

.field public t:I

.field public u:I

.field public v:Landroidx/recyclerview/widget/RecyclerView;

.field public w:Z

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/A;->G:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/recyclerview/widget/A;->H:[I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/i0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/A;->t:I

    iput v0, p0, Landroidx/recyclerview/widget/A;->u:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/A;->w:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/A;->x:Z

    iput v0, p0, Landroidx/recyclerview/widget/A;->y:I

    iput v0, p0, Landroidx/recyclerview/widget/A;->z:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/A;->A:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/A;->B:[I

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/A;->C:Landroid/animation/ValueAnimator;

    iput v0, p0, Landroidx/recyclerview/widget/A;->D:I

    new-instance v0, Landroidx/recyclerview/widget/w;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/w;-><init>(Landroidx/recyclerview/widget/A;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/A;->E:Landroidx/recyclerview/widget/w;

    new-instance v2, Landroidx/recyclerview/widget/x;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/x;-><init>(Landroidx/recyclerview/widget/A;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/A;->F:Landroidx/recyclerview/widget/x;

    iput-object p2, p0, Landroidx/recyclerview/widget/A;->f:Landroid/graphics/drawable/StateListDrawable;

    iput-object p3, p0, Landroidx/recyclerview/widget/A;->g:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Landroidx/recyclerview/widget/A;->j:Landroid/graphics/drawable/StateListDrawable;

    iput-object p5, p0, Landroidx/recyclerview/widget/A;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {p6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroidx/recyclerview/widget/A;->h:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {p6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroidx/recyclerview/widget/A;->i:I

    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroidx/recyclerview/widget/A;->l:I

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroidx/recyclerview/widget/A;->m:I

    iput p7, p0, Landroidx/recyclerview/widget/A;->d:I

    iput p8, p0, Landroidx/recyclerview/widget/A;->e:I

    const/16 p4, 0xff

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance p2, Landroidx/recyclerview/widget/y;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/y;-><init>(Landroidx/recyclerview/widget/A;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Landroidx/recyclerview/widget/z;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/z;-><init>(Landroidx/recyclerview/widget/A;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/i0;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/p0;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/q0;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iput-object p1, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/i0;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/p0;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/q0;)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(FF)Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/A;->u:I

    iget v1, p0, Landroidx/recyclerview/widget/A;->l:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Landroidx/recyclerview/widget/A;->r:I

    iget p0, p0, Landroidx/recyclerview/widget/A;->q:I

    div-int/lit8 v0, p0, 0x2

    sub-int v0, p2, v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p2

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(FF)Z
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/A;->h:I

    if-eqz v0, :cond_1

    int-to-float v0, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/A;->t:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/A;->o:I

    iget p0, p0, Landroidx/recyclerview/widget/A;->n:I

    div-int/lit8 p0, p0, 0x2

    sub-int v0, p1, p0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    add-int/2addr p0, p1

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final c(I)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/A;->E:Landroidx/recyclerview/widget/w;

    iget-object v1, p0, Landroidx/recyclerview/widget/A;->f:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget v3, p0, Landroidx/recyclerview/widget/A;->y:I

    if-eq v3, v2, :cond_0

    sget-object v3, Landroidx/recyclerview/widget/A;->G:[I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    iget-object v3, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    if-nez p1, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/A;->d()V

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/A;->y:I

    if-ne v3, v2, :cond_2

    if-eq p1, v2, :cond_2

    sget-object v2, Landroidx/recyclerview/widget/A;->H:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    iget-object v1, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x4b0

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x5dc

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    iput p1, p0, Landroidx/recyclerview/widget/A;->y:I

    return-void
.end method

.method public final d()V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/A;->D:I

    iget-object v1, p0, Landroidx/recyclerview/widget/A;->C:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/A;->D:I

    const/4 p0, 0x2

    new-array p0, p0, [F

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    aput v2, p0, v3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p0, v0

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    iget p2, p0, Landroidx/recyclerview/widget/A;->t:I

    iget-object v0, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_5

    iget p2, p0, Landroidx/recyclerview/widget/A;->u:I

    iget-object v0, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget p2, p0, Landroidx/recyclerview/widget/A;->D:I

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Landroidx/recyclerview/widget/A;->w:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget p2, p0, Landroidx/recyclerview/widget/A;->t:I

    iget v2, p0, Landroidx/recyclerview/widget/A;->h:I

    sub-int/2addr p2, v2

    iget v3, p0, Landroidx/recyclerview/widget/A;->o:I

    iget v4, p0, Landroidx/recyclerview/widget/A;->n:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    iget-object v5, p0, Landroidx/recyclerview/widget/A;->f:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v5, v1, v1, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget v4, p0, Landroidx/recyclerview/widget/A;->u:I

    iget v6, p0, Landroidx/recyclerview/widget/A;->i:I

    iget-object v7, p0, Landroidx/recyclerview/widget/A;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1, v1, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v6, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float p2, v2

    int-to-float v4, v3

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int p2, v2

    int-to-float p2, p2

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_2
    int-to-float v2, p2

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p2, p2

    int-to-float p2, p2

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    :goto_1
    iget-boolean p2, p0, Landroidx/recyclerview/widget/A;->x:Z

    if-eqz p2, :cond_4

    iget p2, p0, Landroidx/recyclerview/widget/A;->u:I

    iget v2, p0, Landroidx/recyclerview/widget/A;->l:I

    sub-int/2addr p2, v2

    iget v3, p0, Landroidx/recyclerview/widget/A;->r:I

    iget v4, p0, Landroidx/recyclerview/widget/A;->q:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    iget-object v5, p0, Landroidx/recyclerview/widget/A;->j:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v5, v1, v1, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget v2, p0, Landroidx/recyclerview/widget/A;->t:I

    iget v4, p0, Landroidx/recyclerview/widget/A;->m:I

    iget-object p0, p0, Landroidx/recyclerview/widget/A;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float p0, v3

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, v3

    int-to-float p0, p0

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    return-void

    :cond_5
    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/A;->t:I

    iget-object p1, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/A;->u:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/A;->c(I)V

    return-void
.end method

.method public final onInterceptTouchEvent$1(Landroid/view/MotionEvent;)Z
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/A;->y:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/A;->b(FF)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/A;->a(FF)Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez v0, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v3, :cond_1

    iput v2, p0, Landroidx/recyclerview/widget/A;->z:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/A;->s:F

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iput v1, p0, Landroidx/recyclerview/widget/A;->z:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/A;->p:F

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/A;->c(I)V

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public final onRequestDisallowInterceptTouchEvent()V
    .locals 0

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12

    iget v0, p0, Landroidx/recyclerview/widget/A;->y:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/A;->b(FF)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/A;->a(FF)Z

    move-result v3

    if-nez v0, :cond_1

    if-eqz v3, :cond_f

    :cond_1
    if-eqz v3, :cond_2

    iput v1, p0, Landroidx/recyclerview/widget/A;->z:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/A;->s:F

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iput v2, p0, Landroidx/recyclerview/widget/A;->z:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/A;->p:F

    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/A;->c(I)V

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    iget v0, p0, Landroidx/recyclerview/widget/A;->y:I

    if-ne v0, v2, :cond_5

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/A;->p:F

    iput p1, p0, Landroidx/recyclerview/widget/A;->s:F

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/A;->c(I)V

    iput v3, p0, Landroidx/recyclerview/widget/A;->z:I

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_f

    iget v0, p0, Landroidx/recyclerview/widget/A;->y:I

    if-ne v0, v2, :cond_f

    invoke-virtual {p0}, Landroidx/recyclerview/widget/A;->d()V

    iget v0, p0, Landroidx/recyclerview/widget/A;->z:I

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Landroidx/recyclerview/widget/A;->e:I

    if-ne v0, v1, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v6, p0, Landroidx/recyclerview/widget/A;->B:[I

    aput v5, v6, v3

    iget v7, p0, Landroidx/recyclerview/widget/A;->t:I

    sub-int/2addr v7, v5

    aput v7, v6, v1

    int-to-float v8, v5

    int-to-float v7, v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v7, p0, Landroidx/recyclerview/widget/A;->r:I

    int-to-float v7, v7

    sub-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v4

    if-gez v7, :cond_6

    goto :goto_2

    :cond_6
    iget v7, p0, Landroidx/recyclerview/widget/A;->s:F

    iget-object v8, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v8

    iget-object v9, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v9

    iget v10, p0, Landroidx/recyclerview/widget/A;->t:I

    aget v11, v6, v1

    aget v6, v6, v3

    sub-int/2addr v11, v6

    if-nez v11, :cond_8

    :cond_7
    move v6, v3

    goto :goto_1

    :cond_8
    sub-float v6, v0, v7

    int-to-float v7, v11

    div-float/2addr v6, v7

    sub-int/2addr v8, v10

    int-to-float v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v9, v6

    if-ge v9, v8, :cond_7

    if-ltz v9, :cond_7

    :goto_1
    if-eqz v6, :cond_9

    iget-object v7, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_9
    iput v0, p0, Landroidx/recyclerview/widget/A;->s:F

    :cond_a
    :goto_2
    iget v0, p0, Landroidx/recyclerview/widget/A;->z:I

    if-ne v0, v2, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/A;->A:[I

    aput v5, v0, v3

    iget v2, p0, Landroidx/recyclerview/widget/A;->u:I

    sub-int/2addr v2, v5

    aput v2, v0, v1

    int-to-float v5, v5

    int-to-float v2, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v2, p0, Landroidx/recyclerview/widget/A;->o:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_b

    goto :goto_4

    :cond_b
    iget v2, p0, Landroidx/recyclerview/widget/A;->p:F

    iget-object v4, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v5, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/A;->u:I

    aget v1, v0, v1

    aget v0, v0, v3

    sub-int/2addr v1, v0

    if-nez v1, :cond_d

    :cond_c
    move v0, v3

    goto :goto_3

    :cond_d
    sub-float v0, p1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-int/2addr v4, v6

    int-to-float v1, v4

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v5, v0

    if-ge v5, v4, :cond_c

    if-ltz v5, :cond_c

    :goto_3
    if-eqz v0, :cond_e

    iget-object v1, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_e
    iput p1, p0, Landroidx/recyclerview/widget/A;->p:F

    :cond_f
    :goto_4
    return-void
.end method
