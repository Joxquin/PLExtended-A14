.class public final Lcom/android/launcher3/GestureNavContract;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sMessageReceiver:Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field private final mCallback:Landroid/os/Message;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/GestureNavContract;->componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/launcher3/GestureNavContract;->user:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/launcher3/GestureNavContract;->mCallback:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final sendEndPosition(Landroid/graphics/RectF;Lcom/android/launcher3/Launcher;Landroid/view/SurfaceControl;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "gesture_nav_contract_icon_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "gesture_nav_contract_surface_control"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object p1, Lcom/android/launcher3/GestureNavContract;->sMessageReceiver:Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;

    invoke-direct {p1}, Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;-><init>()V

    sput-object p1, Lcom/android/launcher3/GestureNavContract;->sMessageReceiver:Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;

    :cond_0
    sget-object p1, Lcom/android/launcher3/GestureNavContract;->sMessageReceiver:Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;->setCurrentContext(Lcom/android/launcher3/Launcher;)Landroid/os/Message;

    move-result-object p1

    const-string p2, "gesture_nav_contract_finish_callback"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/GestureNavContract;->mCallback:Landroid/os/Message;

    invoke-virtual {p1, p0}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GestureNavContract"

    const-string p2, "Error sending icon position"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
