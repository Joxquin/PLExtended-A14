.class public final synthetic Lcom/android/quickstep/C1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;I)V
    .locals 0

    iput p3, p0, Lcom/android/quickstep/C1;->d:I

    iput-object p1, p0, Lcom/android/quickstep/C1;->e:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/quickstep/C1;->f:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/C1;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/C1;->e:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/quickstep/C1;->f:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/TaskViewUtils;->b(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/C1;->e:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/quickstep/C1;->f:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/TaskViewUtils;->e(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
