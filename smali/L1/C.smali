.class public final LL1/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic d:LL1/w;

.field public final synthetic e:LX1/f;

.field public final synthetic f:Landroid/graphics/Rect;

.field public final synthetic g:LV1/u;

.field public final synthetic h:LX1/s;

.field public final synthetic i:Landroid/graphics/RectF;

.field public final synthetic j:LL1/H;


# direct methods
.method public constructor <init>(LL1/H;LL1/w;LX1/f;Landroid/graphics/Rect;LV1/u;LX1/s;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, LL1/C;->j:LL1/H;

    iput-object p2, p0, LL1/C;->d:LL1/w;

    iput-object p3, p0, LL1/C;->e:LX1/f;

    iput-object p4, p0, LL1/C;->f:Landroid/graphics/Rect;

    iput-object p5, p0, LL1/C;->g:LV1/u;

    iput-object p6, p0, LL1/C;->h:LX1/s;

    iput-object p7, p0, LL1/C;->i:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iget-object v0, p0, LL1/C;->d:LL1/w;

    iget-boolean v0, v0, LL1/w;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LL1/C;->e:LX1/f;

    iget-object v2, p0, LL1/C;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, LX1/f;->i(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v3, p0, LL1/C;->j:LL1/H;

    iget-object v6, p0, LL1/C;->d:LL1/w;

    iget v7, v3, LL1/H;->d:F

    iget v8, v3, LL1/H;->e:F

    move-object v4, p1

    invoke-static/range {v3 .. v8}, LL1/H;->a(LL1/H;Landroid/view/View;Landroid/graphics/Bitmap;LL1/w;FF)V

    iget-object p0, p0, LL1/C;->g:LV1/u;

    iget-object p0, p0, LV1/u;->a:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_IMAGE_DRAG:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LL1/C;->g:LV1/u;

    iget-object p1, p1, LV1/u;->a:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_IMAGE_LONG_PRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object p1, p0, LL1/C;->h:LX1/s;

    iget-object p0, p0, LL1/C;->i:Landroid/graphics/RectF;

    iget-object v0, p1, LX1/s;->a:LX1/t;

    iget-object v0, v0, LX1/t;->b:LX1/u;

    iput-boolean v1, v0, LX1/u;->u:Z

    new-instance v2, LX1/r;

    invoke-direct {v2, p1, p0, v1}, LX1/r;-><init>(LX1/s;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    :goto_0
    return v1
.end method
