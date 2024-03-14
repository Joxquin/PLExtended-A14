.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/p;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/p;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/x;->d:Lcom/google/android/apps/nexuslauncher/allapps/p;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/x;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/x;->d:Lcom/google/android/apps/nexuslauncher/allapps/p;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/x;->e:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/p;->a(Ljava/util/List;)V

    return-void
.end method
