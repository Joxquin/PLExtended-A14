.class public final Lf2/P;
.super Lcom/google/protobuf/E;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lf2/Q;->c()Lf2/Q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lf2/Q;

    invoke-static {p0, p1, p2}, Lf2/Q;->a(Lf2/Q;J)V

    return-void
.end method

.method public final b(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lf2/Q;

    invoke-static {p0, p1}, Lf2/Q;->b(Lf2/Q;Lcom/google/protobuf/ByteString;)V

    return-void
.end method
