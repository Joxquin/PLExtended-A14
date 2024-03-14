.class final Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/p;


# instance fields
.field final synthetic $isNewCoroutine:Z

.field final synthetic $leftoverContext:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Z)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$leftoverContext:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p2, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$isNewCoroutine:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlin/coroutines/i;

    check-cast p2, Lkotlin/coroutines/g;

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lkotlinx/coroutines/u;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lkotlin/coroutines/i;->i(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$leftoverContext:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/i;

    invoke-interface {p2}, Lkotlin/coroutines/g;->getKey()Lkotlin/coroutines/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$isNewCoroutine:Z

    if-eqz p0, :cond_1

    check-cast p2, Lkotlinx/coroutines/u;

    invoke-interface {p2}, Lkotlinx/coroutines/u;->j()Lkotlinx/coroutines/u;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, p2

    check-cast p0, Lkotlinx/coroutines/u;

    :goto_0
    invoke-interface {p1, p0}, Lkotlin/coroutines/i;->i(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$leftoverContext:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/i;

    invoke-interface {p2}, Lkotlin/coroutines/g;->getKey()Lkotlin/coroutines/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/i;->z(Lkotlin/coroutines/h;)Lkotlin/coroutines/i;

    move-result-object v0

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/u;

    invoke-interface {p2}, Lkotlinx/coroutines/u;->v()Lkotlin/coroutines/i;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/coroutines/i;->i(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    :goto_1
    return-object p0
.end method
