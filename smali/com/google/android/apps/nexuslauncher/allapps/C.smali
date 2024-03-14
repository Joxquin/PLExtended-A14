.class public final Lcom/google/android/apps/nexuslauncher/allapps/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# instance fields
.field public final a:Lcom/google/android/apps/nexuslauncher/logging/b;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/logging/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/C;->a:Lcom/google/android/apps/nexuslauncher/logging/b;

    return-void
.end method


# virtual methods
.method public final onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/C;->a:Lcom/google/android/apps/nexuslauncher/logging/b;

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->ATOMIC:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/logging/b;->a(Landroid/view/WindowInsetsAnimationController;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    return-void
.end method

.method public final onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/C;->a:Lcom/google/android/apps/nexuslauncher/logging/b;

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->ATOMIC:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/logging/b;->b(Landroid/view/WindowInsetsAnimationController;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    return-void
.end method

.method public final onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/C;->a:Lcom/google/android/apps/nexuslauncher/logging/b;

    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->ATOMIC:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/logging/b;->c(Landroid/view/WindowInsetsAnimationController;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    return-void
.end method
