.class public final Ln0/r;
.super Ln0/m;
.source "SourceFile"


# instance fields
.field public final i:Lx0/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Ln0/m;-><init>(Ljava/util/List;)V

    new-instance p1, Lx0/d;

    invoke-direct {p1}, Lx0/d;-><init>()V

    iput-object p1, p0, Ln0/r;->i:Lx0/d;

    return-void
.end method


# virtual methods
.method public final g(Lx0/a;F)Ljava/lang/Object;
    .locals 10

    iget-object v0, p1, Lx0/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lx0/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, Lx0/d;

    check-cast v1, Lx0/d;

    iget-object v2, p0, Ln0/f;->e:Lx0/c;

    if-eqz v2, :cond_0

    iget v3, p1, Lx0/a;->g:F

    iget-object p1, p1, Lx0/a;->h:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0}, Ln0/f;->e()F

    move-result v8

    iget v9, p0, Ln0/f;->d:F

    move-object v5, v0

    move-object v6, v1

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lx0/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx0/d;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, v0, Lx0/d;->a:F

    iget v2, v1, Lx0/d;->a:F

    sget-object v3, Lw0/f;->a:Landroid/graphics/PointF;

    invoke-static {v2, p1, p2, p1}, Lw/f;->a(FFFF)F

    move-result p1

    iget v0, v0, Lx0/d;->b:F

    iget v1, v1, Lx0/d;->b:F

    invoke-static {v1, v0, p2, v0}, Lw/f;->a(FFFF)F

    move-result p2

    iget-object p0, p0, Ln0/r;->i:Lx0/d;

    iput p1, p0, Lx0/d;->a:F

    iput p2, p0, Lx0/d;->b:F

    move-object p1, p0

    :goto_0
    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
