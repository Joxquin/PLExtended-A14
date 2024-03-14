.class public final LU1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LU1/h;->d:I

    iput-object p2, p0, LU1/h;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LU1/h;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LU1/h;->e:Ljava/lang/Object;

    check-cast p0, LU1/k;

    iput-object v1, p0, LU1/k;->j:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    return-void

    :pswitch_1
    iget-object v0, p0, LU1/h;->e:Ljava/lang/Object;

    check-cast v0, LU1/k;

    iget-object v2, v0, LU1/k;->e:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v0, v0, LU1/k;->d:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, LU1/h;->e:Ljava/lang/Object;

    check-cast v0, LU1/k;

    iget-object v0, v0, LU1/k;->i:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    :cond_0
    iget-object v0, p0, LU1/h;->e:Ljava/lang/Object;

    check-cast v0, LU1/k;

    iget-object v0, v0, LU1/k;->h:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    :cond_1
    iget-object p0, p0, LU1/h;->e:Ljava/lang/Object;

    check-cast p0, LU1/k;

    iput-object v1, p0, LU1/k;->h:Landroid/view/InputMonitor;

    iput-object v1, p0, LU1/k;->i:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    return-void

    :goto_0
    iget-object p0, p0, LU1/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {p0}, Lcom/android/quickstep/util/ActivityInitListener;->unregister()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
