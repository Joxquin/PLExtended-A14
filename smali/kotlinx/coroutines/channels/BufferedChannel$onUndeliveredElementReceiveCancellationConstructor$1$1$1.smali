.class final Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/l;


# instance fields
.field final synthetic $element:Ljava/lang/Object;

.field final synthetic $select:Lw3/b;

.field final synthetic this$0:Lkotlinx/coroutines/channels/c;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/c;Lw3/b;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1$1;->$element:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1$1;->this$0:Lkotlinx/coroutines/channels/c;

    iput-object p3, p0, Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1$1;->$select:Lw3/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1$1;->$element:Ljava/lang/Object;

    sget-object v0, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1$1;->this$0:Lkotlinx/coroutines/channels/c;

    iget-object v0, v0, Lkotlinx/coroutines/channels/c;->e:Lm3/l;

    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1$1;->$select:Lw3/b;

    invoke-interface {p0}, Lw3/b;->getContext()Lkotlin/coroutines/i;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/internal/w;->b(Lm3/l;Ljava/lang/Object;Lkotlin/coroutines/i;)V

    :cond_0
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
