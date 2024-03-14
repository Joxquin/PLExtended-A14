.class public final synthetic LV1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LV1/g;->d:I

    iput-object p2, p0, LV1/g;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, LV1/g;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p0, p0, LV1/g;->e:Ljava/lang/Object;

    check-cast p0, LV1/h;

    iget-object p0, p0, LV1/h;->a:LV1/j;

    iget-object v0, p0, LV1/j;->l:Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;->c()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;->b(I)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object p0, p0, LV1/j;->k:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->W:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, LV1/g;->e:Ljava/lang/Object;

    check-cast p0, LV1/h;

    iget-object p0, p0, LV1/h;->a:LV1/j;

    iget-object v0, p0, LV1/j;->g:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, LV1/j;->a:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Got a null snapshot when trying  to save a screenshot of: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OverviewActionsController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v2, p0, LV1/j;->n:LX1/t;

    iget-object v2, v2, LX1/t;->b:LX1/u;

    invoke-virtual {v2}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getTaskSnapshotBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, LV1/j;->n:LX1/t;

    iget-object v3, v3, LX1/t;->b:LX1/u;

    invoke-virtual {v3}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getTaskSnapshotInsets()Landroid/graphics/Insets;

    move-result-object v3

    iget-object p0, p0, LV1/j;->d:LV1/k;

    iget-object p0, p0, LV1/k;->a:Lcom/android/quickstep/SystemUiProxy;

    invoke-static {p0, v0, v2, v3, v1}, Lcom/android/quickstep/util/ImageActionUtils;->saveScreenshot(Lcom/android/quickstep/SystemUiProxy;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    :goto_1
    return-void

    :pswitch_2
    iget-object p0, p0, LV1/g;->e:Ljava/lang/Object;

    check-cast p0, LV1/h;

    iget-object p0, p0, LV1/h;->a:LV1/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, LV1/j;->m:Z

    iget-object v2, p0, LV1/j;->a:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v3, p0, LV1/j;->h:LX1/l;

    iget-object v3, v3, LX1/l;->a:Ljava/lang/Object;

    check-cast v3, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3, v2, v0}, Lcom/android/quickstep/views/RecentsView;->setModalStateEnabled(IZ)V

    iget-object v2, p0, LV1/j;->b:LX1/u;

    iget-object v3, v2, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a()V

    iget-object v3, v2, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    if-eqz v3, :cond_3

    iget-object v5, v3, LL1/w;->b:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v4, v3, LL1/w;->x:Landroid/widget/FrameLayout;

    :cond_3
    iput-boolean v1, v2, LX1/u;->t:Z

    iget-object v2, v2, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v3, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    iget v5, v3, LL1/o;->g:I

    add-int/2addr v5, v0

    iput v5, v3, LL1/o;->g:I

    sget-object v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->j:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->c(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;Landroid/graphics/RectF;)LJ1/t;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->q:LL1/j0;

    iget-object v4, v4, LL1/j0;->a:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, LJ1/m;

    invoke-direct {v7}, LJ1/m;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v7, LJ1/m;->b:J

    new-instance v8, LJ1/o;

    invoke-direct {v8}, LJ1/o;-><init>()V

    iput-object v8, v7, LJ1/m;->a:Ljava/lang/Object;

    sget-object v7, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$OverviewFeedback$OverviewInteraction;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$OverviewFeedback$OverviewInteraction;

    iput-object v7, v8, LJ1/o;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$OverviewFeedback$OverviewInteraction;

    const/4 v7, 0x2

    iput v7, v8, LJ1/o;->b:I

    new-instance v7, LJ1/n;

    invoke-direct {v7}, LJ1/n;-><init>()V

    int-to-long v8, v1

    iput-wide v8, v7, LJ1/n;->b:J

    iput-object v4, v7, LJ1/n;->c:Ljava/lang/String;

    sget v4, LM1/c;->a:I

    iput-object v6, v7, LJ1/n;->a:Ljava/util/List;

    iget-object v4, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    iget-object v6, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->i:Ljava/lang/String;

    iget-object v8, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->j:LK1/a;

    invoke-virtual {v4, v6, v8, v7}, LL1/a0;->i(Ljava/lang/String;LK1/a;LJ1/n;)V

    invoke-virtual {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a()V

    const-string v6, "Showing automatic suggestions"

    invoke-static {v6}, LM1/b;->f(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, LL1/a0;->k(Z)V

    new-instance v1, LL1/f0;

    invoke-direct {v1, v2, v5, v0}, LL1/f0;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;II)V

    invoke-virtual {v4, v3, v8, v1}, LL1/a0;->g(LJ1/t;LK1/a;LL1/Y;)V

    :cond_4
    iget-object v0, p0, LV1/j;->n:LX1/t;

    iget-boolean p0, p0, LV1/j;->m:Z

    invoke-virtual {v0, p0}, LX1/t;->a(Z)V

    return-void

    :pswitch_3
    iget-object p0, p0, LV1/g;->e:Ljava/lang/Object;

    check-cast p0, LV1/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LV1/g;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, LV1/g;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :goto_2
    iget-object p0, p0, LV1/g;->e:Ljava/lang/Object;

    check-cast p0, LV1/j;

    iget-object p0, p0, LV1/j;->i:LX1/l;

    iget-object p0, p0, LX1/l;->a:Ljava/lang/Object;

    check-cast p0, LX1/u;

    invoke-static {p0}, LX1/u;->c(LX1/u;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
