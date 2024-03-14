.class public final Lkotlinx/coroutines/L;
.super Lkotlinx/coroutines/e;
.source "SourceFile"


# instance fields
.field public final d:Lkotlinx/coroutines/K;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/K;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/e;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/L;->d:Lkotlinx/coroutines/K;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/L;->d:Lkotlinx/coroutines/K;

    invoke-interface {p0}, Lkotlinx/coroutines/K;->c()V

    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/L;->c(Ljava/lang/Throwable;)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisposeOnCancel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/coroutines/L;->d:Lkotlinx/coroutines/K;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
