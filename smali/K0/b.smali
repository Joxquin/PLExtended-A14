.class public final synthetic LK0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:Landroid/graphics/Path;

.field public final synthetic e:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Path;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK0/b;->d:Landroid/graphics/Path;

    iput-object p2, p0, LK0/b;->e:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p3, p0, LK0/b;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, LK0/b;->d:Landroid/graphics/Path;

    iget-object v1, p0, LK0/b;->e:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iget-object p0, p0, LK0/b;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-interface {v1, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    check-cast p0, Lcom/android/launcher3/views/ClipPathView;

    invoke-interface {p0, v0}, Lcom/android/launcher3/views/ClipPathView;->setClipPath(Landroid/graphics/Path;)V

    return-void
.end method
