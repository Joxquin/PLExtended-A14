.class public final LX1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LL1/O;

.field public final b:LV1/l;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "system"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p2

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    sget-object v6, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v7, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v8, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, LL1/O;

    move-object v2, v0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, LL1/O;-><init>(Landroid/content/Context;Landroid/content/Context;Landroid/os/Handler;Lcom/android/launcher3/util/LooperExecutor;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/concurrent/Executor;)V

    new-instance p1, LL1/M;

    invoke-direct {p1, v0}, LL1/M;-><init>(LL1/O;)V

    iget-object v2, v0, LL1/O;->c:LL1/i;

    iget-object v2, v2, LL1/c;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v0, p0, LX1/h;->a:LL1/O;

    sput-boolean v1, LL1/r;->a:Z

    sget-object p1, LM1/b;->a:LM1/a;

    iput-boolean v1, p1, LM1/a;->a:Z

    new-instance p1, LV1/l;

    invoke-direct {p1, p2}, LV1/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, LX1/h;->b:LV1/l;

    return-void
.end method
