.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/Z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/Z0;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/Z0;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/Z0;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/Z0;->e:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->g()V

    return-void
.end method
