.class public final synthetic LP0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/notification/NotificationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/notification/NotificationListener;I)V
    .locals 0

    iput p2, p0, LP0/d;->d:I

    iput-object p1, p0, LP0/d;->e:Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p0, LP0/d;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LP0/d;->e:Lcom/android/launcher3/notification/NotificationListener;

    invoke-static {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->a(Lcom/android/launcher3/notification/NotificationListener;Landroid/os/Message;)Z

    move-result p0

    return p0

    :goto_0
    iget-object p0, p0, LP0/d;->e:Lcom/android/launcher3/notification/NotificationListener;

    invoke-static {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->d(Lcom/android/launcher3/notification/NotificationListener;Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
