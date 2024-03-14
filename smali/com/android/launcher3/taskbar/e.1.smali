.class public final synthetic Lcom/android/launcher3/taskbar/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/quickstep/util/GroupTask;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    return-object p0
.end method
