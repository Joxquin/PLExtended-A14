.class Lcom/android/quickstep/RecentTasksList$1;
.super Lcom/android/wm/shell/recents/IRecentTasksListener$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentTasksList;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/RecentTasksList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-direct {p0}, Lcom/android/wm/shell/recents/IRecentTasksListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/RecentTasksList$1;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentTasksList$1;->lambda$onRunningTaskVanished$1(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/RecentTasksList$1;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentTasksList$1;->lambda$onRunningTaskAppeared$0(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private synthetic lambda$onRunningTaskAppeared$0(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentTasksList;->i(Lcom/android/quickstep/RecentTasksList;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private synthetic lambda$onRunningTaskVanished$1(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentTasksList;->j(Lcom/android/quickstep/RecentTasksList;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method


# virtual methods
.method public onRecentTasksChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-static {v0}, Lcom/android/quickstep/RecentTasksList;->h(Lcom/android/quickstep/RecentTasksList;)Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    new-instance v1, Lcom/android/quickstep/j0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/j0;-><init>(Lcom/android/quickstep/RecentTasksList;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-static {v0}, Lcom/android/quickstep/RecentTasksList;->h(Lcom/android/quickstep/RecentTasksList;)Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/p0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/quickstep/p0;-><init>(Lcom/android/quickstep/RecentTasksList$1;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-static {v0}, Lcom/android/quickstep/RecentTasksList;->h(Lcom/android/quickstep/RecentTasksList;)Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/p0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/quickstep/p0;-><init>(Lcom/android/quickstep/RecentTasksList$1;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
