.class final Lkotlinx/coroutines/CoroutineDispatcher$Key$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/l;


# static fields
.field public static final d:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    invoke-direct {v0}, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->d:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/g;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lkotlinx/coroutines/x;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/x;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
