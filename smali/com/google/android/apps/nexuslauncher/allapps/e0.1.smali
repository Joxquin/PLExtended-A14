.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/x0;

.field public final synthetic e:Landroidx/lifecycle/z;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/x0;Lcom/google/android/apps/nexuslauncher/allapps/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/e0;->d:Lcom/google/android/apps/nexuslauncher/allapps/x0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/e0;->e:Landroidx/lifecycle/z;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/e0;->d:Lcom/google/android/apps/nexuslauncher/allapps/x0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/e0;->e:Landroidx/lifecycle/z;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/x0;->b()V

    return-void
.end method
