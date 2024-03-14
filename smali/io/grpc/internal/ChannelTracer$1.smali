.class Lio/grpc/internal/ChannelTracer$1;
.super Ljava/util/ArrayDeque;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lio/grpc/internal/m;

.field final synthetic val$maxEvents:I


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LX2/L;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lio/grpc/internal/ChannelTracer$1;->val$maxEvents:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ChannelTracer$1;->this$0:Lio/grpc/internal/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
