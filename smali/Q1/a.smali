.class public final synthetic LQ1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:LQ1/d;


# direct methods
.method public constructor <init>(LQ1/d;)V
    .locals 0

    iput-object p1, p0, LQ1/a;->a:LQ1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/anim/PendingAnimation;

    const-string p1, "p0"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LQ1/a;->a:LQ1/d;

    iget-object p1, p0, LQ1/d;->b:Lcom/android/launcher3/util/EventLogArray;

    const-string v0, "onCreateDreamAnimation"

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/apps/nexuslauncher/v;->a:Lcom/google/android/apps/nexuslauncher/v;

    iget-object p1, p0, LQ1/d;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    const-string v2, "launcher.workspace"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/v;->c(Lcom/android/launcher3/Workspace;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, LQ1/d;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const/4 v5, 0x0

    const v6, 0x3ebe0247

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/nexuslauncher/v;->b(Lcom/android/launcher3/anim/PendingAnimation;Ljava/util/List;Lcom/android/launcher3/Hotseat;Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;ZF)V

    return-void
.end method
