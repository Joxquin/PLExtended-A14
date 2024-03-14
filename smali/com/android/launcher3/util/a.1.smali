.class public final synthetic Lcom/android/launcher3/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/util/BgObjectWithLooper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/BgObjectWithLooper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/a;->d:Lcom/android/launcher3/util/BgObjectWithLooper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/util/a;->d:Lcom/android/launcher3/util/BgObjectWithLooper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/BgObjectWithLooper;->onInitialized(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
