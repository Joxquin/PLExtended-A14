.class public final synthetic Lcom/android/launcher3/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/util/SafeCloseable;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/SafeCloseable;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/i0;->d:I

    iput-object p1, p0, Lcom/android/launcher3/i0;->e:Lcom/android/launcher3/util/SafeCloseable;

    iput-object p2, p0, Lcom/android/launcher3/i0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/i0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/i0;->e:Lcom/android/launcher3/util/SafeCloseable;

    check-cast v0, Lcom/android/launcher3/LauncherAppState;

    iget-object p0, p0, Lcom/android/launcher3/i0;->f:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher3/LauncherAppState;->a(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/i0;->e:Lcom/android/launcher3/util/SafeCloseable;

    check-cast v0, Lcom/android/launcher3/LauncherAppState;

    iget-object p0, p0, Lcom/android/launcher3/i0;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    invoke-static {v0, p0}, Lcom/android/launcher3/LauncherAppState;->d(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/SimpleBroadcastReceiver;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/i0;->e:Lcom/android/launcher3/util/SafeCloseable;

    check-cast v0, Lcom/android/launcher3/LauncherAppState;

    iget-object p0, p0, Lcom/android/launcher3/i0;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherAppState$IconObserver;

    invoke-static {v0, p0}, Lcom/android/launcher3/LauncherAppState;->c(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$IconObserver;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/i0;->e:Lcom/android/launcher3/util/SafeCloseable;

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    iget-object p0, p0, Lcom/android/launcher3/i0;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
