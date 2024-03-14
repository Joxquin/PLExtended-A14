.class public final LI2/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lr2/g;


# direct methods
.method public constructor <init>(Lr2/g;)V
    .locals 0

    iput-object p1, p0, LI2/f;->d:Lr2/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, LI2/f;->d:Lr2/g;

    invoke-interface {p1}, Lr2/g;->c()Lr2/f;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p1, Lr2/f;->c:F

    iget-object p0, p0, LI2/f;->d:Lr2/g;

    invoke-interface {p0}, Lr2/g;->a()V

    return-void
.end method
