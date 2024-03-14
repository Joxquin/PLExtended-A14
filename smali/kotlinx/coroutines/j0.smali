.class public final Lkotlinx/coroutines/j0;
.super Lkotlinx/coroutines/q0;
.source "SourceFile"


# instance fields
.field public final g:Lkotlin/coroutines/c;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/i;Lm3/p;)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/q0;-><init>(Lkotlin/coroutines/i;Z)V

    invoke-static {p0, p0, p2}, Lkotlin/coroutines/intrinsics/a;->a(Ljava/lang/Object;Lkotlin/coroutines/c;Lm3/p;)Lkotlin/coroutines/c;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/j0;->g:Lkotlin/coroutines/c;

    return-void
.end method


# virtual methods
.method public final W()V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/j0;->g:Lkotlin/coroutines/c;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/a;->b(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v0

    sget-object v1, Le3/f;->a:Le3/f;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/internal/h;->a(Lkotlin/coroutines/c;Ljava/lang/Object;Lm3/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/a;->resumeWith(Ljava/lang/Object;)V

    throw v0
.end method
