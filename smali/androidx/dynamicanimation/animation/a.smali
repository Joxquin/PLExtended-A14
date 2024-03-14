.class public final synthetic Landroidx/dynamicanimation/animation/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Landroidx/dynamicanimation/animation/g;


# direct methods
.method public synthetic constructor <init>(Landroidx/dynamicanimation/animation/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/a;->d:Landroidx/dynamicanimation/animation/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object p0, p0, Landroidx/dynamicanimation/animation/a;->d:Landroidx/dynamicanimation/animation/g;

    iget-object p0, p0, Landroidx/dynamicanimation/animation/g;->c:Landroidx/dynamicanimation/animation/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/b;->a:Landroidx/dynamicanimation/animation/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, p0, Landroidx/dynamicanimation/animation/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/dynamicanimation/animation/c;

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    iget-object v7, p0, Landroidx/dynamicanimation/animation/g;->a:Lq/m;

    invoke-virtual {v7, v6}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-gez v8, :cond_2

    invoke-virtual {v7, v6}, Lq/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    if-eqz v7, :cond_3

    invoke-interface {v6, v0, v1}, Landroidx/dynamicanimation/animation/c;->doAnimationFrame(J)Z

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/g;->f:Z

    if-eqz v0, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/dynamicanimation/animation/g;->h:Landroidx/dynamicanimation/animation/e;

    iget-object v1, v0, Landroidx/dynamicanimation/animation/e;->a:Ljava/lang/Object;

    check-cast v1, Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    invoke-static {v1}, Landroid/animation/ValueAnimator;->unregisterDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/dynamicanimation/animation/e;->a:Ljava/lang/Object;

    :cond_7
    iput-boolean v4, p0, Landroidx/dynamicanimation/animation/g;->f:Z

    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Landroidx/dynamicanimation/animation/g;->e:Landroidx/dynamicanimation/animation/r;

    check-cast v0, Landroidx/dynamicanimation/animation/e;

    iget-object v0, v0, Landroidx/dynamicanimation/animation/e;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer;

    new-instance v1, Landroidx/dynamicanimation/animation/f;

    iget-object p0, p0, Landroidx/dynamicanimation/animation/g;->d:Landroidx/dynamicanimation/animation/a;

    invoke-direct {v1, p0}, Landroidx/dynamicanimation/animation/f;-><init>(Landroidx/dynamicanimation/animation/a;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_9
    return-void
.end method
