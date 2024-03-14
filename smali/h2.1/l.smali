.class public final Lh2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lh2/m;


# direct methods
.method public constructor <init>(Lh2/m;)V
    .locals 0

    iput-object p1, p0, Lh2/l;->d:Lh2/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lh2/l;->d:Lh2/m;

    iget-boolean v0, p0, Lh2/m;->i:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lh2/m;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LauncherClient"

    const-string v2, "Unbind failed, ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lh2/m;->i:Z

    :cond_0
    return-void
.end method
