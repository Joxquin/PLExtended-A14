.class public final Ln0/k;
.super Ln0/m;
.source "SourceFile"


# instance fields
.field public final i:Lr0/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0, p1}, Ln0/m;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx0/a;

    iget-object p1, p1, Lx0/a;->b:Ljava/lang/Object;

    check-cast p1, Lr0/d;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lr0/d;->b:[I

    array-length v0, p1

    :goto_0
    new-instance p1, Lr0/d;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lr0/d;-><init>([F[I)V

    iput-object p1, p0, Ln0/k;->i:Lr0/d;

    return-void
.end method


# virtual methods
.method public final g(Lx0/a;F)Ljava/lang/Object;
    .locals 7

    iget-object v0, p1, Lx0/a;->b:Ljava/lang/Object;

    check-cast v0, Lr0/d;

    iget-object p1, p1, Lx0/a;->c:Ljava/lang/Object;

    check-cast p1, Lr0/d;

    iget-object p0, p0, Ln0/k;->i:Lr0/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lr0/d;->b:[I

    array-length v2, v1

    iget-object v3, p1, Lr0/d;->b:[I

    array-length v4, v3

    if-ne v2, v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    iget-object v4, v0, Lr0/d;->a:[F

    aget v4, v4, v2

    iget-object v5, p1, Lr0/d;->a:[F

    aget v5, v5, v2

    sget-object v6, Lw0/f;->a:Landroid/graphics/PointF;

    invoke-static {v5, v4, p2, v4}, Lw/f;->a(FFFF)F

    move-result v4

    iget-object v5, p0, Lr0/d;->a:[F

    aput v4, v5, v2

    aget v4, v1, v2

    aget v5, v3, v2

    invoke-static {v4, v5, p2}, Lw0/a;->c(IIF)I

    move-result v4

    iget-object v5, p0, Lr0/d;->b:[I

    aput v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot interpolate between gradients. Lengths vary ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " vs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v3

    const-string v0, ")"

    invoke-static {p1, p2, v0}, Lv/e;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
