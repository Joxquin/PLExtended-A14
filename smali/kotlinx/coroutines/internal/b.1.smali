.class public final Lkotlinx/coroutines/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/E;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/b;->a:Lkotlinx/coroutines/internal/E;

    return-void
.end method

.method public static final a(Lkotlinx/coroutines/internal/B;JLm3/p;)Ljava/lang/Object;
    .locals 4

    const-string v0, "createNewSegment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-wide v0, p0, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/B;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    iget-object v0, p0, Lkotlinx/coroutines/internal/c;->d:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/internal/b;->a:Lkotlinx/coroutines/internal/E;

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    check-cast v0, Lkotlinx/coroutines/internal/c;

    check-cast v0, Lkotlinx/coroutines/internal/B;

    if-eqz v0, :cond_5

    :cond_4
    :goto_2
    move-object p0, v0

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Lkotlinx/coroutines/internal/B;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0, p0}, Lm3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/B;

    iget-object v1, p0, Lkotlinx/coroutines/internal/c;->d:Lt3/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/B;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/c;->d()V

    goto :goto_2
.end method
