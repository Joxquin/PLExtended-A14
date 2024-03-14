.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/p;

.field public final synthetic e:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/p;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/I0;->d:Lcom/google/android/apps/nexuslauncher/allapps/p;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/I0;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/I0;->d:Lcom/google/android/apps/nexuslauncher/allapps/p;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/I0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/p;->b(Ljava/util/List;)V

    return-void
.end method
