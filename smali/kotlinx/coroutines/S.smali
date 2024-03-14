.class public final Lkotlinx/coroutines/S;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/E;

.field public static final b:Lkotlinx/coroutines/internal/E;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/S;->a:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/S;->b:Lkotlinx/coroutines/internal/E;

    return-void
.end method
