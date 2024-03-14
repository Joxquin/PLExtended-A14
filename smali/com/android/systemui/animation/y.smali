.class public final Lcom/android/systemui/animation/y;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public d:Z

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Ljava/util/Set;

.field public final synthetic g:Z

.field public final synthetic h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/Set;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/y;->e:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/animation/y;->f:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/android/systemui/animation/y;->g:Z

    iput-object p4, p0, Lcom/android/systemui/animation/y;->h:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/animation/y;->d:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/animation/y;->e:Landroid/view/View;

    const v0, 0x7f0a0352

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/animation/y;->f:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/systemui/animation/y;->e:Landroid/view/View;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->c()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/animation/y;->g:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/animation/y;->d:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/systemui/animation/A;->a:Lcom/android/systemui/animation/z;

    iget-object p1, p0, Lcom/android/systemui/animation/y;->e:Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/animation/z;->c(Landroid/view/View;)V

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/animation/y;->d:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/animation/y;->h:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
