.class public final Lh2/a;
.super Lh2/m;
.source "SourceFile"


# static fields
.field public static m:Lh2/a;


# instance fields
.field public j:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

.field public k:Ljava/lang/ref/WeakReference;

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const/16 v0, 0x21

    invoke-direct {p0, p1, v0, p2}, Lh2/m;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V
    .locals 5

    iput-object p1, p0, Lh2/a;->j:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object p1, p0, Lh2/a;->k:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh2/h;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    iget-object p0, p0, Lh2/a;->j:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p1, Lh2/h;->e:Lh2/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    const/4 v3, 0x0

    const-string v4, "Connected"

    invoke-virtual {v2, v4, v1, v3}, Lh2/c;->c(Ljava/lang/String;IF)V

    iput-object p0, p1, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez p0, :cond_3

    iget-object p0, p1, Lh2/h;->b:Lh2/i;

    invoke-interface {p0, v0}, Lh2/i;->g(Z)V

    iput v0, p1, Lh2/h;->l:I

    goto :goto_3

    :cond_3
    iget-object p0, p1, Lh2/h;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lh2/h;->a()V

    :cond_4
    :goto_3
    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lh2/a;->c(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    invoke-virtual {p0}, Lh2/m;->b()V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    sget p1, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->d:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p0, p1}, Lh2/a;->c(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lh2/a;->c(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    iget-boolean p1, p0, Lh2/a;->l:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lh2/a;->j:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lh2/m;->b()V

    :cond_0
    return-void
.end method
