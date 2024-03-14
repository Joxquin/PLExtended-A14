.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/s;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s;->e:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s;->e:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->i:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/v1;->a(Lcom/android/launcher3/views/ActivityContext;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->a()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s;->e:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->r:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
