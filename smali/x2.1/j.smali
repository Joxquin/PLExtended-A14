.class public final Lx2/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lx2/l;


# direct methods
.method public constructor <init>(Lx2/l;)V
    .locals 0

    iput-object p1, p0, Lx2/j;->d:Lx2/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lx2/j;->d:Lx2/l;

    iget-object v0, p0, Lx2/l;->c:Landroid/animation/ValueAnimator;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lx2/l;->c:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
