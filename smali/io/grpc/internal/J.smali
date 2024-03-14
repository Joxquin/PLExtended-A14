.class public final Lio/grpc/internal/J;
.super Lio/grpc/internal/C;
.source "SourceFile"


# instance fields
.field public final e:LX2/j;

.field public final f:LX2/L0;


# direct methods
.method public constructor <init>(Lio/grpc/internal/L;LX2/j;LX2/L0;)V
    .locals 0

    iget-object p1, p1, Lio/grpc/internal/L;->c:LX2/C;

    invoke-direct {p0, p1}, Lio/grpc/internal/C;-><init>(LX2/C;)V

    iput-object p2, p0, Lio/grpc/internal/J;->e:LX2/j;

    iput-object p3, p0, Lio/grpc/internal/J;->f:LX2/L0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/J;->e:LX2/j;

    iget-object p0, p0, Lio/grpc/internal/J;->f:LX2/L0;

    new-instance v1, LX2/r0;

    invoke-direct {v1}, LX2/r0;-><init>()V

    invoke-virtual {v0, p0, v1}, LX2/j;->a(LX2/L0;LX2/r0;)V

    return-void
.end method
