.class public final Lkotlinx/coroutines/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/V;


# instance fields
.field public final d:Lkotlinx/coroutines/l0;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/U;->d:Lkotlinx/coroutines/l0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b()Lkotlinx/coroutines/l0;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/U;->d:Lkotlinx/coroutines/l0;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
