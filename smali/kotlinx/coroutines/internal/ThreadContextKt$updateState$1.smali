.class final Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/p;


# static fields
.field public static final d:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->d:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

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

    check-cast p1, Lkotlinx/coroutines/internal/K;

    check-cast p2, Lkotlin/coroutines/g;

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, Lkotlinx/coroutines/r0;

    if-eqz p0, :cond_0

    check-cast p2, Lkotlinx/coroutines/r0;

    iget-object p0, p1, Lkotlinx/coroutines/internal/K;->a:Lkotlin/coroutines/i;

    invoke-interface {p2, p0}, Lkotlinx/coroutines/r0;->A(Lkotlin/coroutines/i;)Ljava/lang/Object;

    move-result-object p0

    iget v0, p1, Lkotlinx/coroutines/internal/K;->d:I

    iget-object v1, p1, Lkotlinx/coroutines/internal/K;->b:[Ljava/lang/Object;

    aput-object p0, v1, v0

    add-int/lit8 p0, v0, 0x1

    iput p0, p1, Lkotlinx/coroutines/internal/K;->d:I

    iget-object p0, p1, Lkotlinx/coroutines/internal/K;->c:[Lkotlinx/coroutines/r0;

    aput-object p2, p0, v0

    :cond_0
    return-object p1
.end method
