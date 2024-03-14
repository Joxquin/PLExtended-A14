.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/T0;

.field public final synthetic b:[[B

.field public final synthetic c:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;[[BLjava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/C0;->a:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/C0;->b:[[B

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/C0;->c:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/C0;->a:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/C0;->b:[[B

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/C0;->c:Ljava/util/concurrent/CompletableFuture;

    move-object v2, p1

    check-cast v2, Landroid/app/appsearch/GlobalSearchSession;

    const-string v3, "com.google.android.googlequicksearchbox"

    const-string v4, "OneSearchZeroStateGoogleSuggestions"

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->e:Landroid/app/appsearch/GetByDocumentIdRequest;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v6

    new-instance v7, Lcom/google/android/apps/nexuslauncher/allapps/P0;

    invoke-direct {v7, v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/P0;-><init>([[BLjava/util/concurrent/CompletableFuture;)V

    invoke-virtual/range {v2 .. v7}, Landroid/app/appsearch/GlobalSearchSession;->getByDocumentId(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-void
.end method
