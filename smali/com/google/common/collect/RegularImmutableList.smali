.class Lcom/google/common/collect/RegularImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# static fields
.field public static final h:Lcom/google/common/collect/ImmutableList;


# instance fields
.field public final transient f:[Ljava/lang/Object;

.field public final transient g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableList;-><init>(I[Ljava/lang/Object;)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableList;->h:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableList;->f:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/common/collect/RegularImmutableList;->g:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->g:I

    invoke-static {p1, v0}, LO2/m;->g(II)V

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableList;->f:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final h([Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->f:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->g:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Lcom/google/common/collect/RegularImmutableList;->g:I

    add-int/2addr v2, p0

    return v2
.end method

.method public final i()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableList;->f:[Ljava/lang/Object;

    return-object p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/RegularImmutableList;->g:I

    return p0
.end method

.method public final k()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/RegularImmutableList;->g:I

    return p0
.end method
