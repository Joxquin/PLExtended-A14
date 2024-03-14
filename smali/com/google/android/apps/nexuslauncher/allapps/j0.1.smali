.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/j0;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->destroy()V

    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/x0;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/x0;->a()V

    return-void

    :pswitch_2
    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/t0;

    iget-object p0, p1, Lcom/google/android/apps/nexuslauncher/allapps/t0;->b:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    return-void

    :pswitch_3
    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->destroy()V

    return-void

    :pswitch_4
    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/x0;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/x0;->a()V

    return-void

    :goto_0
    check-cast p1, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    sget-object p0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->F:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
