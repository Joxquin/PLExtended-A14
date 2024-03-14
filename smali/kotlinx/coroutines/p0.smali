.class public final Lkotlinx/coroutines/p0;
.super Lkotlinx/coroutines/d0;
.source "SourceFile"


# instance fields
.field public final h:Lkotlin/coroutines/c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/h;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/d0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/p0;->h:Lkotlin/coroutines/c;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/p0;->k(Ljava/lang/Throwable;)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 0

    sget-object p1, Le3/f;->a:Le3/f;

    iget-object p0, p0, Lkotlinx/coroutines/p0;->h:Lkotlin/coroutines/c;

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
