.class public final Lkotlinx/coroutines/X;
.super Lkotlinx/coroutines/b0;
.source "SourceFile"


# instance fields
.field public final h:Lm3/l;

.field public final i:Lt3/d;


# direct methods
.method public constructor <init>(Lm3/l;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/b0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/X;->h:Lm3/l;

    const/4 p1, 0x0

    invoke-static {p1}, Lt3/c;->b(I)Lt3/d;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/X;->i:Lt3/d;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/X;->k(Ljava/lang/Throwable;)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lkotlinx/coroutines/X;->i:Lt3/d;

    invoke-virtual {v2, v0, v1}, Lt3/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/X;->h:Lm3/l;

    invoke-interface {p0, p1}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
