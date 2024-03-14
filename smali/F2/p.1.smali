.class public final LF2/p;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:LF2/q;


# direct methods
.method public constructor <init>(LF2/q;)V
    .locals 0

    iput-object p1, p0, LF2/p;->d:LF2/q;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, LF2/p;->d:LF2/q;

    invoke-virtual {p1}, LF2/w;->q()V

    iget-object p0, p0, LF2/p;->d:LF2/q;

    iget-object p0, p0, LF2/q;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
