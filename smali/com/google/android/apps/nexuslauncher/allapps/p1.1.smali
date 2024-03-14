.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/t1;

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/s1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/t1;Lcom/google/android/apps/nexuslauncher/allapps/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/p1;->d:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/p1;->e:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/p1;->d:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/p1;->e:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iput-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->j:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->i:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/n1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/n1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
