.class public abstract Lcom/android/wm/shell/common/magnetictarget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private animateStuckToTarget:Lm3/s;

.field private final animator:Lcom/android/wm/shell/animation/l;

.field private final associatedTargets:Ljava/util/ArrayList;

.field private flingToTargetEnabled:Z

.field private flingToTargetMinVelocity:F

.field private flingToTargetWidthPercent:F

.field private flingUnstuckFromTargetMinVelocity:F

.field private flungIntoTargetSpringConfig:Lcom/android/wm/shell/animation/g;

.field private hapticsEnabled:Z

.field public magnetListener:Lcom/android/wm/shell/common/magnetictarget/a;

.field private movedBeyondSlop:Z

.field private final objectLocationOnScreen:[I

.field private springConfig:Lcom/android/wm/shell/animation/g;

.field private stickToTargetMaxXVelocity:F

.field private targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/c;

.field private touchDown:Landroid/graphics/PointF;

.field private touchSlop:I

.field private final underlyingObject:Ljava/lang/Object;

.field private final velocityTracker:Landroid/view/VelocityTracker;

.field private final vibrationAttributes:Landroid/os/VibrationAttributes;

.field private final vibrator:Landroid/os/Vibrator;

.field private final xProperty:Landroidx/dynamicanimation/animation/q;

.field private final yProperty:Landroidx/dynamicanimation/animation/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroidx/dynamicanimation/animation/h;Landroidx/dynamicanimation/animation/h;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "underlyingObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xProperty"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yProperty"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/magnetictarget/d;->underlyingObject:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/common/magnetictarget/d;->xProperty:Landroidx/dynamicanimation/animation/q;

    iput-object p4, p0, Lcom/android/wm/shell/common/magnetictarget/d;->yProperty:Landroidx/dynamicanimation/animation/q;

    sget-object p3, Lcom/android/wm/shell/animation/l;->m:Lm3/l;

    invoke-static {p2}, Lcom/android/wm/shell/animation/c;->a(Ljava/lang/Object;)Lcom/android/wm/shell/animation/l;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/magnetictarget/d;->animator:Lcom/android/wm/shell/animation/l;

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/wm/shell/common/magnetictarget/d;->objectLocationOnScreen:[I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/magnetictarget/d;->associatedTargets:Ljava/util/ArrayList;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    const-string p3, "obtain()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/wm/shell/common/magnetictarget/d;->velocityTracker:Landroid/view/VelocityTracker;

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/d;->vibrator:Landroid/os/Vibrator;

    const/16 p1, 0x12

    invoke-static {p1}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object p1

    const-string p2, "createForUsage(\n        \u2026onAttributes.USAGE_TOUCH)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/d;->vibrationAttributes:Landroid/os/VibrationAttributes;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/d;->touchDown:Landroid/graphics/PointF;

    new-instance p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$animateStuckToTarget$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$animateStuckToTarget$1;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/d;->animateStuckToTarget:Lm3/s;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/magnetictarget/d;->flingToTargetEnabled:Z

    const/high16 p2, 0x40400000    # 3.0f

    iput p2, p0, Lcom/android/wm/shell/common/magnetictarget/d;->flingToTargetWidthPercent:F

    const/high16 p2, 0x457a0000    # 4000.0f

    iput p2, p0, Lcom/android/wm/shell/common/magnetictarget/d;->flingToTargetMinVelocity:F

    iput p2, p0, Lcom/android/wm/shell/common/magnetictarget/d;->flingUnstuckFromTargetMinVelocity:F

    const/high16 p2, 0x44fa0000    # 2000.0f

    iput p2, p0, Lcom/android/wm/shell/common/magnetictarget/d;->stickToTargetMaxXVelocity:F

    iput-boolean p1, p0, Lcom/android/wm/shell/common/magnetictarget/d;->hapticsEnabled:Z

    new-instance p1, Lcom/android/wm/shell/animation/g;

    const p2, 0x44bb8000    # 1500.0f

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3}, Lcom/android/wm/shell/animation/g;-><init>(FF)V

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/d;->springConfig:Lcom/android/wm/shell/animation/g;

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/d;->flungIntoTargetSpringConfig:Lcom/android/wm/shell/animation/g;

    return-void
.end method

.method public static final access$animateStuckToTargetInternal(Lcom/android/wm/shell/common/magnetictarget/d;Lcom/android/wm/shell/common/magnetictarget/c;FFZLm3/a;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/common/magnetictarget/b;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/magnetictarget/b;-><init>(Lcom/android/wm/shell/common/magnetictarget/c;)V

    iget-object v1, p1, Lcom/android/wm/shell/common/magnetictarget/c;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/wm/shell/common/magnetictarget/d;->underlyingObject:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/wm/shell/common/magnetictarget/d;->objectLocationOnScreen:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/magnetictarget/d;->getLocationOnScreen(Ljava/lang/Object;[I)V

    iget-object p1, p1, Lcom/android/wm/shell/common/magnetictarget/c;->c:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/magnetictarget/d;->getWidth(Ljava/lang/Object;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    aget v5, v1, v3

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/magnetictarget/d;->getHeight(Ljava/lang/Object;)F

    move-result v5

    div-float/2addr v5, v4

    sub-float/2addr p1, v5

    const/4 v4, 0x1

    aget v1, v1, v4

    int-to-float v1, v1

    sub-float/2addr p1, v1

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/wm/shell/common/magnetictarget/d;->flungIntoTargetSpringConfig:Lcom/android/wm/shell/animation/g;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/android/wm/shell/common/magnetictarget/d;->springConfig:Lcom/android/wm/shell/animation/g;

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/magnetictarget/d;->cancelAnimations$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib()V

    iget-object v1, p0, Lcom/android/wm/shell/common/magnetictarget/d;->xProperty:Landroidx/dynamicanimation/animation/q;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/q;->getValue(Ljava/lang/Object;)F

    move-result v4

    add-float/2addr v4, v2

    iget-object v2, p0, Lcom/android/wm/shell/common/magnetictarget/d;->animator:Lcom/android/wm/shell/animation/l;

    invoke-virtual {v2, v1, v4, p2, p4}, Lcom/android/wm/shell/animation/l;->g(Landroidx/dynamicanimation/animation/q;FFLcom/android/wm/shell/animation/g;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/magnetictarget/d;->yProperty:Landroidx/dynamicanimation/animation/q;

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/q;->getValue(Ljava/lang/Object;)F

    move-result p2

    add-float/2addr p2, p1

    invoke-virtual {v2, p0, p2, p3, p4}, Lcom/android/wm/shell/animation/l;->g(Landroidx/dynamicanimation/animation/q;FFLcom/android/wm/shell/animation/g;)V

    if-eqz p5, :cond_2

    filled-new-array {p5}, [Lm3/a;

    move-result-object p0

    iget-object p1, v2, Lcom/android/wm/shell/animation/l;->h:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    aget-object p0, p0, v3

    if-eqz p0, :cond_1

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v2}, Lcom/android/wm/shell/animation/l;->h()V

    return-void
.end method

.method public static final synthetic access$setTargetObjectIsStuckTo$p(Lcom/android/wm/shell/common/magnetictarget/d;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/common/magnetictarget/d;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/c;

    return-void
.end method

.method public static final synthetic access$vibrateIfEnabled(Lcom/android/wm/shell/common/magnetictarget/d;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/wm/shell/common/magnetictarget/d;->vibrateIfEnabled(I)V

    return-void
.end method

.method private final vibrateIfEnabled(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/common/magnetictarget/d;->hapticsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/common/magnetictarget/d;->vibrationAttributes:Landroid/os/VibrationAttributes;

    iget-object p0, p0, Lcom/android/wm/shell/common/magnetictarget/d;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addTarget(Lcom/android/wm/shell/common/magnetictarget/c;)V
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/magnetictarget/d;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/wm/shell/common/magnetictarget/b;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/magnetictarget/b;-><init>(Lcom/android/wm/shell/common/magnetictarget/c;)V

    iget-object p1, p1, Lcom/android/wm/shell/common/magnetictarget/c;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final cancelAnimations$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/magnetictarget/d;->xProperty:Landroidx/dynamicanimation/animation/q;

    iget-object v1, p0, Lcom/android/wm/shell/common/magnetictarget/d;->yProperty:Landroidx/dynamicanimation/animation/q;

    filled-new-array {v0, v1}, [Landroidx/dynamicanimation/animation/q;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/common/magnetictarget/d;->animator:Lcom/android/wm/shell/animation/l;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/animation/l;->b([Landroidx/dynamicanimation/animation/q;)V

    return-void
.end method

.method public abstract getHeight(Ljava/lang/Object;)F
.end method

.method public abstract getLocationOnScreen(Ljava/lang/Object;[I)V
.end method

.method public final getMagnetListener()Lcom/android/wm/shell/common/magnetictarget/a;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/magnetictarget/d;->magnetListener:Lcom/android/wm/shell/common/magnetictarget/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "magnetListener"

    invoke-static {p0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getUnderlyingObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/magnetictarget/d;->underlyingObject:Ljava/lang/Object;

    return-object p0
.end method

.method public abstract getWidth(Ljava/lang/Object;)F
.end method

.method public final maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ev"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/d;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/wm/shell/common/magnetictarget/d;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/common/magnetictarget/c;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/wm/shell/common/magnetictarget/b;

    invoke-direct {v8, v7}, Lcom/android/wm/shell/common/magnetictarget/b;-><init>(Lcom/android/wm/shell/common/magnetictarget/c;)V

    iget-object v7, v7, Lcom/android/wm/shell/common/magnetictarget/c;->a:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/magnetictarget/c;

    iget-object v3, v3, Lcom/android/wm/shell/common/magnetictarget/c;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v0, Lcom/android/wm/shell/common/magnetictarget/d;->touchSlop:I

    :cond_2
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    iput-object v5, v0, Lcom/android/wm/shell/common/magnetictarget/d;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/c;

    iget-object v3, v0, Lcom/android/wm/shell/common/magnetictarget/d;->touchDown:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v4, v0, Lcom/android/wm/shell/common/magnetictarget/d;->movedBeyondSlop:Z

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v3, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v1, v3, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float v3, v3

    neg-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-boolean v3, v0, Lcom/android/wm/shell/common/magnetictarget/d;->movedBeyondSlop:Z

    const/4 v7, 0x1

    if-nez v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v8, v0, Lcom/android/wm/shell/common/magnetictarget/d;->touchDown:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v8

    float-to-double v8, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v10, v0, Lcom/android/wm/shell/common/magnetictarget/d;->touchDown:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v10

    float-to-double v10, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v3, v8

    iget v8, v0, Lcom/android/wm/shell/common/magnetictarget/d;->touchSlop:I

    int-to-float v8, v8

    cmpl-float v3, v3, v8

    if-lez v3, :cond_4

    iput-boolean v7, v0, Lcom/android/wm/shell/common/magnetictarget/d;->movedBeyondSlop:Z

    goto :goto_1

    :cond_4
    return v4

    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/wm/shell/common/magnetictarget/c;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    iget-object v11, v9, Lcom/android/wm/shell/common/magnetictarget/c;->c:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    iget-object v13, v9, Lcom/android/wm/shell/common/magnetictarget/c;->c:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v10, v10

    iget v9, v9, Lcom/android/wm/shell/common/magnetictarget/c;->b:I

    int-to-float v9, v9

    cmpg-float v9, v10, v9

    if-gez v9, :cond_7

    move v9, v7

    goto :goto_2

    :cond_7
    move v9, v4

    :goto_2
    if-eqz v9, :cond_6

    goto :goto_3

    :cond_8
    move-object v8, v5

    :goto_3
    move-object v10, v8

    check-cast v10, Lcom/android/wm/shell/common/magnetictarget/c;

    iget-object v3, v0, Lcom/android/wm/shell/common/magnetictarget/d;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/c;

    if-eqz v3, :cond_9

    move v8, v7

    goto :goto_4

    :cond_9
    move v8, v4

    :goto_4
    if-nez v8, :cond_a

    if-eqz v10, :cond_a

    move v8, v7

    goto :goto_5

    :cond_a
    move v8, v4

    :goto_5
    if-eqz v3, :cond_b

    move v9, v7

    goto :goto_6

    :cond_b
    move v9, v4

    :goto_6
    if-eqz v9, :cond_c

    if-eqz v10, :cond_c

    invoke-static {v3, v10}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v3, v7

    goto :goto_7

    :cond_c
    move v3, v4

    :goto_7
    const/4 v15, 0x2

    const/4 v14, 0x5

    const/16 v13, 0x3e8

    if-nez v8, :cond_10

    if-eqz v3, :cond_d

    goto :goto_9

    :cond_d
    if-nez v10, :cond_f

    iget-object v3, v0, Lcom/android/wm/shell/common/magnetictarget/d;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/c;

    if-eqz v3, :cond_e

    move v3, v7

    goto :goto_8

    :cond_e
    move v3, v4

    :goto_8
    if-eqz v3, :cond_f

    invoke-virtual {v6, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/d;->cancelAnimations$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/d;->getMagnetListener()Lcom/android/wm/shell/common/magnetictarget/a;

    move-result-object v3

    iget-object v8, v0, Lcom/android/wm/shell/common/magnetictarget/d;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/c;

    invoke-static {v8}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    invoke-interface {v3}, Lcom/android/wm/shell/common/magnetictarget/a;->onUnstuckFromTarget()V

    iput-object v5, v0, Lcom/android/wm/shell/common/magnetictarget/d;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/c;

    invoke-direct {v0, v15}, Lcom/android/wm/shell/common/magnetictarget/d;->vibrateIfEnabled(I)V

    :cond_f
    move v8, v13

    move v3, v14

    goto :goto_a

    :cond_10
    :goto_9
    invoke-virtual {v6, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    if-eqz v8, :cond_11

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v11, v0, Lcom/android/wm/shell/common/magnetictarget/d;->stickToTargetMaxXVelocity:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_11

    return v4

    :cond_11
    iput-object v10, v0, Lcom/android/wm/shell/common/magnetictarget/d;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/c;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/d;->cancelAnimations$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/d;->getMagnetListener()Lcom/android/wm/shell/common/magnetictarget/a;

    move-result-object v8

    invoke-static {v10}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-interface {v8}, Lcom/android/wm/shell/common/magnetictarget/a;->onStuckToTarget()V

    iget-object v8, v0, Lcom/android/wm/shell/common/magnetictarget/d;->animateStuckToTarget:Lm3/s;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v16, 0x0

    move-object v9, v8

    check-cast v9, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$animateStuckToTarget$1;

    move v8, v13

    move-object v13, v3

    move v3, v14

    move-object/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$animateStuckToTarget$1;->a(Lcom/android/wm/shell/common/magnetictarget/c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Le3/f;

    invoke-direct {v0, v3}, Lcom/android/wm/shell/common/magnetictarget/d;->vibrateIfEnabled(I)V

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v7, :cond_1f

    invoke-virtual {v6, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/d;->cancelAnimations$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib()V

    iget-object v9, v0, Lcom/android/wm/shell/common/magnetictarget/d;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/c;

    if-eqz v9, :cond_12

    move v9, v7

    goto :goto_b

    :cond_12
    move v9, v4

    :goto_b
    if-eqz v9, :cond_14

    neg-float v1, v6

    iget v2, v0, Lcom/android/wm/shell/common/magnetictarget/d;->flingUnstuckFromTargetMinVelocity:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/d;->getMagnetListener()Lcom/android/wm/shell/common/magnetictarget/a;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/d;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/c;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/android/wm/shell/common/magnetictarget/a;->onUnstuckFromTarget()V

    goto :goto_c

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/d;->getMagnetListener()Lcom/android/wm/shell/common/magnetictarget/a;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/d;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/c;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/android/wm/shell/common/magnetictarget/a;->onReleasedInTarget()V

    invoke-direct {v0, v3}, Lcom/android/wm/shell/common/magnetictarget/d;->vibrateIfEnabled(I)V

    :goto_c
    iput-object v5, v0, Lcom/android/wm/shell/common/magnetictarget/d;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/c;

    return v7

    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/wm/shell/common/magnetictarget/c;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iget-boolean v12, v0, Lcom/android/wm/shell/common/magnetictarget/d;->flingToTargetEnabled:Z

    if-nez v12, :cond_16

    goto :goto_10

    :cond_16
    iget-object v12, v9, Lcom/android/wm/shell/common/magnetictarget/c;->c:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    cmpg-float v13, v11, v12

    if-gez v13, :cond_17

    iget v13, v0, Lcom/android/wm/shell/common/magnetictarget/d;->flingToTargetMinVelocity:F

    cmpl-float v13, v6, v13

    if-lez v13, :cond_18

    goto :goto_d

    :cond_17
    iget v13, v0, Lcom/android/wm/shell/common/magnetictarget/d;->flingToTargetMinVelocity:F

    cmpg-float v13, v6, v13

    if-gez v13, :cond_18

    :goto_d
    move v13, v7

    goto :goto_e

    :cond_18
    move v13, v4

    :goto_e
    if-nez v13, :cond_19

    goto :goto_10

    :cond_19
    const/4 v13, 0x0

    cmpg-float v13, v8, v13

    if-nez v13, :cond_1a

    move v13, v7

    goto :goto_f

    :cond_1a
    move v13, v4

    :goto_f
    if-nez v13, :cond_1b

    div-float v13, v6, v8

    mul-float/2addr v10, v13

    sub-float/2addr v11, v10

    sub-float/2addr v12, v11

    div-float v10, v12, v13

    :cond_1b
    iget-object v11, v9, Lcom/android/wm/shell/common/magnetictarget/c;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lcom/android/wm/shell/common/magnetictarget/d;->flingToTargetWidthPercent:F

    mul-float/2addr v11, v12

    iget-object v9, v9, Lcom/android/wm/shell/common/magnetictarget/c;->c:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    int-to-float v12, v15

    div-float/2addr v11, v12

    sub-float v12, v9, v11

    cmpl-float v12, v10, v12

    if-lez v12, :cond_1c

    add-float/2addr v9, v11

    cmpg-float v9, v10, v9

    if-gez v9, :cond_1c

    move v9, v7

    goto :goto_11

    :cond_1c
    :goto_10
    move v9, v4

    :goto_11
    if-eqz v9, :cond_15

    move-object v5, v3

    :cond_1d
    move-object v10, v5

    check-cast v10, Lcom/android/wm/shell/common/magnetictarget/c;

    if-eqz v10, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/d;->getMagnetListener()Lcom/android/wm/shell/common/magnetictarget/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/wm/shell/common/magnetictarget/a;->onStuckToTarget()V

    iput-object v10, v0, Lcom/android/wm/shell/common/magnetictarget/d;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/c;

    iget-object v1, v0, Lcom/android/wm/shell/common/magnetictarget/d;->animateStuckToTarget:Lm3/s;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v14, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;

    invoke-direct {v14, v0, v10}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;-><init>(Lcom/android/wm/shell/common/magnetictarget/d;Lcom/android/wm/shell/common/magnetictarget/c;)V

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$animateStuckToTarget$1;

    invoke-virtual/range {v9 .. v14}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$animateStuckToTarget$1;->a(Lcom/android/wm/shell/common/magnetictarget/c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Le3/f;

    return v7

    :cond_1e
    return v4

    :cond_1f
    iget-object v0, v0, Lcom/android/wm/shell/common/magnetictarget/d;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/c;

    if-eqz v0, :cond_20

    move v4, v7

    :cond_20
    return v4
.end method

.method public final setFlingToTargetMinVelocity()V
    .locals 1

    const v0, 0x45bb8000    # 6000.0f

    iput v0, p0, Lcom/android/wm/shell/common/magnetictarget/d;->flingToTargetMinVelocity:F

    return-void
.end method

.method public final setHapticsEnabled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/common/magnetictarget/d;->hapticsEnabled:Z

    return-void
.end method
