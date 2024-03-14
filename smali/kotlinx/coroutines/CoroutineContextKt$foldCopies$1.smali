.class final Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/p;


# static fields
.field public static final d:Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;

    invoke-direct {v0}, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;->d:Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;

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
    .locals 0

    check-cast p1, Lkotlin/coroutines/i;

    check-cast p2, Lkotlin/coroutines/g;

    const-string p0, "result"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, Lkotlinx/coroutines/u;

    if-eqz p0, :cond_0

    check-cast p2, Lkotlinx/coroutines/u;

    invoke-interface {p2}, Lkotlinx/coroutines/u;->j()Lkotlinx/coroutines/u;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/coroutines/i;->i(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lkotlin/coroutines/i;->i(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    :goto_0
    return-object p0
.end method
