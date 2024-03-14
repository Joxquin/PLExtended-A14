.class public final synthetic Lcom/android/launcher3/graphics/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/animation/FloatArrayEvaluator;

.field public final synthetic f:[F

.field public final synthetic g:[F

.field public final synthetic h:Landroid/graphics/Path;

.field public final synthetic i:Lcom/android/launcher3/graphics/IconShape$PathShape;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/IconShape$PathShape;Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;I)V
    .locals 0

    iput p6, p0, Lcom/android/launcher3/graphics/a;->d:I

    iput-object p1, p0, Lcom/android/launcher3/graphics/a;->i:Lcom/android/launcher3/graphics/IconShape$PathShape;

    iput-object p2, p0, Lcom/android/launcher3/graphics/a;->e:Landroid/animation/FloatArrayEvaluator;

    iput-object p3, p0, Lcom/android/launcher3/graphics/a;->f:[F

    iput-object p4, p0, Lcom/android/launcher3/graphics/a;->g:[F

    iput-object p5, p0, Lcom/android/launcher3/graphics/a;->h:Landroid/graphics/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget v0, p0, Lcom/android/launcher3/graphics/a;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/a;->i:Lcom/android/launcher3/graphics/IconShape$PathShape;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/graphics/IconShape$Circle;

    iget-object v2, p0, Lcom/android/launcher3/graphics/a;->e:Landroid/animation/FloatArrayEvaluator;

    iget-object v3, p0, Lcom/android/launcher3/graphics/a;->f:[F

    iget-object v4, p0, Lcom/android/launcher3/graphics/a;->g:[F

    iget-object v5, p0, Lcom/android/launcher3/graphics/a;->h:Landroid/graphics/Path;

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/graphics/IconShape$Circle;->a(Lcom/android/launcher3/graphics/IconShape$Circle;Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/a;->i:Lcom/android/launcher3/graphics/IconShape$PathShape;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/graphics/IconShape$TearDrop;

    iget-object v2, p0, Lcom/android/launcher3/graphics/a;->e:Landroid/animation/FloatArrayEvaluator;

    iget-object v3, p0, Lcom/android/launcher3/graphics/a;->f:[F

    iget-object v4, p0, Lcom/android/launcher3/graphics/a;->g:[F

    iget-object v5, p0, Lcom/android/launcher3/graphics/a;->h:Landroid/graphics/Path;

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/graphics/IconShape$TearDrop;->a(Lcom/android/launcher3/graphics/IconShape$TearDrop;Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
