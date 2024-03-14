.class public final Lw2/i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Z

.field public final synthetic e:Lw2/p;


# direct methods
.method public constructor <init>(Lw2/p;)V
    .locals 0

    iput-object p1, p0, Lw2/i;->e:Lw2/p;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lw2/i;->d:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lw2/i;->e:Lw2/p;

    const/4 p1, 0x0

    iput p1, p0, Lw2/p;->h:I

    const/4 p1, 0x0

    iput-object p1, p0, Lw2/p;->c:Landroid/animation/Animator;

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lw2/i;->e:Lw2/p;

    iget-object v0, v0, Lw2/p;->l:Lw2/g;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lw2/i;->d:Z

    invoke-virtual {v0, v1, v2}, Lx2/x;->d(IZ)V

    iget-object p0, p0, Lw2/i;->e:Lw2/p;

    const/4 v0, 0x2

    iput v0, p0, Lw2/p;->h:I

    iput-object p1, p0, Lw2/p;->c:Landroid/animation/Animator;

    return-void
.end method
