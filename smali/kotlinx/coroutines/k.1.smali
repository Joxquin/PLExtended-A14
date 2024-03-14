.class public final Lkotlinx/coroutines/k;
.super Lkotlinx/coroutines/q;
.source "SourceFile"


# instance fields
.field public final c:Lt3/b;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/c;Ljava/lang/Throwable;Z)V
    .locals 1

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    const/4 p1, 0x0

    invoke-static {p1}, Lt3/c;->a(Z)Lt3/b;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/k;->c:Lt3/b;

    return-void
.end method
