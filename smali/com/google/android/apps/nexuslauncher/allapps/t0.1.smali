.class public final Lcom/google/android/apps/nexuslauncher/allapps/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lcom/android/launcher3/icons/cache/HandlerRunnable;

.field public c:Z

.field public d:Lcom/android/launcher3/icons/BitmapInfo;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/function/Supplier;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t0;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/r0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/google/android/apps/nexuslauncher/allapps/r0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t0;->b:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    invoke-static {p1, v0}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
