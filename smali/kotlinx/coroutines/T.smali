.class public abstract Lkotlinx/coroutines/T;
.super Lkotlinx/coroutines/x;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcher$Key$1;->d:Lkotlinx/coroutines/ExecutorCoroutineDispatcher$Key$1;

    const-string v1, "baseKey"

    sget-object v2, Lkotlinx/coroutines/x;->e:Lkotlinx/coroutines/w;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "safeCast"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/x;-><init>()V

    return-void
.end method
