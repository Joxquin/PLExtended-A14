.class public final synthetic LL1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic d:LL1/l;

.field public final synthetic e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;


# direct methods
.method public synthetic constructor <init>(LL1/l;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/j;->d:LL1/l;

    iput-object p2, p0, LL1/j;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, LL1/j;->d:LL1/l;

    iget-object p0, p0, LL1/j;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, v0, LL1/l;->c:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a()V

    :cond_1
    const-wide/16 v1, -0x1

    iput-wide v1, v0, LL1/l;->c:J

    goto :goto_0

    :cond_2
    iget-wide v5, v0, LL1/l;->c:J

    cmp-long v1, v5, v2

    if-gez v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, LL1/l;->c:J

    :cond_3
    iget-object v0, v0, LL1/l;->a:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->w:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    invoke-virtual {v1, v0}, LL1/a0;->d(Landroid/graphics/PointF;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->g(Landroid/graphics/PointF;ZZ)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
