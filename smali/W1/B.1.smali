.class public final synthetic LW1/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

.field public final synthetic e:LL2/d;

.field public final synthetic f:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;

.field public final synthetic g:Landroid/app/smartspace/SmartspaceTarget;

.field public final synthetic h:Landroid/app/smartspace/SmartspaceAction;

.field public final synthetic i:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;LL2/d;Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW1/B;->d:Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

    iput-object p2, p0, LW1/B;->e:LL2/d;

    iput-object p3, p0, LW1/B;->f:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;

    iput-object p4, p0, LW1/B;->g:Landroid/app/smartspace/SmartspaceTarget;

    iput-object p5, p0, LW1/B;->h:Landroid/app/smartspace/SmartspaceAction;

    iput-object p6, p0, LW1/B;->i:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    iget-object v0, p0, LW1/B;->d:Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

    iget-object v1, p0, LW1/B;->e:LL2/d;

    iget-object v2, p0, LW1/B;->f:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;

    iget-object v3, p0, LW1/B;->g:Landroid/app/smartspace/SmartspaceTarget;

    iget-object v4, p0, LW1/B;->h:Landroid/app/smartspace/SmartspaceAction;

    iget-object p0, p0, LW1/B;->i:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->m:Z

    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->f:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-static {v0, v1}, LL2/a;->a(LK2/G;LL2/d;)V

    new-instance v0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->b(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    const-string v0, "SmartspaceViewContainer"

    if-nez p0, :cond_0

    const-string p0, "Cannot create dismiss intent: missing extras."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "dismiss_intent"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Landroid/content/Intent;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/content/Intent;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    const-string p0, "Cannot create dismiss click action: extras missing dismiss_intent."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.apps.gsa.staticplugins.opa.smartspace.ExportedSmartspaceTrampolineActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2
    return v5
.end method
