.class final Lcom/android/launcher3/taskbar/TaskbarManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field private mOldConfig:Landroid/content/res/Configuration;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->f(Lcom/android/launcher3/taskbar/TaskbarManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->mOldConfig:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConfigurationChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1000

    const-string v3, "TaskbarManager"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TaskbarManager#mComponentCallbacks.onConfigurationChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->j(Lcom/android/launcher3/taskbar/TaskbarManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->f(Lcom/android/launcher3/taskbar/TaskbarManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->f(Lcom/android/launcher3/taskbar/TaskbarManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    const v2, -0x20000df4

    and-int/2addr v1, v2

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->mOldConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    if-ne v2, v3, :cond_1

    and-int/lit16 v1, v1, -0x201

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ComponentCallbacks#onConfigurationChanged() configDiff="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    if-nez v1, :cond_6

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarManager;->h(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v2, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->m(Lcom/android/launcher3/taskbar/TaskbarManager;Lcom/android/launcher3/DeviceProfile;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->l(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v2, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->m(Lcom/android/launcher3/taskbar/TaskbarManager;Lcom/android/launcher3/DeviceProfile;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarManager;->h(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->h(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onConfigurationChanged(I)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    :goto_3
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$3;->mOldConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method
