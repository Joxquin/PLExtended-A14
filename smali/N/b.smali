.class public final LN/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LN/d;


# direct methods
.method public constructor <init>(LN/d;)V
    .locals 0

    iput-object p1, p0, LN/b;->d:LN/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, LN/b;->d:LN/d;

    iget-boolean v1, v0, LN/d;->r:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, LN/d;->p:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-boolean v2, v0, LN/d;->p:Z

    iget-object v0, v0, LN/d;->d:LN/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, LN/a;->e:J

    const-wide/16 v5, -0x1

    iput-wide v5, v0, LN/a;->g:J

    iput-wide v3, v0, LN/a;->f:J

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, LN/a;->h:F

    :cond_1
    iget-object v0, p0, LN/b;->d:LN/d;

    iget-object v0, v0, LN/d;->d:LN/a;

    iget-wide v3, v0, LN/a;->g:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget-wide v7, v0, LN/a;->g:J

    iget v1, v0, LN/a;->i:I

    int-to-long v9, v1

    add-long/2addr v7, v9

    cmp-long v1, v3, v7

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-nez v1, :cond_6

    iget-object v1, p0, LN/b;->d:LN/d;

    invoke-virtual {v1}, LN/d;->f()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, LN/b;->d:LN/d;

    iget-boolean v3, v1, LN/d;->q:Z

    if-eqz v3, :cond_4

    iput-boolean v2, v1, LN/d;->q:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide v7, v9

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v1, v1, LN/d;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    iget-wide v1, v0, LN/a;->f:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LN/a;->a(J)F

    move-result v3

    const/high16 v4, -0x3f800000    # -4.0f

    mul-float/2addr v4, v3

    mul-float/2addr v4, v3

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    iget-wide v4, v0, LN/a;->f:J

    sub-long v4, v1, v4

    iput-wide v1, v0, LN/a;->f:J

    long-to-float v1, v4

    mul-float/2addr v1, v3

    iget v0, v0, LN/a;->d:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, LN/b;->d:LN/d;

    iget-object v1, v1, LN/d;->t:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->scrollListBy(I)V

    iget-object v0, p0, LN/b;->d:LN/d;

    iget-object v0, v0, LN/d;->f:Landroid/view/View;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, p0}, Landroidx/core/view/x;->j(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot compute scroll delta before calling start()"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    iget-object p0, p0, LN/b;->d:LN/d;

    iput-boolean v2, p0, LN/d;->r:Z

    return-void
.end method
