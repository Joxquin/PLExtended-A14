.class public final Lkotlinx/coroutines/Y;
.super Lkotlinx/coroutines/d0;
.source "SourceFile"


# instance fields
.field public final h:Lm3/l;


# direct methods
.method public constructor <init>(Lm3/l;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/d0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/Y;->h:Lm3/l;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/Y;->k(Ljava/lang/Throwable;)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/Y;->h:Lm3/l;

    invoke-interface {p0, p1}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
