.class public final synthetic Lcom/android/quickstep/util/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/quickstep/util/GroupTask;

    invoke-static {p1}, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->a(Lcom/android/quickstep/util/GroupTask;)Z

    move-result p0

    return p0
.end method
