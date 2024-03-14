.class public final Lio/grpc/internal/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lio/grpc/internal/L;


# direct methods
.method public constructor <init>(Lio/grpc/internal/L;I)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/G;->e:Lio/grpc/internal/L;

    iput p2, p0, Lio/grpc/internal/G;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/G;->e:Lio/grpc/internal/L;

    iget-object v0, v0, Lio/grpc/internal/L;->f:LX2/k;

    iget p0, p0, Lio/grpc/internal/G;->d:I

    invoke-virtual {v0, p0}, LX2/k;->c(I)V

    return-void
.end method
