.class public final LT1/j;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field public final synthetic d:Landroid/app/smartspace/SmartspaceTargetEvent;

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 0

    iput-object p1, p0, LT1/j;->e:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;

    iput-object p2, p0, LT1/j;->d:Landroid/app/smartspace/SmartspaceTargetEvent;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 0

    iget-object p1, p0, LT1/j;->e:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->i:Landroid/app/smartspace/SmartspaceSession;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Smartspace session null. Cannot notify smartspace event: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LT1/j;->d:Landroid/app/smartspace/SmartspaceTargetEvent;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NexusLauncherModelDelegate"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, LT1/j;->d:Landroid/app/smartspace/SmartspaceTargetEvent;

    invoke-virtual {p1, p0}, Landroid/app/smartspace/SmartspaceSession;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    return-void
.end method
