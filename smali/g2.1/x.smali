.class public final Lg2/x;
.super Lcom/google/protobuf/E;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lg2/B;->c()Lg2/B;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void
.end method


# virtual methods
.method public final a(Lg2/A;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lg2/B;

    invoke-static {p0, p1}, Lg2/B;->a(Lg2/B;Lg2/A;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lg2/B;

    invoke-static {p0, p1}, Lg2/B;->b(Lg2/B;Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;)V

    return-void
.end method
