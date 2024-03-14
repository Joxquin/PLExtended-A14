.class public final Lk2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:LC2/i;

.field public final synthetic e:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;LC2/i;)V
    .locals 0

    iput-object p1, p0, Lk2/b;->e:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lk2/b;->d:LC2/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lk2/b;->d:LC2/i;

    invoke-virtual {v0, p1}, LC2/i;->k(F)V

    iget-object v0, p0, Lk2/b;->e:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->t:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, LC2/i;

    if-eqz v1, :cond_0

    check-cast v0, LC2/i;

    invoke-virtual {v0, p1}, LC2/i;->k(F)V

    :cond_0
    iget-object p1, p0, Lk2/b;->e:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object p1, p1, Lcom/google/android/material/appbar/AppBarLayout;->r:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk2/l;

    iget-object v1, p0, Lk2/b;->d:LC2/i;

    iget v1, v1, LC2/i;->x:I

    invoke-interface {v0}, Lk2/l;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method
