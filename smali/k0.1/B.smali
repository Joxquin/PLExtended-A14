.class public final Lk0/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:Lcom/airbnb/lottie/a;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/a;)V
    .locals 0

    iput-object p1, p0, Lk0/B;->d:Lcom/airbnb/lottie/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object p0, p0, Lk0/B;->d:Lcom/airbnb/lottie/a;

    iget-object p1, p0, Lcom/airbnb/lottie/a;->r:Ls0/c;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    iget-object v0, p0, Lw0/d;->m:Lk0/m;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lw0/d;->i:F

    iget v1, v0, Lk0/m;->k:F

    sub-float/2addr p0, v1

    iget v0, v0, Lk0/m;->l:F

    sub-float/2addr v0, v1

    div-float/2addr p0, v0

    :goto_0
    invoke-virtual {p1, p0}, Ls0/c;->t(F)V

    :cond_1
    return-void
.end method
