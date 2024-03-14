.class final Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# instance fields
.field public final transient f:[Ljava/lang/Object;

.field public final transient g:I

.field public final transient h:I


# direct methods
.method public constructor <init>(II[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->f:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->g:I

    iput p2, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->h:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->h:I

    invoke-static {p1, v0}, LO2/m;->g(II)V

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->f:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget p0, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->g:I

    add-int/2addr p1, p0

    aget-object p0, v0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->h:I

    return p0
.end method
