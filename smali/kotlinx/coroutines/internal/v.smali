.class public final Lkotlinx/coroutines/internal/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/k0;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "kotlinx.coroutines.fast.service.loader"

    invoke-static {v0}, Lkotlinx/coroutines/internal/F;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    :cond_0
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/internal/u;->a()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "load(\n                  \u2026             ).iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/sequences/m;

    invoke-direct {v1, v0}, Lkotlin/sequences/m;-><init>(Ljava/util/Iterator;)V

    instance-of v0, v1, Lkotlin/sequences/a;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/sequences/a;

    invoke-direct {v0, v1}, Lkotlin/sequences/a;-><init>(Lkotlin/sequences/m;)V

    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lkotlin/sequences/j;->c(Lkotlin/sequences/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/internal/t;

    invoke-interface {v4}, Lkotlinx/coroutines/internal/t;->c()I

    move-result v4

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/internal/t;

    invoke-interface {v6}, Lkotlinx/coroutines/internal/t;->c()I

    move-result v6

    if-ge v4, v6, :cond_5

    move-object v2, v5

    move v4, v6

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    :goto_1
    check-cast v2, Lkotlinx/coroutines/internal/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_6

    :try_start_1
    invoke-interface {v2, v0}, Lkotlinx/coroutines/internal/t;->b(Ljava/util/List;)Lkotlinx/coroutines/k0;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    :try_start_2
    invoke-interface {v2}, Lkotlinx/coroutines/internal/t;->a()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v3, :cond_6

    sput-object v3, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/k0;

    return-void

    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    throw v0
.end method
