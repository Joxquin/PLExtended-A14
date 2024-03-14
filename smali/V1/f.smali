.class public final synthetic LV1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/prediction/AppPredictor$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LV1/h;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LV1/h;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LV1/f;->a:I

    iput-object p1, p0, LV1/f;->b:LV1/h;

    iput-object p2, p0, LV1/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTargetsAvailable(Ljava/util/List;)V
    .locals 7

    iget v0, p0, LV1/f;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LV1/f;->b:LV1/h;

    iget-object p0, p0, LV1/f;->c:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/graphics/RectF;

    iget-object p0, v0, LV1/h;->a:LV1/j;

    iget-object p0, p0, LV1/j;->n:LX1/t;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->u:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, LX1/t;->b:LX1/u;

    invoke-virtual {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->f:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    new-instance v3, LV1/e;

    invoke-direct {v3, p0}, LV1/e;-><init>(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)V

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->b(Ljava/util/List;LV1/e;ZLandroid/graphics/RectF;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->e()V

    :cond_0
    return-void

    :goto_0
    iget-object v0, p0, LV1/f;->b:LV1/h;

    iget-object p0, p0, LV1/f;->c:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    iget-object p0, v0, LV1/h;->a:LV1/j;

    iget-object p0, p0, LV1/j;->n:LX1/t;

    iget-object p0, p0, LX1/t;->b:LX1/u;

    invoke-virtual {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->f:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    new-instance v3, LV1/e;

    invoke-direct {v3, p0}, LV1/e;-><init>(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->b(Ljava/util/List;LV1/e;ZLandroid/graphics/RectF;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->e()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
