.class public final La3/c;
.super Lcom/google/common/util/concurrent/c;
.source "SourceFile"


# instance fields
.field public final k:LX2/k;


# direct methods
.method public constructor <init>(LX2/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/c;-><init>()V

    iput-object p1, p0, La3/c;->k:LX2/k;

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 2

    iget-object p0, p0, La3/c;->k:LX2/k;

    const-string v0, "GrpcFuture was cancelled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LX2/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    const-string v1, "clientCall"

    iget-object p0, p0, La3/c;->k:LX2/k;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
