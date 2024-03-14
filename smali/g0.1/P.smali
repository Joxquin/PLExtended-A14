.class public final Lg0/P;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lg0/u;


# instance fields
.field public final d:Landroid/view/View;

.field public final e:I

.field public final f:Landroid/view/ViewGroup;

.field public final g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg0/P;->i:Z

    iput-object p1, p0, Lg0/P;->d:Landroid/view/View;

    iput p2, p0, Lg0/P;->e:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lg0/P;->f:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg0/P;->g:Z

    invoke-virtual {p0, p1}, Lg0/P;->h(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lg0/x;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg0/P;->h(Z)V

    iget-boolean v0, p0, Lg0/P;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg0/P;->d:Landroid/view/View;

    iget p0, p0, Lg0/P;->e:I

    sget-object v1, Lg0/I;->a:Lg0/N;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTransitionVisibility(I)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg0/P;->h(Z)V

    iget-boolean v0, p0, Lg0/P;->i:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lg0/P;->d:Landroid/view/View;

    sget-object v0, Lg0/I;->a:Lg0/N;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTransitionVisibility(I)V

    :cond_0
    return-void
.end method

.method public final f(Lg0/x;)V
    .locals 0

    return-void
.end method

.method public final g(Lg0/x;)V
    .locals 0

    invoke-virtual {p1, p0}, Lg0/x;->z(Lg0/u;)V

    return-void
.end method

.method public final h(Z)V
    .locals 1

    iget-boolean v0, p0, Lg0/P;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lg0/P;->h:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lg0/P;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lg0/P;->h:Z

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_0
    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg0/P;->i:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lg0/P;->i:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lg0/P;->d:Landroid/view/View;

    iget v0, p0, Lg0/P;->e:I

    sget-object v1, Lg0/I;->a:Lg0/N;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 4
    iget-object p1, p0, Lg0/P;->f:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lg0/P;->h(Z)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 1

    if-nez p2, :cond_1

    .line 7
    iget-boolean p1, p0, Lg0/P;->i:Z

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lg0/P;->d:Landroid/view/View;

    iget p2, p0, Lg0/P;->e:I

    sget-object v0, Lg0/I;->a:Lg0/N;

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 10
    iget-object p1, p0, Lg0/P;->f:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lg0/P;->h(Z)V

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lg0/P;->d:Landroid/view/View;

    sget-object p2, Lg0/I;->a:Lg0/N;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 4
    iget-object p0, p0, Lg0/P;->f:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method
