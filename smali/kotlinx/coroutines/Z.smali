.class public final Lkotlinx/coroutines/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/h;


# static fields
.field public static final synthetic d:Lkotlinx/coroutines/Z;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/Z;

    invoke-direct {v0}, Lkotlinx/coroutines/Z;-><init>()V

    sput-object v0, Lkotlinx/coroutines/Z;->d:Lkotlinx/coroutines/Z;

    return-void
.end method

.method public static synthetic a(Lkotlinx/coroutines/a0;ZLkotlinx/coroutines/d0;I)Lkotlinx/coroutines/K;
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {p0, p1, v1, p2}, Lkotlinx/coroutines/a0;->n(ZZLm3/l;)Lkotlinx/coroutines/K;

    move-result-object p0

    return-object p0
.end method
