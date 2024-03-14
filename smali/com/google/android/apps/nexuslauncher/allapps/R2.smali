.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/R2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/R2;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/R2;->e:Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/R2;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/R2;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/R2;->e:Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/R2;->f:Ljava/lang/Object;

    check-cast p0, LJ2/c;

    invoke-static {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->c(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;LJ2/c;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/R2;->e:Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/R2;->f:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->d(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;Landroid/os/IBinder;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
