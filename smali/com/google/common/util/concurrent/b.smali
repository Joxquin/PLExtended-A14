.class public final Lcom/google/common/util/concurrent/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/google/common/util/concurrent/b;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Lcom/google/common/util/concurrent/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/b;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/b;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/b;->d:Lcom/google/common/util/concurrent/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/common/util/concurrent/b;->a:Ljava/lang/Runnable;

    .line 7
    iput-object v0, p0, Lcom/google/common/util/concurrent/b;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(LR2/j;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/DirectExecutor;->d:Lcom/google/common/util/concurrent/DirectExecutor;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/util/concurrent/b;->a:Ljava/lang/Runnable;

    .line 4
    iput-object v0, p0, Lcom/google/common/util/concurrent/b;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
