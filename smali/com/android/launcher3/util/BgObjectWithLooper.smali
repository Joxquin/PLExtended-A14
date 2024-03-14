.class public abstract Lcom/android/launcher3/util/BgObjectWithLooper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static newContentObserver(Landroid/os/Handler;Lcom/android/launcher3/model/l1;)Landroid/database/ContentObserver;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/BgObjectWithLooper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/BgObjectWithLooper$1;-><init>(Landroid/os/Handler;Lcom/android/launcher3/model/l1;)V

    return-object v0
.end method


# virtual methods
.method public abstract onInitialized(Landroid/os/Looper;)V
.end method
