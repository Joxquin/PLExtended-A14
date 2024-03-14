.class public abstract Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.super Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;
.source "SourceFile"


# instance fields
.field private final _context:Lkotlin/coroutines/i;

.field private transient intercepted:Lkotlin/coroutines/c;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/c;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/c;Lkotlin/coroutines/i;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/c;Lkotlin/coroutines/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;-><init>(Lkotlin/coroutines/c;)V

    .line 2
    iput-object p2, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/i;

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/i;
    .locals 0

    iget-object p0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/i;

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final intercepted()Lkotlin/coroutines/c;
    .locals 2

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted:Lkotlin/coroutines/c;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/d;->d:Lkotlin/coroutines/d;

    invoke-interface {v0, v1}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lkotlin/coroutines/e;->d(Lkotlin/coroutines/c;)Lkotlinx/coroutines/internal/g;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted:Lkotlin/coroutines/c;

    :cond_2
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 3

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted:Lkotlin/coroutines/c;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/i;

    move-result-object v1

    sget v2, Lkotlin/coroutines/e;->a:I

    sget-object v2, Lkotlin/coroutines/d;->d:Lkotlin/coroutines/d;

    invoke-interface {v1, v2}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/coroutines/e;

    invoke-interface {v1, v0}, Lkotlin/coroutines/e;->c(Lkotlin/coroutines/c;)V

    :cond_0
    sget-object v0, Lg3/a;->d:Lg3/a;

    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted:Lkotlin/coroutines/c;

    return-void
.end method
