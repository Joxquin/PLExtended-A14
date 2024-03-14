.class public final synthetic LT1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LT1/x;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LT1/x;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LT1/q;->a:I

    iput-object p1, p0, LT1/q;->b:LT1/x;

    iput-object p2, p0, LT1/q;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, LT1/q;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LT1/q;->b:LT1/x;

    iget-object p0, p0, LT1/q;->c:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Landroid/app/appsearch/GetByDocumentIdRequest;

    move-object v1, p1

    check-cast v1, Landroid/app/appsearch/GlobalSearchSession;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "com.google.android.googlequicksearchbox"

    const-string v3, "OneSearchZeroStateGoogleSuggestions"

    sget-object v5, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v6, LT1/u;

    invoke-direct {v6, v0}, LT1/u;-><init>(LT1/x;)V

    invoke-virtual/range {v1 .. v6}, Landroid/app/appsearch/GlobalSearchSession;->getByDocumentId(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-void

    :goto_0
    iget-object v0, p0, LT1/q;->b:LT1/x;

    iget-object p0, p0, LT1/q;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/GlobalSearchSession;

    new-instance v1, Landroid/app/appsearch/observer/ObserverSpec$Builder;

    invoke-direct {v1}, Landroid/app/appsearch/observer/ObserverSpec$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/app/appsearch/observer/ObserverSpec$Builder;->build()Landroid/app/appsearch/observer/ObserverSpec;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.android.googlequicksearchbox"

    sget-object v3, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v0, v0, LT1/x;->b:LT1/t;

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/app/appsearch/GlobalSearchSession;->registerObserverCallback(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)V
    :try_end_0
    .catch Landroid/app/appsearch/exceptions/AppSearchException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ZeroStateWebSuggestDataLoader"

    const-string v2, "Failed to register app search observer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    new-instance v0, Landroid/app/appsearch/exceptions/AppSearchException;

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/app/appsearch/exceptions/AppSearchException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
