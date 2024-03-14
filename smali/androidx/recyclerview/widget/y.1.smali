.class public final Landroidx/recyclerview/widget/y;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public d:Z

.field public final synthetic e:Landroidx/recyclerview/widget/A;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/A;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/y;->e:Landroidx/recyclerview/widget/A;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/y;->d:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/y;->d:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Landroidx/recyclerview/widget/y;->d:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/y;->d:Z

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/y;->e:Landroidx/recyclerview/widget/A;

    iget-object p1, p1, Landroidx/recyclerview/widget/A;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Landroidx/recyclerview/widget/A;

    iput v0, p0, Landroidx/recyclerview/widget/A;->D:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/A;->c(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Landroidx/recyclerview/widget/A;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/A;->D:I

    iget-object p0, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_0
    return-void
.end method
