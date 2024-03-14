.class public final synthetic Lcom/android/launcher3/util/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    new-instance p0, Lcom/android/launcher3/util/LooperExecutor;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(ILjava/lang/String;)Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method
