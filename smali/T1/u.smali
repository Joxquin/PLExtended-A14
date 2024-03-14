.class public final LT1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# instance fields
.field public final synthetic a:LT1/x;


# direct methods
.method public constructor <init>(LT1/x;)V
    .locals 0

    iput-object p1, p0, LT1/u;->a:LT1/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .locals 4

    :try_start_0
    const-string v0, "ZeroStateWebSuggestDataLoader"

    const-string v1, "Received zero state web suggestions from AppSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/GenericDocument;

    const-string v0, "zeroStateGetSuggestionsResponseBytes"

    invoke-virtual {p1, v0}, Landroid/app/appsearch/GenericDocument;->getPropertyBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lf2/A;->g([B)Lf2/A;

    move-result-object v0

    iget-object v1, p0, LT1/u;->a:LT1/x;

    new-instance v2, LT1/w;

    const-string v3, "zeroStateInternalBytes"

    invoke-virtual {p1, v3}, Landroid/app/appsearch/GenericDocument;->getPropertyBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v2, v0, p1}, LT1/w;-><init>(Lf2/A;[B)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, LT1/x;->a(LT1/x;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, LT1/u;->a:LT1/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LT1/x;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    iget-object p0, p0, LT1/u;->a:LT1/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LT1/x;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onSystemError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, LT1/u;->a:LT1/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LT1/x;->b(Ljava/lang/Throwable;)V

    return-void
.end method
