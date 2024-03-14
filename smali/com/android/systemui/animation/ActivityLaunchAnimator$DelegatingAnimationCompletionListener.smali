.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$DelegatingAnimationCompletionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/animation/e;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$DelegatingAnimationCompletionListener;->a:Z

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(F)V
    .locals 0

    return-void
.end method

.method public final onLaunchAnimationEnd()V
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$DelegatingAnimationCompletionListener;->a:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method
