.class public final Lkotlinx/coroutines/flow/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/d;


# instance fields
.field public final a:Lkotlinx/coroutines/flow/d;

.field public final b:Lm3/l;

.field public final c:Lm3/p;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/d;)V
    .locals 3

    sget-object v0, Lkotlinx/coroutines/flow/i;->a:Lm3/l;

    sget-object v1, Lkotlinx/coroutines/flow/i;->b:Lm3/p;

    const-string v2, "upstream"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "keySelector"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "areEquivalent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/c;->a:Lkotlinx/coroutines/flow/d;

    iput-object v0, p0, Lkotlinx/coroutines/flow/c;->b:Lm3/l;

    iput-object v1, p0, Lkotlinx/coroutines/flow/c;->c:Lm3/p;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lkotlinx/coroutines/flow/internal/e;->a:Lkotlinx/coroutines/internal/E;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v1, Lkotlinx/coroutines/flow/b;

    invoke-direct {v1, p0, v0, p1}, Lkotlinx/coroutines/flow/b;-><init>(Lkotlinx/coroutines/flow/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/e;)V

    iget-object p0, p0, Lkotlinx/coroutines/flow/c;->a:Lkotlinx/coroutines/flow/d;

    invoke-interface {p0, v1, p2}, Lkotlinx/coroutines/flow/d;->a(Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
