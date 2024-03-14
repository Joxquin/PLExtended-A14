.class public final Lg0/Q;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lg0/u;


# instance fields
.field public final d:Landroid/view/ViewGroup;

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public g:Z

.field public final synthetic h:Lg0/h;


# direct methods
.method public constructor <init>(Lg0/h;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lg0/Q;->h:Lg0/h;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg0/Q;->g:Z

    iput-object p2, p0, Lg0/Q;->d:Landroid/view/ViewGroup;

    iput-object p3, p0, Lg0/Q;->e:Landroid/view/View;

    iput-object p4, p0, Lg0/Q;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Lg0/x;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final f(Lg0/x;)V
    .locals 0

    iget-boolean p1, p0, Lg0/Q;->g:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg0/Q;->h()V

    :cond_0
    return-void
.end method

.method public final g(Lg0/x;)V
    .locals 0

    invoke-virtual {p1, p0}, Lg0/x;->z(Lg0/u;)V

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lg0/Q;->f:Landroid/view/View;

    const v1, 0x7f0a02bc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lg0/Q;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lg0/Q;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg0/Q;->g:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg0/Q;->h()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lg0/Q;->h()V

    :cond_0
    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lg0/Q;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object p0, p0, Lg0/Q;->e:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lg0/Q;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lg0/Q;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object p0, p0, Lg0/Q;->e:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lg0/Q;->h:Lg0/h;

    invoke-virtual {p0}, Lg0/x;->d()V

    :goto_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lg0/Q;->f:Landroid/view/View;

    const p2, 0x7f0a02bc

    iget-object v0, p0, Lg0/Q;->e:Landroid/view/View;

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lg0/Q;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object p2, p0, Lg0/Q;->e:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg0/Q;->g:Z

    :cond_0
    return-void
.end method
