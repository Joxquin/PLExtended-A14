.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/t0;

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/u0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/t0;Lcom/google/android/apps/nexuslauncher/allapps/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s0;->d:Lcom/google/android/apps/nexuslauncher/allapps/t0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/s0;->e:Lcom/google/android/apps/nexuslauncher/allapps/u0;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s0;->d:Lcom/google/android/apps/nexuslauncher/allapps/t0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s0;->e:Lcom/google/android/apps/nexuslauncher/allapps/u0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/t0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
