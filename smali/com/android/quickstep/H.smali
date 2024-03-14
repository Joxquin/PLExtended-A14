.class public final synthetic Lcom/android/quickstep/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/view/RemoteAnimationTarget;

    invoke-static {p1}, Lcom/android/quickstep/GestureState;->a(Landroid/view/RemoteAnimationTarget;)I

    move-result p0

    return p0
.end method
