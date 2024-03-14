.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/z2;

.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:Landroid/app/search/Query;

.field public final synthetic g:Ljava/util/concurrent/Executor;

.field public final synthetic h:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/z2;Lcom/google/android/apps/nexuslauncher/allapps/m;Landroid/app/search/Query;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/w2;->d:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/w2;->e:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/w2;->f:Landroid/app/search/Query;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/w2;->g:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/allapps/w2;->h:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/w2;->d:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/w2;->e:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/w2;->f:Landroid/app/search/Query;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/w2;->g:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/w2;->h:Ljava/util/function/Consumer;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->j:Landroid/app/search/SearchSession;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/x2;

    invoke-direct {v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/x2;-><init>(Landroid/app/search/Query;)V

    invoke-interface {v1, p0}, Ljava/util/function/Consumer;->andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/search/SearchSession;->query(Landroid/app/search/Query;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method
