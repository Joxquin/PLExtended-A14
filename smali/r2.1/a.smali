.class public final Lr2/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lr2/g;


# direct methods
.method public constructor <init>(Lr2/g;)V
    .locals 0

    iput-object p1, p0, Lr2/a;->d:Lr2/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lr2/a;->d:Lr2/g;

    invoke-interface {p0}, Lr2/g;->e()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lr2/a;->d:Lr2/g;

    invoke-interface {p0}, Lr2/g;->f()V

    return-void
.end method
