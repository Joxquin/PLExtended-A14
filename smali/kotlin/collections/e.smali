.class public final Lkotlin/collections/e;
.super Lkotlin/collections/f;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final d:Lkotlin/collections/f;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lkotlin/collections/f;II)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/collections/f;-><init>()V

    iput-object p1, p0, Lkotlin/collections/e;->d:Lkotlin/collections/f;

    iput p2, p0, Lkotlin/collections/e;->e:I

    invoke-virtual {p1}, Lkotlin/collections/a;->h()I

    move-result p1

    invoke-static {p2, p3, p1}, Lkotlin/collections/b;->a(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lkotlin/collections/e;->f:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/collections/e;->f:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lkotlin/collections/e;->d:Lkotlin/collections/f;

    iget p0, p0, Lkotlin/collections/e;->e:I

    add-int/2addr p0, p1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Lcom/android/launcher3/util/l;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lkotlin/collections/e;->f:I

    return p0
.end method
