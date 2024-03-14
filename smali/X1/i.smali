.class public final synthetic LX1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LX1/u;


# direct methods
.method public synthetic constructor <init>(LX1/u;I)V
    .locals 0

    iput p2, p0, LX1/i;->d:I

    iput-object p1, p0, LX1/i;->e:LX1/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LX1/i;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LX1/i;->e:LX1/u;

    invoke-static {p0}, LX1/u;->d(LX1/u;)V

    return-void

    :goto_0
    iget-object p0, p0, LX1/i;->e:LX1/u;

    iget-object v0, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LX1/u;->k()V

    iget-object v0, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v1, p0, LX1/u;->e:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    invoke-virtual {v2, v1}, LL1/a0;->d(Landroid/graphics/PointF;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->g(Landroid/graphics/PointF;ZZ)V

    const/4 v0, 0x2

    iput v0, p0, LX1/u;->j:I

    iget-wide v0, p0, LX1/u;->k:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, LX1/u;->A:Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->e:Landroid/os/Handler;

    iget-object p0, p0, LX1/u;->l:LX1/i;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
