.class final Lcom/google/common/collect/RegularImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# static fields
.field public static final l:[Ljava/lang/Object;

.field public static final m:Lcom/google/common/collect/RegularImmutableSet;


# instance fields
.field public final transient g:[Ljava/lang/Object;

.field public final transient h:I

.field public final transient i:[Ljava/lang/Object;

.field public final transient j:I

.field public final transient k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    sput-object v6, Lcom/google/common/collect/RegularImmutableSet;->l:[Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/RegularImmutableSet;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/common/collect/RegularImmutableSet;-><init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableSet;->m:Lcom/google/common/collect/RegularImmutableSet;

    return-void
.end method

.method public constructor <init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    iput-object p4, p0, Lcom/google/common/collect/RegularImmutableSet;->g:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/common/collect/RegularImmutableSet;->h:I

    iput-object p5, p0, Lcom/google/common/collect/RegularImmutableSet;->i:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/RegularImmutableSet;->j:I

    iput p3, p0, Lcom/google/common/collect/RegularImmutableSet;->k:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->i:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/b;->a(I)I

    move-result v2

    :goto_0
    iget v3, p0, Lcom/google/common/collect/RegularImmutableSet;->j:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final h([Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->g:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSet;->k:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Lcom/google/common/collect/RegularImmutableSet;->k:I

    add-int/2addr v2, p0

    return v2
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/RegularImmutableSet;->h:I

    return p0
.end method

.method public final i()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableSet;->g:[Ljava/lang/Object;

    return-object p0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSet;->m()Lcom/google/common/collect/h;

    move-result-object p0

    return-object p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/RegularImmutableSet;->k:I

    return p0
.end method

.method public final k()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final m()Lcom/google/common/collect/h;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->o(I)Lcom/google/common/collect/c;

    move-result-object p0

    return-object p0
.end method

.method public final q()Lcom/google/common/collect/ImmutableList;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->g:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/common/collect/RegularImmutableSet;->k:I

    sget-object v1, Lcom/google/common/collect/ImmutableList;->e:Lcom/google/common/collect/c;

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/common/collect/RegularImmutableList;->h:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/RegularImmutableList;-><init>(I[Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/RegularImmutableSet;->k:I

    return p0
.end method
