.class public final Lf2/r0;
.super Lcom/google/protobuf/E;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lf2/w0;->c()Lf2/w0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void
.end method


# virtual methods
.method public final a(Lf2/s0;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lf2/w0;

    invoke-virtual {p1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lf2/t0;

    invoke-static {p0, p1}, Lf2/w0;->a(Lf2/w0;Lf2/t0;)V

    return-void
.end method

.method public final b(Lf2/u0;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lf2/w0;

    invoke-virtual {p1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lf2/v0;

    invoke-static {p0, p1}, Lf2/w0;->b(Lf2/w0;Lf2/v0;)V

    return-void
.end method
