.class public abstract Lcom/google/protobuf/G;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# instance fields
.field protected extensions:Lcom/google/protobuf/B;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    sget-object v0, Lcom/google/protobuf/B;->d:Lcom/google/protobuf/B;

    iput-object v0, p0, Lcom/google/protobuf/G;->extensions:Lcom/google/protobuf/B;

    return-void
.end method
