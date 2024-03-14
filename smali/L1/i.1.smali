.class public final LL1/i;
.super LL1/c;
.source "SourceFile"


# instance fields
.field public final e:Landroid/app/contentsuggestions/ContentSuggestionsManager;

.field public final f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/util/LooperExecutor;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, LL1/e;

    invoke-direct {v0}, LL1/e;-><init>()V

    invoke-direct {p0, p2, p3, p4, v0}, LL1/c;-><init>(Lcom/android/launcher3/util/LooperExecutor;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/concurrent/Executor;LL1/e;)V

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, LL1/i;->f:Ljava/util/Map;

    const-class p2, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    iput-object p1, p0, LL1/i;->e:Landroid/app/contentsuggestions/ContentSuggestionsManager;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;LL1/X;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/app/contentsuggestions/ClassificationsRequest$Builder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Landroid/app/contentsuggestions/ClassificationsRequest$Builder;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1}, Landroid/app/contentsuggestions/ClassificationsRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/contentsuggestions/ClassificationsRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/contentsuggestions/ClassificationsRequest$Builder;->build()Landroid/app/contentsuggestions/ClassificationsRequest;

    move-result-object p1

    new-instance v0, LL1/h;

    invoke-direct {v0, p2, p0}, LL1/h;-><init>(LL1/b;LL1/i;)V

    iget-object p2, p0, LL1/i;->e:Landroid/app/contentsuggestions/ContentSuggestionsManager;

    iget-object p0, p0, LL1/c;->d:Ljava/util/concurrent/Executor;

    new-instance v1, LL1/g;

    invoke-direct {v1, v0}, LL1/g;-><init>(LL1/h;)V

    invoke-virtual {p2, p1, p0, v1}, Landroid/app/contentsuggestions/ContentSuggestionsManager;->classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Ljava/util/concurrent/Executor;Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Failed to classifyContentSelections"

    invoke-static {p1, p0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final b(LJ1/n;LL1/P;Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 7

    new-instance v6, LL1/d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LL1/d;-><init>(LL1/i;Ljava/util/function/Supplier;Ljava/lang/String;LL1/P;LJ1/n;)V

    iget-object p0, p0, LL1/c;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "CAPTURE_TIME_MS"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :try_start_0
    iget-object p0, p0, LL1/i;->e:Landroid/app/contentsuggestions/ContentSuggestionsManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager;->provideContextImage(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Failed to provideContextImage"

    invoke-static {p1, p0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final d(ILandroid/os/Bundle;LL1/b;)V
    .locals 1

    new-instance v0, Landroid/app/contentsuggestions/SelectionsRequest$Builder;

    invoke-direct {v0, p1}, Landroid/app/contentsuggestions/SelectionsRequest$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/app/contentsuggestions/SelectionsRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/contentsuggestions/SelectionsRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/contentsuggestions/SelectionsRequest$Builder;->build()Landroid/app/contentsuggestions/SelectionsRequest;

    move-result-object p1

    :try_start_0
    new-instance p2, LL1/h;

    invoke-direct {p2, p3, p0}, LL1/h;-><init>(LL1/b;LL1/i;)V

    iget-object p3, p0, LL1/i;->e:Landroid/app/contentsuggestions/ContentSuggestionsManager;

    iget-object p0, p0, LL1/c;->d:Ljava/util/concurrent/Executor;

    new-instance v0, LL1/f;

    invoke-direct {v0, p2}, LL1/f;-><init>(LL1/h;)V

    invoke-virtual {p3, p1, p0, v0}, Landroid/app/contentsuggestions/ContentSuggestionsManager;->suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Ljava/util/concurrent/Executor;Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Failed to suggestContentSelections"

    invoke-static {p1, p0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
