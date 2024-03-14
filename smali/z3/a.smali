.class public final Lz3/a;
.super Lcom/google/protobuf/E;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-static {}, Lz3/b;->a()Lz3/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void

    :cond_0
    invoke-static {}, Lz3/f;->a()Lz3/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void

    :cond_1
    invoke-static {}, Lz3/e;->a()Lz3/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void

    :cond_2
    invoke-static {}, Lz3/d;->a()Lz3/d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void

    :cond_3
    invoke-static {}, Lz3/c;->a()Lz3/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void
.end method
