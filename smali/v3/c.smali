.class public final Lv3/c;
.super Lkotlinx/coroutines/T;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final f:Lv3/c;

.field public static final g:Lkotlinx/coroutines/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lv3/c;

    invoke-direct {v0}, Lv3/c;-><init>()V

    sput-object v0, Lv3/c;->f:Lv3/c;

    sget-object v0, Lv3/n;->f:Lv3/n;

    sget v1, Lkotlinx/coroutines/internal/G;->a:I

    const/16 v2, 0x40

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v2, 0xc

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v4, v2}, Lkotlinx/coroutines/internal/F;->c(Ljava/lang/String;IIII)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lkotlinx/coroutines/internal/l;->a(I)V

    sget v2, Lv3/m;->d:I

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlinx/coroutines/internal/l;->a(I)V

    new-instance v2, Lkotlinx/coroutines/internal/k;

    invoke-direct {v2, v0, v1}, Lkotlinx/coroutines/internal/k;-><init>(Lv3/n;I)V

    move-object v0, v2

    :goto_1
    sput-object v0, Lv3/c;->g:Lkotlinx/coroutines/x;

    return-void
.end method


# virtual methods
.method public final B(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "block"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lv3/c;->g:Lkotlinx/coroutines/x;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/x;->B(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be invoked on Dispatchers.IO"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-virtual {p0, v0, p1}, Lv3/c;->B(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.IO"

    return-object p0
.end method
