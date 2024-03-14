.class public final synthetic LV1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV1/n;->d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, LV1/n;->d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->d:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->g:LV1/e;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->e:Landroid/graphics/RectF;

    iget-object p1, p1, LV1/e;->a:Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->c(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    move-result-object p1

    check-cast p1, LV1/i;

    invoke-interface {p1, p0, v0}, LV1/i;->e(Landroid/graphics/RectF;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->g:LV1/e;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->f:Ljava/lang/String;

    iget-object p1, p1, LV1/e;->a:Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->d(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    move-result-object p1

    check-cast p1, LV1/i;

    invoke-interface {p1, p0, v0}, LV1/i;->b(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
