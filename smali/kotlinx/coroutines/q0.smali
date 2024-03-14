.class public Lkotlinx/coroutines/q0;
.super Lkotlinx/coroutines/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlin/coroutines/i;Z)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/i;Z)V

    return-void
.end method


# virtual methods
.method public final O(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/a;->f:Lkotlin/coroutines/i;

    invoke-static {p0, p1}, Lkotlinx/coroutines/A;->a(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method
