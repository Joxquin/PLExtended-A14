.class public final Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlay;
.implements Landroid/os/IInterface;


# instance fields
.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Parcel;
    .locals 1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object p0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public final b(Landroid/os/Parcel;I)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p2, p1, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final closeOverlay(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final endScroll()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->a()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->a()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->a()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final onScroll(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final openOverlay(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final setActivityState(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final startScroll()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->a()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final startSearch([BLandroid/os/Bundle;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {v0, p2}, LI1/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x11

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final windowAttached(Landroid/view/WindowManager$LayoutParams;Lh2/g;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, LI1/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final windowAttached2(Landroid/os/Bundle;Lh2/g;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, LI1/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_0
    const/16 p1, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final windowDetached(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->a()Landroid/os/Parcel;

    move-result-object v0

    sget v1, LI1/a;->a:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->b(Landroid/os/Parcel;I)V

    return-void
.end method
