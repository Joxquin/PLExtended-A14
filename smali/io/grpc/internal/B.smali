.class public final Lio/grpc/internal/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;

.field public volatile b:Lio/grpc/ConnectivityState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/B;->a:Ljava/util/ArrayList;

    sget-object v0, Lio/grpc/ConnectivityState;->g:Lio/grpc/ConnectivityState;

    iput-object v0, p0, Lio/grpc/internal/B;->b:Lio/grpc/ConnectivityState;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/ConnectivityState;)V
    .locals 2

    const-string v0, "newState"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/B;->b:Lio/grpc/ConnectivityState;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lio/grpc/internal/B;->b:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->h:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_2

    iput-object p1, p0, Lio/grpc/internal/B;->b:Lio/grpc/ConnectivityState;

    iget-object p1, p0, Lio/grpc/internal/B;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lio/grpc/internal/B;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/B;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/internal/A;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
