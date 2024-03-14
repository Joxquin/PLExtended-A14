.class public final Lw2/h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lw2/p;


# direct methods
.method public constructor <init>(Lw2/p;)V
    .locals 0

    iput-object p1, p0, Lw2/h;->f:Lw2/p;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lw2/h;->e:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lw2/h;->d:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lw2/h;->f:Lw2/p;

    const/4 v0, 0x0

    iput v0, p1, Lw2/p;->h:I

    const/4 v0, 0x0

    iput-object v0, p1, Lw2/p;->c:Landroid/animation/Animator;

    iget-boolean v0, p0, Lw2/h;->d:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lw2/p;->l:Lw2/g;

    iget-boolean p0, p0, Lw2/h;->e:Z

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0, p0}, Lx2/x;->d(IZ)V

    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lw2/h;->f:Lw2/p;

    iget-object v0, v0, Lw2/p;->l:Lw2/g;

    iget-boolean v1, p0, Lw2/h;->e:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx2/x;->d(IZ)V

    iget-object v0, p0, Lw2/h;->f:Lw2/p;

    const/4 v1, 0x1

    iput v1, v0, Lw2/p;->h:I

    iput-object p1, v0, Lw2/p;->c:Landroid/animation/Animator;

    iput-boolean v2, p0, Lw2/h;->d:Z

    return-void
.end method
