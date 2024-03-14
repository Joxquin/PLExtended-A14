.class final Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# instance fields
.field final synthetic $animatedProperty:Landroidx/dynamicanimation/animation/q;

.field final synthetic $currentValue:F

.field final synthetic $flingConfig:Lcom/android/wm/shell/animation/e;

.field final synthetic $target:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/wm/shell/animation/l;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/animation/e;Lcom/android/wm/shell/animation/l;Landroidx/dynamicanimation/animation/q;Ljava/lang/Object;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;->$flingConfig:Lcom/android/wm/shell/animation/e;

    iput-object p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;->this$0:Lcom/android/wm/shell/animation/l;

    iput-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;->$animatedProperty:Landroidx/dynamicanimation/animation/q;

    iput-object p4, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;->$target:Ljava/lang/Object;

    iput p5, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;->$currentValue:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;->$flingConfig:Lcom/android/wm/shell/animation/e;

    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;->$currentValue:F

    iget v2, v0, Lcom/android/wm/shell/animation/e;->b:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/animation/e;->b:F

    iget v2, v0, Lcom/android/wm/shell/animation/e;->c:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/animation/e;->c:F

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;->this$0:Lcom/android/wm/shell/animation/l;

    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;->$animatedProperty:Landroidx/dynamicanimation/animation/q;

    filled-new-array {v1}, [Landroidx/dynamicanimation/animation/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/animation/l;->b([Landroidx/dynamicanimation/animation/q;)V

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;->this$0:Lcom/android/wm/shell/animation/l;

    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;->$animatedProperty:Landroidx/dynamicanimation/animation/q;

    iget-object v2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;->$target:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/wm/shell/animation/l;->c:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Landroidx/dynamicanimation/animation/o;

    invoke-direct {v4, v1, v2}, Landroidx/dynamicanimation/animation/o;-><init>(Landroidx/dynamicanimation/animation/q;Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/android/wm/shell/animation/l;->c(Landroidx/dynamicanimation/animation/m;Landroidx/dynamicanimation/animation/q;)V

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v4, Landroidx/dynamicanimation/animation/o;

    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;->$flingConfig:Lcom/android/wm/shell/animation/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/wm/shell/animation/e;->a:F

    cmpg-float v0, v1, v0

    if-lez v0, :cond_1

    const v0, -0x3f79999a    # -4.2f

    mul-float/2addr v1, v0

    iget-object v0, v4, Landroidx/dynamicanimation/animation/o;->x:Landroidx/dynamicanimation/animation/n;

    iput v1, v0, Landroidx/dynamicanimation/animation/n;->a:F

    iget v0, p0, Lcom/android/wm/shell/animation/e;->b:F

    iput v0, v4, Landroidx/dynamicanimation/animation/m;->h:F

    iget v0, p0, Lcom/android/wm/shell/animation/e;->c:F

    iput v0, v4, Landroidx/dynamicanimation/animation/m;->g:F

    iget p0, p0, Lcom/android/wm/shell/animation/e;->d:F

    iput p0, v4, Landroidx/dynamicanimation/animation/m;->a:F

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/m;->h()V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Friction must be positive"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
