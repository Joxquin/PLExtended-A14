.class public final synthetic LV1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

.field public final synthetic e:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f:Landroid/app/prediction/AppTarget;

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV1/r;->d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    iput-object p2, p0, LV1/r;->e:Landroid/content/pm/ShortcutInfo;

    iput-object p3, p0, LV1/r;->f:Landroid/app/prediction/AppTarget;

    iput-object p4, p0, LV1/r;->g:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6

    iget-object p1, p0, LV1/r;->d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    iget-object v0, p0, LV1/r;->e:Landroid/content/pm/ShortcutInfo;

    iget-object v1, p0, LV1/r;->f:Landroid/app/prediction/AppTarget;

    iget-object p0, p0, LV1/r;->g:Landroid/view/View;

    sget v2, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->k:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-boolean v2, p1, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->d:Z

    if-nez v2, :cond_0

    const-string v2, "dragToShareUrl"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p2, p1, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->g:LV1/e;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->f:Ljava/lang/String;

    iget-object p2, p2, LV1/e;->a:Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->b(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    move-result-object p2

    check-cast p2, LV1/i;

    invoke-interface {p2, p1, v0, v1, v3}, LV1/i;->g(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;Z)V

    goto :goto_0

    :cond_0
    iget-boolean v2, p1, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->d:Z

    if-eqz v2, :cond_1

    const-string v2, "dragToShareImage"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->g:LV1/e;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->e:Landroid/graphics/RectF;

    iget-object p2, p2, LV1/e;->a:Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->a(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    move-result-object p2

    check-cast p2, LV1/i;

    invoke-interface {p2, p1, v0, v1, v3}, LV1/i;->h(Landroid/graphics/RectF;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0, v5}, Landroid/view/View;->setHovered(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/View;->setHovered(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    :cond_4
    invoke-virtual {p0, v5}, Landroid/view/View;->setHovered(Z)V

    :cond_5
    :goto_1
    return v3
.end method
