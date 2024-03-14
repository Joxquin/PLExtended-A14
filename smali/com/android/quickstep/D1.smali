.class public final synthetic Lcom/android/quickstep/D1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(ZLjava/util/List;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/D1;->d:Ljava/util/List;

    iput-object p3, p0, Lcom/android/quickstep/D1;->e:Landroid/view/SurfaceControl$Transaction;

    iput-boolean p1, p0, Lcom/android/quickstep/D1;->f:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/D1;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/android/quickstep/D1;->e:Landroid/view/SurfaceControl$Transaction;

    iget-boolean p0, p0, Lcom/android/quickstep/D1;->f:Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/TaskViewUtils;->f(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
