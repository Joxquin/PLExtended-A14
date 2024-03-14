.class public final Lx3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Z

.field public f:Lx3/l;

.field public g:Lx3/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lx3/l;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lx3/l;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lx3/l;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lx3/l;->a:[B

    .line 7
    iput p2, p0, Lx3/l;->b:I

    .line 8
    iput p3, p0, Lx3/l;->c:I

    .line 9
    iput-boolean p4, p0, Lx3/l;->d:Z

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lx3/l;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lx3/l;
    .locals 4

    iget-object v0, p0, Lx3/l;->f:Lx3/l;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lx3/l;->g:Lx3/l;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lx3/l;->f:Lx3/l;

    iput-object v3, v2, Lx3/l;->f:Lx3/l;

    iget-object v2, p0, Lx3/l;->f:Lx3/l;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lx3/l;->g:Lx3/l;

    iput-object v3, v2, Lx3/l;->g:Lx3/l;

    iput-object v1, p0, Lx3/l;->f:Lx3/l;

    iput-object v1, p0, Lx3/l;->g:Lx3/l;

    return-object v0
.end method

.method public final b(Lx3/l;)V
    .locals 1

    iput-object p0, p1, Lx3/l;->g:Lx3/l;

    iget-object v0, p0, Lx3/l;->f:Lx3/l;

    iput-object v0, p1, Lx3/l;->f:Lx3/l;

    iget-object v0, p0, Lx3/l;->f:Lx3/l;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lx3/l;->g:Lx3/l;

    iput-object p1, p0, Lx3/l;->f:Lx3/l;

    return-void
.end method

.method public final c()Lx3/l;
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx3/l;->d:Z

    new-instance v1, Lx3/l;

    iget v2, p0, Lx3/l;->b:I

    iget v3, p0, Lx3/l;->c:I

    iget-object p0, p0, Lx3/l;->a:[B

    invoke-direct {v1, p0, v2, v3, v0}, Lx3/l;-><init>([BIIZ)V

    return-object v1
.end method

.method public final d(Lx3/l;I)V
    .locals 5

    iget-boolean v0, p1, Lx3/l;->e:Z

    if-eqz v0, :cond_3

    iget v0, p1, Lx3/l;->c:I

    add-int v1, v0, p2

    iget-object v2, p1, Lx3/l;->a:[B

    const/16 v3, 0x2000

    if-le v1, v3, :cond_2

    iget-boolean v4, p1, Lx3/l;->d:Z

    if-nez v4, :cond_1

    iget v4, p1, Lx3/l;->b:I

    sub-int/2addr v1, v4

    if-gt v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, v4, v0, v2, v2}, Lkotlin/collections/m;->b(III[B[B)V

    iget v0, p1, Lx3/l;->c:I

    iget v3, p1, Lx3/l;->b:I

    sub-int/2addr v0, v3

    iput v0, p1, Lx3/l;->c:I

    iput v1, p1, Lx3/l;->b:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    iget v0, p1, Lx3/l;->c:I

    iget v1, p0, Lx3/l;->b:I

    add-int v3, v1, p2

    iget-object v4, p0, Lx3/l;->a:[B

    invoke-static {v0, v1, v3, v4, v2}, Lkotlin/collections/m;->b(III[B[B)V

    iget v0, p1, Lx3/l;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lx3/l;->c:I

    iget p1, p0, Lx3/l;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lx3/l;->b:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "only owner can write"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
