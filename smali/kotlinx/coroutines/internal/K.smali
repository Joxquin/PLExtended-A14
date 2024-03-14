.class public final Lkotlinx/coroutines/internal/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/coroutines/i;

.field public final b:[Ljava/lang/Object;

.field public final c:[Lkotlinx/coroutines/r0;

.field public d:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/i;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/K;->a:Lkotlin/coroutines/i;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/internal/K;->b:[Ljava/lang/Object;

    new-array p1, p2, [Lkotlinx/coroutines/r0;

    iput-object p1, p0, Lkotlinx/coroutines/internal/K;->c:[Lkotlinx/coroutines/r0;

    return-void
.end method
