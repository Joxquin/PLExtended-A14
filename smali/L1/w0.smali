.class public final LL1/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:LV1/u;

.field public final synthetic e:LX1/s;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:LL1/A0;


# direct methods
.method public constructor <init>(LL1/A0;LV1/u;LX1/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LL1/w0;->g:LL1/A0;

    iput-object p2, p0, LL1/w0;->d:LV1/u;

    iput-object p3, p0, LL1/w0;->e:LX1/s;

    iput-object p4, p0, LL1/w0;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, LL1/w0;->d:LV1/u;

    iget-object p1, p1, LV1/u;->a:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_URL_INDICATOR_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object p1, p0, LL1/w0;->e:LX1/s;

    iget-object v0, p0, LL1/w0;->f:Ljava/lang/String;

    iget-object v1, p1, LX1/s;->a:LX1/t;

    iget-object v1, v1, LX1/t;->b:LX1/u;

    const/4 v2, 0x1

    iput-boolean v2, v1, LX1/u;->u:Z

    new-instance v3, LX1/r;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v0, v4}, LX1/r;-><init>(LX1/s;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    iget-object p1, p0, LL1/w0;->g:LL1/A0;

    invoke-virtual {p1, v2}, LL1/A0;->b(Z)V

    iget-object p1, p0, LL1/w0;->g:LL1/A0;

    iget-object v0, p1, LL1/A0;->f:Landroid/widget/TextView;

    new-instance v1, LL1/z0;

    iget-object p0, p0, LL1/w0;->g:LL1/A0;

    invoke-direct {v1, p0}, LL1/z0;-><init>(LL1/A0;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    iput-object p0, p1, LL1/A0;->k:Landroid/view/ActionMode;

    return-void
.end method
