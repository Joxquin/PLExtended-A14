.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

.field public final synthetic e:Landroidx/lifecycle/z;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;Landroidx/lifecycle/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d0;->d:Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/d0;->e:Landroidx/lifecycle/z;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d0;->d:Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d0;->e:Landroidx/lifecycle/z;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->removeListener(Landroidx/lifecycle/z;)V

    return-void
.end method
