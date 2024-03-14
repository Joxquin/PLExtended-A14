.class public final synthetic Lc2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/util/NexusNavHandleLongPressHandler;

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/util/NexusNavHandleLongPressHandler;Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/b;->d:Lcom/google/android/apps/nexuslauncher/util/NexusNavHandleLongPressHandler;

    iput-object p2, p0, Lc2/b;->e:Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc2/b;->d:Lcom/google/android/apps/nexuslauncher/util/NexusNavHandleLongPressHandler;

    iget-object p0, p0, Lc2/b;->e:Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;->b(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "NexusNavHandleLongPressHandler"

    const-string v1, "Omni invocation successful"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/launcher3/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/util/NexusNavHandleLongPressHandler;->d:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/VibratorWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/util/VibratorWrapper;->vibrateForAssist()V

    invoke-static {v0}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->V:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_0
    return-void
.end method
