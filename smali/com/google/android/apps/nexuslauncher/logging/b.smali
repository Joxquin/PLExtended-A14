.class public final Lcom/google/android/apps/nexuslauncher/logging/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Z


# instance fields
.field public final a:Lcom/google/android/apps/nexuslauncher/logging/a;

.field public final b:Lcom/android/launcher3/logging/KeyboardStateManager;

.field mOnReadyStartTimeMillis:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/4 v0, 0x2

    const-string v1, "ImeLatencyLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/nexuslauncher/logging/b;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/logging/a;Lcom/android/launcher3/logging/KeyboardStateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->a:Lcom/google/android/apps/nexuslauncher/logging/a;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->b:Lcom/android/launcher3/logging/KeyboardStateManager;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/WindowInsetsAnimationController;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->b:Lcom/android/launcher3/logging/KeyboardStateManager;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->a:Lcom/google/android/apps/nexuslauncher/logging/a;

    if-lez p1, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/KeyboardStateManager;->getKeyboardState()Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;->HIDE:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    if-ne v4, v5, :cond_2

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mOnReadyStartTimeMillis:J

    cmp-long p1, v4, v0

    if-lez p1, :cond_1

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->x:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mOnReadyStartTimeMillis:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, p1, v4, v5, p2}, Lcom/google/android/apps/nexuslauncher/logging/a;->a(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher3/logging/KeyboardStateManager;->getLastUpdatedTime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/apps/nexuslauncher/logging/a;->b:J

    new-instance p1, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {p1}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object p1

    iput-object p1, v3, Lcom/google/android/apps/nexuslauncher/logging/a;->c:Lcom/android/launcher3/logging/InstanceId;

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->w:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/apps/nexuslauncher/logging/a;->b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    goto :goto_1

    :cond_2
    if-gtz p1, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher3/logging/KeyboardStateManager;->getKeyboardState()Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;->SHOW:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    if-ne v4, v5, :cond_4

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mOnReadyStartTimeMillis:J

    cmp-long p1, v4, v0

    if-lez p1, :cond_3

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->t:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mOnReadyStartTimeMillis:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, p1, v4, v5, p2}, Lcom/google/android/apps/nexuslauncher/logging/a;->a(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/android/launcher3/logging/KeyboardStateManager;->getLastUpdatedTime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/apps/nexuslauncher/logging/a;->b:J

    new-instance p1, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {p1}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object p1

    iput-object p1, v3, Lcom/google/android/apps/nexuslauncher/logging/a;->c:Lcom/android/launcher3/logging/InstanceId;

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->s:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/apps/nexuslauncher/logging/a;->b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    goto :goto_1

    :cond_4
    sget-boolean v4, Lcom/google/android/apps/nexuslauncher/logging/b;->c:Z

    if-eqz v4, :cond_5

    const-string v4, "Invalid onCancelled operation performed with imeHeight= "

    const-string v5, " KeyboardState= "

    invoke-static {v4, p1, v5}, Landroidx/fragment/app/d0;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Lcom/android/launcher3/logging/KeyboardStateManager;->getKeyboardState()Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type= "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ImeLatencyLogging"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->A:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/apps/nexuslauncher/logging/a;->b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    :goto_1
    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mOnReadyStartTimeMillis:J

    return-void
.end method

.method public final b(Landroid/view/WindowInsetsAnimationController;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V
    .locals 6

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->a:Lcom/google/android/apps/nexuslauncher/logging/a;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->b:Lcom/android/launcher3/logging/KeyboardStateManager;

    if-lez p1, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/logging/KeyboardStateManager;->getKeyboardState()Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;->SHOW:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->u:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-virtual {v2, v4, p2}, Lcom/google/android/apps/nexuslauncher/logging/a;->b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher3/logging/KeyboardStateManager;->getKeyboardState()Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;->HIDE:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->y:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-virtual {v2, v4, p2}, Lcom/google/android/apps/nexuslauncher/logging/a;->b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    :goto_0
    invoke-virtual {v3, p1}, Lcom/android/launcher3/logging/KeyboardStateManager;->setImeHeight(I)V

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mOnReadyStartTimeMillis:J

    return-void

    :cond_1
    sget-boolean v4, Lcom/google/android/apps/nexuslauncher/logging/b;->c:Z

    if-eqz v4, :cond_2

    const-string v4, "Invalid onFinished operation performed with imeHeight= "

    const-string v5, " KeyboardState= "

    invoke-static {v4, p1, v5}, Landroidx/fragment/app/d0;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Lcom/android/launcher3/logging/KeyboardStateManager;->getKeyboardState()Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type= "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ImeLatencyLogging"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->B:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/apps/nexuslauncher/logging/a;->b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mOnReadyStartTimeMillis:J

    return-void
.end method

.method public final c(Landroid/view/WindowInsetsAnimationController;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->b:Lcom/android/launcher3/logging/KeyboardStateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/KeyboardStateManager;->getLastUpdatedTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->a:Lcom/google/android/apps/nexuslauncher/logging/a;

    iput-wide v1, v3, Lcom/google/android/apps/nexuslauncher/logging/a;->b:J

    new-instance v1, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v1}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v1}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/apps/nexuslauncher/logging/a;->c:Lcom/android/launcher3/logging/InstanceId;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mOnReadyStartTimeMillis:J

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    if-lez p0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/KeyboardStateManager;->getKeyboardState()Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;->HIDE:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->v:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/apps/nexuslauncher/logging/a;->b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    goto :goto_0

    :cond_0
    if-gtz p0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/logging/KeyboardStateManager;->getKeyboardState()Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;->SHOW:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    if-ne p1, v1, :cond_1

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->r:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/apps/nexuslauncher/logging/a;->b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/logging/KeyboardStateManager;->setImeHeight(I)V

    return-void

    :cond_1
    sget-boolean p1, Lcom/google/android/apps/nexuslauncher/logging/b;->c:Z

    if-eqz p1, :cond_2

    const-string p1, "Invalid onReady operation performed with imeHeight= "

    const-string v1, " KeyboardState= "

    invoke-static {p1, p0, v1}, Landroidx/fragment/app/d0;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/KeyboardStateManager;->getKeyboardState()Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImeLatencyLogging"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object p0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->z:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-virtual {v3, p0, p2}, Lcom/google/android/apps/nexuslauncher/logging/a;->b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    return-void
.end method
