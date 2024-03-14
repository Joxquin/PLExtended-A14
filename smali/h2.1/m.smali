.class public Lh2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:I

.field public final f:Landroid/os/Handler;

.field public final g:Lh2/l;

.field public final h:Ljava/lang/String;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/m;->d:Landroid/content/Context;

    iput p2, p0, Lh2/m;->e:I

    iput-object p3, p0, Lh2/m;->f:Landroid/os/Handler;

    const-string p1, "com.google.android.googlequicksearchbox"

    iput-object p1, p0, Lh2/m;->h:Ljava/lang/String;

    new-instance p1, Lh2/l;

    invoke-direct {p1, p0}, Lh2/l;-><init>(Lh2/m;)V

    iput-object p1, p0, Lh2/m;->g:Lh2/l;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Lh2/m;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lh2/m;->i:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lh2/m;->d:Landroid/content/Context;

    iget-object v1, p0, Lh2/m;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lh2/h;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lh2/m;->e:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lh2/m;->i:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LauncherClient"

    const-string v2, "Unable to connect to overlay service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-boolean p0, p0, Lh2/m;->i:Z

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {p0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw p0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lh2/m;->f:Landroid/os/Handler;

    iget-object p0, p0, Lh2/m;->g:Lh2/l;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lh2/l;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
