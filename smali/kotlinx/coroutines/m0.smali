.class public final Lkotlinx/coroutines/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/K;
.implements Lkotlinx/coroutines/m;


# static fields
.field public static final d:Lkotlinx/coroutines/m0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/m0;

    invoke-direct {v0}, Lkotlinx/coroutines/m0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/m0;->d:Lkotlinx/coroutines/m0;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(Ljava/lang/Throwable;)Z
    .locals 0

    const-string p0, "cause"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NonDisposableHandle"

    return-object p0
.end method
