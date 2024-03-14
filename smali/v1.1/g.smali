.class public final Lv1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/d;


# instance fields
.field public final d:Lt1/d;

.field public final e:Landroidx/dynamicanimation/animation/s;

.field public f:Z

.field public g:Z

.field public h:F


# direct methods
.method public constructor <init>(Lv1/b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/g;->d:Lt1/d;

    new-instance p1, Landroidx/dynamicanimation/animation/s;

    sget-object v0, Lv1/f;->a:Lv1/f;

    invoke-direct {p1, v0, p0}, Landroidx/dynamicanimation/animation/s;-><init>(Landroidx/dynamicanimation/animation/q;Ljava/lang/Object;)V

    new-instance v0, Landroidx/dynamicanimation/animation/t;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/t;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/t;->a(F)V

    const v2, 0x47c35000    # 100000.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/t;->b(F)V

    float-to-double v2, v1

    iput-wide v2, v0, Landroidx/dynamicanimation/animation/t;->i:D

    iput-object v0, p1, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    const/4 v0, 0x0

    iput v0, p1, Landroidx/dynamicanimation/animation/m;->h:F

    iput v1, p1, Landroidx/dynamicanimation/animation/m;->g:F

    const v0, 0x3a83126f    # 0.001f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/m;->e(F)V

    iput-object p1, p0, Lv1/g;->e:Landroidx/dynamicanimation/animation/s;

    iput v1, p0, Lv1/g;->h:F

    return-void
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv1/g;->f:Z

    iput-boolean v0, p0, Lv1/g;->g:Z

    iget-object p0, p0, Lv1/g;->d:Lt1/d;

    invoke-interface {p0}, Lt1/d;->onTransitionFinished()V

    return-void
.end method

.method public final onTransitionProgress(F)V
    .locals 3

    iget-boolean v0, p0, Lv1/g;->f:Z

    const-string v1, "UnfoldRemoteFilter"

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lv1/g;->g:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lv1/g;->e:Landroidx/dynamicanimation/animation/s;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/s;->j(F)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lv1/g;->d:Lt1/d;

    invoke-interface {v0, p1}, Lt1/d;->onTransitionProgress(F)V

    goto :goto_0

    :cond_1
    const-string v0, "Filtered progress received received while animation not in progress."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput p1, p0, Lv1/g;->h:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv1/g;->g:Z

    goto :goto_1

    :cond_2
    const-string p0, "Progress received while not in progress."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final onTransitionStarted()V
    .locals 1

    iget-object v0, p0, Lv1/g;->d:Lt1/d;

    invoke-interface {v0}, Lt1/d;->onTransitionStarted()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv1/g;->f:Z

    return-void
.end method
