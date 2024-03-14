.class public final Landroidx/recyclerview/widget/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Landroidx/recyclerview/widget/E0;

.field public final synthetic e:I

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:I

.field public final synthetic h:Landroid/view/ViewPropertyAnimator;

.field public final synthetic i:Landroidx/recyclerview/widget/n;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/n;Landroidx/recyclerview/widget/E0;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/j;->i:Landroidx/recyclerview/widget/n;

    iput-object p2, p0, Landroidx/recyclerview/widget/j;->d:Landroidx/recyclerview/widget/E0;

    iput p3, p0, Landroidx/recyclerview/widget/j;->e:I

    iput-object p4, p0, Landroidx/recyclerview/widget/j;->f:Landroid/view/View;

    iput p5, p0, Landroidx/recyclerview/widget/j;->g:I

    iput-object p6, p0, Landroidx/recyclerview/widget/j;->h:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Landroidx/recyclerview/widget/j;->e:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/j;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/j;->g:I

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/j;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/recyclerview/widget/j;->h:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroidx/recyclerview/widget/j;->i:Landroidx/recyclerview/widget/n;

    iget-object v0, p0, Landroidx/recyclerview/widget/j;->d:Landroidx/recyclerview/widget/E0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/h0;->c(Landroidx/recyclerview/widget/E0;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/j;->i:Landroidx/recyclerview/widget/n;

    iget-object p1, p1, Landroidx/recyclerview/widget/n;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/recyclerview/widget/j;->d:Landroidx/recyclerview/widget/E0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/j;->i:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n;->i()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/j;->i:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
