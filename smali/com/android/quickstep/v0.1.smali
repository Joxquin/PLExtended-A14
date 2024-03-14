.class public final synthetic Lcom/android/quickstep/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/view/RemoteAnimationTarget;

    invoke-static {p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->g(Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method
