.class public final Li0/d;
.super Li0/c;
.source "SourceFile"


# instance fields
.field public final d:Landroid/util/SparseIntArray;

.field public final e:Landroid/os/Parcel;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    const-string v4, ""

    new-instance v5, Lq/m;

    invoke-direct {v5}, Lq/m;-><init>()V

    new-instance v6, Lq/m;

    invoke-direct {v6}, Lq/m;-><init>()V

    new-instance v7, Lq/m;

    invoke-direct {v7}, Lq/m;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Li0/d;-><init>(Landroid/os/Parcel;IILjava/lang/String;Lq/m;Lq/m;Lq/m;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Lq/m;Lq/m;Lq/m;)V
    .locals 0

    .line 2
    invoke-direct {p0, p5, p6, p7}, Li0/c;-><init>(Lq/m;Lq/m;Lq/m;)V

    .line 3
    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Li0/d;->d:Landroid/util/SparseIntArray;

    const/4 p5, -0x1

    .line 4
    iput p5, p0, Li0/d;->i:I

    .line 5
    iput p5, p0, Li0/d;->k:I

    .line 6
    iput-object p1, p0, Li0/d;->e:Landroid/os/Parcel;

    .line 7
    iput p2, p0, Li0/d;->f:I

    .line 8
    iput p3, p0, Li0/d;->g:I

    .line 9
    iput p2, p0, Li0/d;->j:I

    .line 10
    iput-object p4, p0, Li0/d;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A(Landroid/os/Parcelable;)V
    .locals 1

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public final C(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final D(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method public final F()V
    .locals 3

    iget v0, p0, Li0/d;->i:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Li0/d;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int v2, v1, v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    return-void
.end method

.method public final a()Li0/d;
    .locals 9

    new-instance v8, Li0/d;

    iget-object v1, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget v0, p0, Li0/d;->j:I

    iget v3, p0, Li0/d;->f:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Li0/d;->g:I

    :cond_0
    move v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Li0/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Li0/c;->a:Lq/m;

    iget-object v6, p0, Li0/c;->b:Lq/m;

    iget-object v7, p0, Li0/c;->c:Lq/m;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Li0/d;-><init>(Landroid/os/Parcel;IILjava/lang/String;Lq/m;Lq/m;Lq/m;)V

    return-object v8
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()Landroid/os/Bundle;
    .locals 1

    const-class v0, Li0/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final h()[B
    .locals 1

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-object v0
.end method

.method public final i()Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final j(I)Z
    .locals 4

    :goto_0
    iget v0, p0, Li0/d;->j:I

    iget v1, p0, Li0/d;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_2

    iget v0, p0, Li0/d;->k:I

    if-ne v0, p1, :cond_0

    return v2

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    return v3

    :cond_1
    iget v0, p0, Li0/d;->j:I

    iget-object v1, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Li0/d;->k:I

    iget v1, p0, Li0/d;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Li0/d;->j:I

    goto :goto_0

    :cond_2
    iget p0, p0, Li0/d;->k:I

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2
.end method

.method public final k()I
    .locals 0

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public final m()J
    .locals 2

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()Landroid/os/Parcelable;
    .locals 1

    const-class v0, Li0/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final q()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final s(I)V
    .locals 2

    invoke-virtual {p0}, Li0/d;->F()V

    iput p1, p0, Li0/d;->i:I

    iget-object v0, p0, Li0/d;->d:Landroid/util/SparseIntArray;

    iget-object v1, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li0/d;->y(I)V

    invoke-virtual {p0, p1}, Li0/d;->y(I)V

    return-void
.end method

.method public final u(Z)V
    .locals 0

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public final w([B)V
    .locals 1

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public final x(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final y(I)V
    .locals 0

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final z(J)V
    .locals 0

    iget-object p0, p0, Li0/d;->e:Landroid/os/Parcel;

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
