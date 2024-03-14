.class public final Lkotlinx/coroutines/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/g;
.implements Lkotlin/coroutines/h;


# static fields
.field public static final d:Lkotlinx/coroutines/v0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/v0;

    invoke-direct {v0}, Lkotlinx/coroutines/v0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/v0;->d:Lkotlinx/coroutines/v0;

    return-void
.end method


# virtual methods
.method public final e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/f;->b(Lkotlin/coroutines/g;Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Lkotlin/coroutines/h;
    .locals 0

    return-object p0
.end method

.method public final i(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/coroutines/f;->e(Lkotlin/coroutines/i;Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0
.end method

.method public final x(Ljava/lang/Object;Lm3/p;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlin/coroutines/f;->a(Lkotlin/coroutines/g;Ljava/lang/Object;Lm3/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lkotlin/coroutines/h;)Lkotlin/coroutines/i;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/f;->c(Lkotlin/coroutines/g;Lkotlin/coroutines/h;)Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0
.end method
