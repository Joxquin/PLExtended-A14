.class public final Lcom/android/systemui/animation/p;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/android/systemui/animation/l;

.field public final synthetic e:Z

.field public final synthetic f:Landroid/view/ViewGroupOverlay;

.field public final synthetic g:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic h:Z

.field public final synthetic i:Landroid/view/ViewOverlay;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/b;ZLandroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;ZLandroid/view/ViewOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/p;->d:Lcom/android/systemui/animation/l;

    iput-boolean p2, p0, Lcom/android/systemui/animation/p;->e:Z

    iput-object p3, p0, Lcom/android/systemui/animation/p;->f:Landroid/view/ViewGroupOverlay;

    iput-object p4, p0, Lcom/android/systemui/animation/p;->g:Landroid/graphics/drawable/GradientDrawable;

    iput-boolean p5, p0, Lcom/android/systemui/animation/p;->h:Z

    iput-object p6, p0, Lcom/android/systemui/animation/p;->i:Landroid/view/ViewOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/animation/p;->d:Lcom/android/systemui/animation/l;

    iget-boolean v0, p0, Lcom/android/systemui/animation/p;->e:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/animation/l;->onLaunchAnimationEnd(Z)V

    iget-object p1, p0, Lcom/android/systemui/animation/p;->f:Landroid/view/ViewGroupOverlay;

    iget-object v0, p0, Lcom/android/systemui/animation/p;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/android/systemui/animation/p;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/animation/p;->i:Landroid/view/ViewOverlay;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/animation/p;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    const-string p2, "animation"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/animation/p;->d:Lcom/android/systemui/animation/l;

    iget-boolean p2, p0, Lcom/android/systemui/animation/p;->e:Z

    invoke-interface {p1, p2}, Lcom/android/systemui/animation/l;->onLaunchAnimationStart(Z)V

    iget-object p1, p0, Lcom/android/systemui/animation/p;->f:Landroid/view/ViewGroupOverlay;

    iget-object p0, p0, Lcom/android/systemui/animation/p;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
