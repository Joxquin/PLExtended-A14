.class public final Lg0/r;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lg0/x;


# direct methods
.method public constructor <init>(Lg0/x;)V
    .locals 0

    iput-object p1, p0, Lg0/r;->d:Lg0/x;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lg0/r;->d:Lg0/x;

    invoke-virtual {v0}, Lg0/x;->n()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
