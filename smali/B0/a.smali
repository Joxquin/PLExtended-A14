.class public final LB0/a;
.super Lcom/google/protobuf/E;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, LB0/b;->a()LB0/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, LB0/b;

    invoke-static {p0, p1}, LB0/b;->c(LB0/b;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final b(Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, LB0/b;

    invoke-static {p0, p1}, LB0/b;->e(LB0/b;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final c(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, LB0/b;

    invoke-static {p0, p1, p2}, LB0/b;->b(LB0/b;J)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, LB0/b;

    invoke-static {p0, p1}, LB0/b;->f(LB0/b;Ljava/lang/String;)V

    return-void
.end method

.method public final e(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, LB0/b;

    invoke-static {p0, p1, p2}, LB0/b;->d(LB0/b;J)V

    return-void
.end method
