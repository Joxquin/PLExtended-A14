.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/Q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q2;->d:Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q2;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q2;->d:Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q2;->e:Z

    invoke-static {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->a(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;Z)V

    return-void
.end method
