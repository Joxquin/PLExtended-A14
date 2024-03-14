.class public final synthetic LV1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV1/m;->d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    iget-object p0, p0, LV1/m;->d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    sget v0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->k:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->d:Z

    if-nez v0, :cond_0

    const-string v0, "dragToShareUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->g:LV1/e;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->f:Ljava/lang/String;

    iget-object p2, p2, LV1/e;->a:Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->d(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    move-result-object p2

    check-cast p2, LV1/i;

    invoke-interface {p2, p0, v1}, LV1/i;->b(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "dragToShareImage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->g:LV1/e;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->e:Landroid/graphics/RectF;

    iget-object p2, p2, LV1/e;->a:Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->c(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    move-result-object p2

    check-cast p2, LV1/i;

    invoke-interface {p2, p0, v1}, LV1/i;->e(Landroid/graphics/RectF;Z)V

    :cond_1
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setHovered(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p0

    const/4 p2, 0x4

    if-ne p0, p2, :cond_5

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setHovered(Z)V

    :cond_5
    :goto_1
    return v1
.end method
