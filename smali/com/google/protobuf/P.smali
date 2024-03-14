.class public final Lcom/google/protobuf/P;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/List;

.field public final e:Lcom/google/protobuf/O;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/N;Lcom/google/protobuf/O;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/P;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/google/protobuf/P;->e:Lcom/google/protobuf/O;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/P;->e:Lcom/google/protobuf/O;

    iget-object p0, p0, Lcom/google/protobuf/P;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/protobuf/O;->convert(Ljava/lang/Object;)Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/P;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
