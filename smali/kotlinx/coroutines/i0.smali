.class public final Lkotlinx/coroutines/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/E;

.field public static final b:Lkotlinx/coroutines/internal/E;

.field public static final c:Lkotlinx/coroutines/internal/E;

.field public static final d:Lkotlinx/coroutines/internal/E;

.field public static final e:Lkotlinx/coroutines/internal/E;

.field public static final f:Lkotlinx/coroutines/M;

.field public static final g:Lkotlinx/coroutines/M;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/i0;->a:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/i0;->b:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/i0;->c:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/i0;->d:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/i0;->e:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/M;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/M;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/i0;->f:Lkotlinx/coroutines/M;

    new-instance v0, Lkotlinx/coroutines/M;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/M;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/i0;->g:Lkotlinx/coroutines/M;

    return-void
.end method
