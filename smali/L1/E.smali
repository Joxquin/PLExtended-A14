.class public final LL1/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final d:I

.field public final synthetic e:LL1/w;

.field public final synthetic f:LX1/f;

.field public final synthetic g:Landroid/graphics/Rect;

.field public final synthetic h:LV1/u;

.field public final synthetic i:LL1/H;


# direct methods
.method public constructor <init>(LL1/H;LL1/w;LX1/f;Landroid/graphics/Rect;LV1/u;)V
    .locals 0

    iput-object p1, p0, LL1/E;->i:LL1/H;

    iput-object p2, p0, LL1/E;->e:LL1/w;

    iput-object p3, p0, LL1/E;->f:LX1/f;

    iput-object p4, p0, LL1/E;->g:Landroid/graphics/Rect;

    iput-object p5, p0, LL1/E;->h:LV1/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, LL1/E;->d:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LL1/E;->i:LL1/H;

    iget v0, v0, LL1/H;->d:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, LL1/E;->d:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, LL1/E;->i:LL1/H;

    iget v0, v0, LL1/H;->e:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, LL1/E;->d:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    :cond_1
    iget-object v0, p0, LL1/E;->e:LL1/w;

    iget-boolean v0, v0, LL1/w;->p:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, LL1/E;->f:LX1/f;

    iget-object v2, p0, LL1/E;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, LX1/f;->i(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v3, p0, LL1/E;->i:LL1/H;

    iget-object v6, p0, LL1/E;->e:LL1/w;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move-object v4, p1

    invoke-static/range {v3 .. v8}, LL1/H;->a(LL1/H;Landroid/view/View;Landroid/graphics/Bitmap;LL1/w;FF)V

    iget-object p0, p0, LL1/E;->h:LV1/u;

    iget-object p0, p0, LV1/u;->a:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_IMAGE_DRAG:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, LL1/E;->i:LL1/H;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, LL1/H;->d:F

    iget-object v0, p0, LL1/E;->i:LL1/H;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, v0, LL1/H;->e:F

    iget-object p0, p0, LL1/E;->e:LL1/w;

    iget-boolean p0, p0, LL1/w;->p:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    :goto_0
    return v1
.end method
