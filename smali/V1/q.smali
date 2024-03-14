.class public final synthetic LV1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

.field public final synthetic e:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f:Landroid/app/prediction/AppTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV1/q;->d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    iput-object p2, p0, LV1/q;->e:Landroid/content/pm/ShortcutInfo;

    iput-object p3, p0, LV1/q;->f:Landroid/app/prediction/AppTarget;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, LV1/q;->d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    iget-object v0, p0, LV1/q;->e:Landroid/content/pm/ShortcutInfo;

    iget-object p0, p0, LV1/q;->f:Landroid/app/prediction/AppTarget;

    iget-boolean v1, p1, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->g:LV1/e;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->e:Landroid/graphics/RectF;

    iget-object v1, v1, LV1/e;->a:Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->a(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    move-result-object v1

    check-cast v1, LV1/i;

    invoke-interface {v1, p1, v0, p0, v2}, LV1/i;->h(Landroid/graphics/RectF;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->g:LV1/e;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->f:Ljava/lang/String;

    iget-object v1, v1, LV1/e;->a:Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->b(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    move-result-object v1

    check-cast v1, LV1/i;

    invoke-interface {v1, p1, v0, p0, v2}, LV1/i;->g(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;Z)V

    :goto_0
    return-void
.end method
