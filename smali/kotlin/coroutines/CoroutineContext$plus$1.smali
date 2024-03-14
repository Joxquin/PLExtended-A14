.class final Lkotlin/coroutines/CoroutineContext$plus$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/p;


# static fields
.field public static final d:Lkotlin/coroutines/CoroutineContext$plus$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/coroutines/CoroutineContext$plus$1;

    invoke-direct {v0}, Lkotlin/coroutines/CoroutineContext$plus$1;-><init>()V

    sput-object v0, Lkotlin/coroutines/CoroutineContext$plus$1;->d:Lkotlin/coroutines/CoroutineContext$plus$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlin/coroutines/i;

    check-cast p2, Lkotlin/coroutines/g;

    const-string p0, "acc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lkotlin/coroutines/g;->getKey()Lkotlin/coroutines/h;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/coroutines/i;->z(Lkotlin/coroutines/h;)Lkotlin/coroutines/i;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Lkotlin/coroutines/e;->a:I

    sget-object v0, Lkotlin/coroutines/d;->d:Lkotlin/coroutines/d;

    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/e;

    if-nez v1, :cond_1

    new-instance p1, Lkotlin/coroutines/CombinedContext;

    invoke-direct {p1, p2, p0}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/i;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->z(Lkotlin/coroutines/h;)Lkotlin/coroutines/i;

    move-result-object p0

    if-ne p0, p1, :cond_2

    new-instance p0, Lkotlin/coroutines/CombinedContext;

    invoke-direct {p0, v1, p2}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/i;)V

    move-object p2, p0

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/coroutines/CombinedContext;

    new-instance v0, Lkotlin/coroutines/CombinedContext;

    invoke-direct {v0, p2, p0}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/i;)V

    invoke-direct {p1, v1, v0}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/i;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method
