.class public final Lkotlinx/coroutines/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public d:Ljava/lang/Runnable;

.field public final synthetic e:Lkotlinx/coroutines/internal/k;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/k;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/internal/j;->e:Lkotlinx/coroutines/internal/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/internal/j;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/j;->d:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v2, v1}, Lkotlinx/coroutines/A;->a(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/j;->e:Lkotlinx/coroutines/internal/k;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/k;->D()Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iput-object v1, p0, Lkotlinx/coroutines/internal/j;->d:Ljava/lang/Runnable;

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lkotlinx/coroutines/internal/j;->e:Lkotlinx/coroutines/internal/k;

    iget-object v2, v1, Lkotlinx/coroutines/internal/k;->f:Lkotlinx/coroutines/x;

    invoke-virtual {v2, v1}, Lkotlinx/coroutines/x;->C(Lkotlin/coroutines/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->e:Lkotlinx/coroutines/internal/k;

    iget-object v1, v0, Lkotlinx/coroutines/internal/k;->f:Lkotlinx/coroutines/x;

    invoke-virtual {v1, v0, p0}, Lkotlinx/coroutines/x;->B(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    return-void
.end method
