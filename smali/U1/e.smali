.class public final LU1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LU1/k;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LU1/k;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LU1/e;->d:I

    iput-object p1, p0, LU1/e;->e:LU1/k;

    iput-object p2, p0, LU1/e;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, LU1/e;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LU1/e;->e:LU1/k;

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const-string v3, "minus-one"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v2

    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v2}, Landroid/view/InputMonitor;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    iput-object v2, v0, LU1/k;->h:Landroid/view/InputMonitor;

    iget-object v0, p0, LU1/e;->e:LU1/k;

    new-instance v2, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object v3, v0, LU1/k;->h:Landroid/view/InputMonitor;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, LU1/e;->f:Ljava/lang/Object;

    check-cast v4, Landroid/view/Choreographer;

    new-instance v5, LU1/d;

    iget-object v6, p0, LU1/e;->e:LU1/k;

    invoke-direct {v5, v6}, LU1/d;-><init>(LU1/k;)V

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V

    iput-object v2, v0, LU1/k;->i:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object v0, p0, LU1/e;->e:LU1/k;

    iget-object v1, v0, LU1/k;->e:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v0, v0, LU1/k;->d:Landroid/content/Context;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->registerPkgActions(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p0, p0, LU1/e;->e:LU1/k;

    invoke-static {p0}, LU1/k;->a(LU1/k;)V

    return-void

    :goto_0
    iget-object v0, p0, LU1/e;->e:LU1/k;

    iget-object p0, p0, LU1/e;->f:Ljava/lang/Object;

    check-cast p0, Landroid/content/pm/LauncherActivityInfo;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/launcher3/model/data/AppInfo;->EMPTY_ARRAY:[Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    :goto_1
    iput-object v1, v0, LU1/k;->g:Landroid/content/Intent;

    iget-object p0, v0, LU1/k;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU1/g;

    invoke-interface {v0}, LU1/g;->a()V

    goto :goto_2

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
