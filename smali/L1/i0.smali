.class public final synthetic LL1/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/A;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/i0;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 1

    iget-object p0, p0, LL1/i0;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    invoke-virtual {p1, v0}, LL1/a0;->d(Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->g(Landroid/graphics/PointF;ZZ)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->b(ZZ)V

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->k:LV1/u;

    iget-object p0, p0, LV1/u;->a:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SELECT_MODE_ITEM:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method
