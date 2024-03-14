.class public final LX2/w;
.super LX2/e;
.source "SourceFile"


# instance fields
.field public final a:LX2/e;


# direct methods
.method public constructor <init>(LX2/e;LX2/e;)V
    .locals 0

    invoke-direct {p0}, LX2/e;-><init>()V

    const-string p2, "creds1"

    invoke-static {p1, p2}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, LX2/w;->a:LX2/e;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/internal/h;Ljava/util/concurrent/Executor;LX2/d;)V
    .locals 2

    new-instance v0, LX2/v;

    invoke-static {}, LX2/C;->b()LX2/C;

    move-result-object v1

    invoke-direct {v0, p3, v1}, LX2/v;-><init>(LX2/d;LX2/C;)V

    iget-object p0, p0, LX2/w;->a:LX2/e;

    invoke-virtual {p0, p1, p2, v0}, LX2/e;->a(Lio/grpc/internal/h;Ljava/util/concurrent/Executor;LX2/d;)V

    return-void
.end method
