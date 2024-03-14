.class public final Landroidx/core/view/N;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Landroidx/core/view/P;

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/core/view/P;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/N;->d:Landroidx/core/view/P;

    iput-object p2, p0, Landroidx/core/view/N;->e:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Landroidx/core/view/N;->d:Landroidx/core/view/P;

    iget-object p0, p0, Landroidx/core/view/N;->e:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/view/P;->b(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/N;->d:Landroidx/core/view/P;

    invoke-interface {p0}, Landroidx/core/view/P;->a()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/N;->d:Landroidx/core/view/P;

    invoke-interface {p0}, Landroidx/core/view/P;->c()V

    return-void
.end method
