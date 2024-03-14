.class public final Landroidx/recyclerview/widget/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroidx/recyclerview/widget/l;

.field public final synthetic f:Landroid/view/ViewPropertyAnimator;

.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:Landroidx/recyclerview/widget/n;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/n;Landroidx/recyclerview/widget/l;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V
    .locals 0

    iput p5, p0, Landroidx/recyclerview/widget/k;->d:I

    iput-object p1, p0, Landroidx/recyclerview/widget/k;->h:Landroidx/recyclerview/widget/n;

    iput-object p2, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/l;

    iput-object p3, p0, Landroidx/recyclerview/widget/k;->f:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroidx/recyclerview/widget/k;->g:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget p1, p0, Landroidx/recyclerview/widget/k;->d:I

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->f:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->g:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->h:Landroidx/recyclerview/widget/n;

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/l;

    iget-object v0, v0, Landroidx/recyclerview/widget/l;->a:Landroidx/recyclerview/widget/E0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/h0;->c(Landroidx/recyclerview/widget/E0;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->h:Landroidx/recyclerview/widget/n;

    iget-object p1, p1, Landroidx/recyclerview/widget/n;->r:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/l;

    iget-object v0, v0, Landroidx/recyclerview/widget/l;->a:Landroidx/recyclerview/widget/E0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/k;->h:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n;->i()V

    return-void

    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->f:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->g:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->h:Landroidx/recyclerview/widget/n;

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/l;

    iget-object v0, v0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/E0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/h0;->c(Landroidx/recyclerview/widget/E0;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->h:Landroidx/recyclerview/widget/n;

    iget-object p1, p1, Landroidx/recyclerview/widget/n;->r:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/l;

    iget-object v0, v0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/E0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/k;->h:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n;->i()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Landroidx/recyclerview/widget/k;->d:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->h:Landroidx/recyclerview/widget/n;

    iget-object p0, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/l;

    iget-object p0, p0, Landroidx/recyclerview/widget/l;->a:Landroidx/recyclerview/widget/E0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->h:Landroidx/recyclerview/widget/n;

    iget-object p0, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/l;

    iget-object p0, p0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/E0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
