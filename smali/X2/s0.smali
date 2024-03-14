.class public final LX2/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LX2/t0;

.field public b:LX2/t0;

.field public c:Lio/grpc/MethodDescriptor$MethodType;

.field public d:Ljava/lang/String;

.field public e:Z


# virtual methods
.method public final a()LX2/u0;
    .locals 7

    new-instance v6, LX2/u0;

    iget-object v1, p0, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    iget-object v2, p0, LX2/s0;->d:Ljava/lang/String;

    iget-object v3, p0, LX2/s0;->a:LX2/t0;

    iget-object v4, p0, LX2/s0;->b:LX2/t0;

    iget-boolean v5, p0, LX2/s0;->e:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LX2/u0;-><init>(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;LX2/t0;LX2/t0;Z)V

    return-object v6
.end method
