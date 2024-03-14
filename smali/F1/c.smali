.class public final LF1/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:LF1/f;

.field public final synthetic e:Landroid/view/ViewGroup;

.field public final synthetic f:LF1/d;

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public constructor <init>(LF1/f;Lcom/android/launcher3/views/BaseDragLayer;LF1/d;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, LF1/c;->d:LF1/f;

    iput-object p2, p0, LF1/c;->e:Landroid/view/ViewGroup;

    iput-object p3, p0, LF1/c;->f:LF1/d;

    iput-object p4, p0, LF1/c;->g:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, LF1/c;->d:LF1/f;

    if-eqz p1, :cond_4

    iget-object v0, p1, LF1/f;->f:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p1, LF1/f;->h:LA1/a;

    iget-object v2, v1, LA1/a;->a:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v2}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    if-nez v2, :cond_1

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :cond_1
    iget-object v3, p1, LF1/f;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    new-instance v3, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v3, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v3

    iget-object p1, p1, LF1/f;->d:Landroid/view/SyncRtSurfaceTransactionApplier;

    filled-new-array {v3}, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    iget-object p1, v1, LA1/a;->a:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {p1, v2}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_3
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object p1

    new-instance v1, LF1/e;

    invoke-direct {v1, v0}, LF1/e;-><init>(Landroid/view/SurfaceControl;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1, v4}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget-object p1, p0, LF1/c;->e:Landroid/view/ViewGroup;

    iget-object v0, p0, LF1/c;->f:LF1/d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, LF1/c;->e:Landroid/view/ViewGroup;

    iget-object p0, p0, LF1/c;->g:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
