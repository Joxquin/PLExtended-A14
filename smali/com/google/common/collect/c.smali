.class public final Lcom/google/common/collect/c;
.super Lcom/google/common/collect/a;
.source "SourceFile"


# instance fields
.field public final f:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/common/collect/a;-><init>(II)V

    iput-object p1, p0, Lcom/google/common/collect/c;->f:Lcom/google/common/collect/ImmutableList;

    return-void
.end method
