.class public final LL1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Landroid/graphics/RectF;

.field public final synthetic e:LL1/w;


# direct methods
.method public constructor <init>(LL1/w;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, LL1/v;->e:LL1/w;

    iput-object p2, p0, LL1/v;->d:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Landroid/graphics/RectF;

    iget-object v0, p0, LL1/v;->d:Landroid/graphics/RectF;

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v0, p0, LL1/v;->e:LL1/w;

    iget-object v0, v0, LL1/w;->c:LL1/a0;

    invoke-virtual {v0, p1}, LL1/a0;->e(Landroid/graphics/RectF;)V

    iget-object v0, p0, LL1/v;->e:LL1/w;

    iget-object v0, v0, LL1/w;->k:LX1/s;

    iget-object v1, v0, LX1/s;->a:LX1/t;

    iget-object v1, v1, LX1/t;->b:LX1/u;

    const/4 v2, 0x1

    iput-boolean v2, v1, LX1/u;->u:Z

    new-instance v3, LX1/r;

    invoke-direct {v3, v0, p1, v2}, LX1/r;-><init>(LX1/s;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    iget-object p0, p0, LL1/v;->e:LL1/w;

    iget-object p0, p0, LL1/w;->j:LV1/u;

    iget-object p0, p0, LV1/u;->a:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_IMAGE_INDICATOR_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method
