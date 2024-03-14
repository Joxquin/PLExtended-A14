.class public final Lkotlinx/coroutines/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/E;

.field public static final b:Lkotlinx/coroutines/internal/E;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/h;->a:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/h;->b:Lkotlinx/coroutines/internal/E;

    return-void
.end method

.method public static final a(Lkotlin/coroutines/c;Ljava/lang/Object;Lm3/l;)V
    .locals 7

    instance-of v0, p0, Lkotlinx/coroutines/internal/g;

    if-eqz v0, :cond_a

    check-cast p0, Lkotlinx/coroutines/internal/g;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lkotlinx/coroutines/r;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/r;-><init>(Ljava/lang/Object;Lm3/l;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance p2, Lkotlinx/coroutines/q;

    invoke-direct {p2, v0, v1}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    move-object v0, p2

    :goto_0
    iget-object p2, p0, Lkotlinx/coroutines/internal/g;->g:Lkotlinx/coroutines/x;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->getContext()Lkotlin/coroutines/i;

    move-result-object v2

    invoke-virtual {p2, v2}, Lkotlinx/coroutines/x;->C(Lkotlin/coroutines/i;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    iput-object v0, p0, Lkotlinx/coroutines/internal/g;->i:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/H;->f:I

    iget-object p1, p0, Lkotlinx/coroutines/internal/g;->g:Lkotlinx/coroutines/x;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->getContext()Lkotlin/coroutines/i;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/x;->B(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/s0;->a()Lkotlinx/coroutines/N;

    move-result-object p2

    iget-wide v3, p2, Lkotlinx/coroutines/N;->f:J

    const-wide v5, 0x100000000L

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-eqz v3, :cond_4

    iput-object v0, p0, Lkotlinx/coroutines/internal/g;->i:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/H;->f:I

    invoke-virtual {p2, p0}, Lkotlinx/coroutines/N;->E(Lkotlinx/coroutines/H;)V

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p2, v2}, Lkotlinx/coroutines/N;->F(Z)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->getContext()Lkotlin/coroutines/i;

    move-result-object v4

    sget-object v5, Lkotlinx/coroutines/Z;->d:Lkotlinx/coroutines/Z;

    invoke-interface {v4, v5}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/a0;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lkotlinx/coroutines/a0;->a()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v4}, Lkotlinx/coroutines/a0;->r()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/internal/g;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v1}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/g;->resumeWith(Ljava/lang/Object;)V

    move v1, v2

    :cond_5
    if-nez v1, :cond_9

    iget-object v0, p0, Lkotlinx/coroutines/internal/g;->h:Lkotlin/coroutines/c;

    iget-object v1, p0, Lkotlinx/coroutines/internal/g;->j:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/H;->c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lkotlinx/coroutines/internal/H;->a:Lkotlinx/coroutines/internal/E;

    if-eq v1, v4, :cond_6

    invoke-static {v0, v2}, Lkotlinx/coroutines/v;->d(Lkotlin/coroutines/c;Lkotlin/coroutines/i;)Lkotlinx/coroutines/u0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_6
    move-object v0, v3

    :goto_2
    :try_start_1
    iget-object v4, p0, Lkotlinx/coroutines/internal/g;->h:Lkotlin/coroutines/c;

    invoke-interface {v4, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Le3/f;->a:Le3/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_7

    :try_start_2
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lkotlinx/coroutines/u0;->f0()V

    throw v3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lkotlinx/coroutines/u0;->f0()V

    throw v3

    :cond_8
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    throw p1

    :cond_9
    :goto_3
    invoke-virtual {p2}, Lkotlinx/coroutines/N;->G()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_9

    goto :goto_5

    :goto_4
    :try_start_3
    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/H;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_5
    invoke-virtual {p2}, Lkotlinx/coroutines/N;->D()V

    goto :goto_6

    :catchall_2
    move-exception p0

    invoke-virtual {p2}, Lkotlinx/coroutines/N;->D()V

    throw p0

    :cond_a
    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_6
    return-void
.end method
