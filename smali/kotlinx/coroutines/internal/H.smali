.class public final Lkotlinx/coroutines/internal/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/E;

.field public static final b:Lm3/p;

.field public static final c:Lm3/p;

.field public static final d:Lm3/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/H;->a:Lkotlinx/coroutines/internal/E;

    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;->d:Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;

    sput-object v0, Lkotlinx/coroutines/internal/H;->b:Lm3/p;

    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;->d:Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;

    sput-object v0, Lkotlinx/coroutines/internal/H;->c:Lm3/p;

    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->d:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    sput-object v0, Lkotlinx/coroutines/internal/H;->d:Lm3/p;

    return-void
.end method

.method public static final a(Lkotlin/coroutines/i;Ljava/lang/Object;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlinx/coroutines/internal/H;->a:Lkotlinx/coroutines/internal/E;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/K;

    if-eqz v0, :cond_2

    check-cast p1, Lkotlinx/coroutines/internal/K;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lkotlinx/coroutines/internal/K;->c:[Lkotlinx/coroutines/r0;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    :goto_0
    add-int/lit8 v2, v1, -0x1

    aget-object v3, v0, v1

    invoke-static {v3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-object v4, p1, Lkotlinx/coroutines/internal/K;->b:[Ljava/lang/Object;

    aget-object v1, v4, v1

    invoke-interface {v3, p0, v1}, Lkotlinx/coroutines/r0;->k(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    sget-object v0, Lkotlinx/coroutines/internal/H;->c:Lm3/p;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lkotlin/coroutines/i;->x(Ljava/lang/Object;Lm3/p;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/r0;

    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/r0;->k(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static final b(Lkotlin/coroutines/i;)Ljava/lang/Object;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/H;->b:Lm3/p;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/i;->x(Ljava/lang/Object;Lm3/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/internal/H;->b(Lkotlin/coroutines/i;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/H;->a:Lkotlinx/coroutines/internal/E;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lkotlinx/coroutines/internal/K;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/K;-><init>(Lkotlin/coroutines/i;I)V

    sget-object p1, Lkotlinx/coroutines/internal/H;->d:Lm3/p;

    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/i;->x(Ljava/lang/Object;Lm3/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/r0;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/r0;->A(Lkotlin/coroutines/i;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
