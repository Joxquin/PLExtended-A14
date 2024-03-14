.class final Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/l;


# instance fields
.field final synthetic $context:Lkotlin/coroutines/i;

.field final synthetic $element:Ljava/lang/Object;

.field final synthetic $this_bindCancellationFun:Lm3/l;


# direct methods
.method public constructor <init>(Lm3/l;Ljava/lang/Object;Lkotlin/coroutines/i;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$this_bindCancellationFun:Lm3/l;

    iput-object p2, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$element:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$context:Lkotlin/coroutines/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$this_bindCancellationFun:Lm3/l;

    iget-object v0, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$element:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$context:Lkotlin/coroutines/i;

    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/internal/w;->b(Lm3/l;Ljava/lang/Object;Lkotlin/coroutines/i;)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
