.class public abstract LT1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Landroid/content/Context;

.field public final d:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field public e:LT1/e;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, LT1/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LT1/c;-><init>(LT1/g;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, LT1/g;->d:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iput-object p3, p0, LT1/g;->a:Ljava/lang/String;

    iput p1, p0, LT1/g;->b:I

    iput-object p2, p0, LT1/g;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, LT1/g;->e:LT1/e;

    iget-object v1, p0, LT1/g;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, LT1/g;->e:LT1/e;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, LT1/g;->e:LT1/e;

    :cond_0
    iget-object p0, p0, LT1/g;->d:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public abstract b()Landroid/net/Uri;
.end method

.method public final c()V
    .locals 4

    invoke-virtual {p0}, LT1/g;->a()V

    new-instance v0, LT1/e;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LT1/e;-><init>(LT1/g;Landroid/os/Handler;)V

    iput-object v0, p0, LT1/g;->e:LT1/e;

    :try_start_0
    iget-object v0, p0, LT1/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, LT1/g;->b()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, LT1/g;->e:LT1/e;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ExternalModelDataLoader"

    const-string v2, "Failed to register content observer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, LT1/g;->f()V

    return-void
.end method

.method public abstract d()Ljava/util/List;
.end method

.method public abstract e(Ljava/util/List;)V
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, LT1/g;->c:Landroid/content/Context;

    iget-object v1, p0, LT1/g;->d:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, LT1/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/launcher3/util/Executors;->getPackageExecutor(Ljava/lang/String;)Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v0

    new-instance v1, LT1/d;

    invoke-direct {v1, p0}, LT1/d;-><init>(LT1/g;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
