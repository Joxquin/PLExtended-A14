.class public final Lkotlinx/coroutines/W;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/V;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/V;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/W;->a:Lkotlinx/coroutines/V;

    return-void
.end method
