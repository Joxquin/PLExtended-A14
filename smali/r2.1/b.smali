.class public final Lr2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lr2/g;FFF)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Lr2/d;->a:Lr2/d;

    sget-object v1, Lr2/c;->b:Lr2/c;

    new-instance v2, Lr2/f;

    invoke-direct {v2, p1, p2, p3}, Lr2/f;-><init>(FFF)V

    filled-new-array {v2}, [Lr2/f;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p0}, Lr2/g;->c()Lr2/f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Lr2/f;->c:F

    check-cast p0, Landroid/view/View;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-static {p0, p1, p2, v1, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p0

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    filled-new-array {v0, p0}, [Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Caller must set a non-null RevealInfo before calling this."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
