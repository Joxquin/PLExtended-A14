.class public final LX2/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/grpc/MethodDescriptor$MethodType;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:LX2/t0;

.field public final e:LX2/t0;

.field public final f:Ljava/lang/Object;

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;LX2/t0;LX2/t0;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    const-string v0, "type"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, LX2/u0;->a:Lio/grpc/MethodDescriptor$MethodType;

    const-string p1, "fullMethodName"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, LX2/u0;->b:Ljava/lang/String;

    const/16 p1, 0x2f

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LX2/u0;->c:Ljava/lang/String;

    const-string p1, "requestMarshaller"

    invoke-static {p3, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, LX2/u0;->d:LX2/t0;

    const-string p1, "responseMarshaller"

    invoke-static {p4, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p4, p0, LX2/u0;->e:LX2/t0;

    iput-object v1, p0, LX2/u0;->f:Ljava/lang/Object;

    iput-boolean v2, p0, LX2/u0;->g:Z

    iput-boolean v2, p0, LX2/u0;->h:Z

    iput-boolean p5, p0, LX2/u0;->i:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fullServiceName"

    invoke-static {p0, v1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "methodName"

    invoke-static {p1, p0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()LX2/s0;
    .locals 2

    new-instance v0, LX2/s0;

    invoke-direct {v0}, LX2/s0;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, LX2/s0;->a:LX2/t0;

    iput-object v1, v0, LX2/s0;->b:LX2/t0;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    const-string v1, "fullMethodName"

    iget-object v2, p0, LX2/u0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    iget-object v2, p0, LX2/u0;->a:Lio/grpc/MethodDescriptor$MethodType;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "idempotent"

    iget-boolean v2, p0, LX2/u0;->g:Z

    invoke-virtual {v0, v1, v2}, LO2/i;->c(Ljava/lang/String;Z)V

    const-string v1, "safe"

    iget-boolean v2, p0, LX2/u0;->h:Z

    invoke-virtual {v0, v1, v2}, LO2/i;->c(Ljava/lang/String;Z)V

    const-string v1, "sampledToLocalTracing"

    iget-boolean v2, p0, LX2/u0;->i:Z

    invoke-virtual {v0, v1, v2}, LO2/i;->c(Ljava/lang/String;Z)V

    const-string v1, "requestMarshaller"

    iget-object v2, p0, LX2/u0;->d:LX2/t0;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "responseMarshaller"

    iget-object v2, p0, LX2/u0;->e:LX2/t0;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "schemaDescriptor"

    iget-object p0, p0, LX2/u0;->f:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, LO2/i;->d:Z

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
