.class Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableMap$EntrySet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/RegularImmutableMap$EntrySet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    iget v0, v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->j:I

    invoke-static {p1, v0}, LO2/m;->g(II)V

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    iget-object v1, v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->h:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v0, v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->i:I

    add-int/2addr v0, p1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->h:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->i:I

    xor-int/lit8 p0, p0, 0x1

    add-int/2addr p1, p0

    aget-object p0, v1, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p1, v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    iget p0, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->j:I

    return p0
.end method
