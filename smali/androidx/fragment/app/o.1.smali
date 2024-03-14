.class public final Landroidx/fragment/app/o;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Landroidx/fragment/app/q;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/fragment/app/S0;

.field public final synthetic h:Landroidx/fragment/app/l;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/q;Landroid/view/View;ZLandroidx/fragment/app/S0;Landroidx/fragment/app/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/o;->d:Landroidx/fragment/app/q;

    iput-object p2, p0, Landroidx/fragment/app/o;->e:Landroid/view/View;

    iput-boolean p3, p0, Landroidx/fragment/app/o;->f:Z

    iput-object p4, p0, Landroidx/fragment/app/o;->g:Landroidx/fragment/app/S0;

    iput-object p5, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/fragment/app/o;->d:Landroidx/fragment/app/q;

    iget-object p1, p1, Landroidx/fragment/app/U0;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/o;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean p1, p0, Landroidx/fragment/app/o;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/o;->g:Landroidx/fragment/app/S0;

    iget-object p1, p1, Landroidx/fragment/app/S0;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    iget-object v0, p0, Landroidx/fragment/app/o;->e:Landroid/view/View;

    const-string v1, "viewToAnimate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->a(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/l;

    invoke-virtual {p1}, Landroidx/fragment/app/m;->a()V

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/fragment/app/p0;->H(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Animator from operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/o;->g:Landroidx/fragment/app/S0;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has ended."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
