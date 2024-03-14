.class public final La3/d;
.super LX2/j;
.source "SourceFile"


# instance fields
.field public final a:La3/c;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La3/c;)V
    .locals 0

    invoke-direct {p0}, LX2/j;-><init>()V

    iput-object p1, p0, La3/d;->a:La3/c;

    return-void
.end method


# virtual methods
.method public final a(LX2/L0;LX2/r0;)V
    .locals 3

    invoke-virtual {p1}, LX2/L0;->d()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, La3/d;->a:La3/c;

    if-eqz v0, :cond_2

    iget-object p1, p0, La3/d;->b:Ljava/lang/Object;

    if-nez p1, :cond_0

    sget-object p1, LX2/L0;->m:LX2/L0;

    const-string v0, "No value received for unary call"

    invoke-virtual {p1, v0}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p1, p2}, Lio/grpc/StatusRuntimeException;-><init>(LX2/L0;LX2/r0;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/common/util/concurrent/a;

    invoke-direct {p1, v0}, Lcom/google/common/util/concurrent/a;-><init>(Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/common/util/concurrent/c;->i:LR2/a;

    invoke-virtual {p2, v2, v1, p1}, LR2/a;->b(Lcom/google/common/util/concurrent/c;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v2}, Lcom/google/common/util/concurrent/c;->e(Lcom/google/common/util/concurrent/c;)V

    :cond_0
    iget-object p0, p0, La3/d;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_1

    sget-object p0, Lcom/google/common/util/concurrent/c;->j:Ljava/lang/Object;

    :cond_1
    sget-object p1, Lcom/google/common/util/concurrent/c;->i:LR2/a;

    invoke-virtual {p1, v2, v1, p0}, LR2/a;->b(Lcom/google/common/util/concurrent/c;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v2}, Lcom/google/common/util/concurrent/c;->e(Lcom/google/common/util/concurrent/c;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lio/grpc/StatusRuntimeException;

    invoke-direct {p0, p1, p2}, Lio/grpc/StatusRuntimeException;-><init>(LX2/L0;LX2/r0;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/common/util/concurrent/a;

    invoke-direct {p1, p0}, Lcom/google/common/util/concurrent/a;-><init>(Ljava/lang/Throwable;)V

    sget-object p0, Lcom/google/common/util/concurrent/c;->i:LR2/a;

    invoke-virtual {p0, v2, v1, p1}, LR2/a;->b(Lcom/google/common/util/concurrent/c;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v2}, Lcom/google/common/util/concurrent/c;->e(Lcom/google/common/util/concurrent/c;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(LX2/r0;)V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, La3/d;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, La3/d;->b:Ljava/lang/Object;

    return-void

    :cond_0
    sget-object p0, LX2/L0;->m:LX2/L0;

    const-string p1, "More than one value received for unary call"

    invoke-virtual {p0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusRuntimeException;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lio/grpc/StatusRuntimeException;-><init>(LX2/L0;LX2/r0;)V

    throw p1
.end method
