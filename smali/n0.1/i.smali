.class public final Ln0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/a;


# instance fields
.field public final a:Ln0/a;

.field public final b:Ln0/g;

.field public final c:Ln0/j;

.field public final d:Ln0/j;

.field public final e:Ln0/j;

.field public final f:Ln0/j;

.field public g:Z


# direct methods
.method public constructor <init>(Ln0/a;Ls0/b;Lu0/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln0/i;->g:Z

    iput-object p1, p0, Ln0/i;->a:Ln0/a;

    iget-object p1, p3, Lu0/j;->a:Lq0/a;

    invoke-virtual {p1}, Lq0/a;->a()Ln0/f;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ln0/g;

    iput-object v0, p0, Ln0/i;->b:Ln0/g;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    iget-object p1, p3, Lu0/j;->b:Lq0/b;

    invoke-virtual {p1}, Lq0/b;->a()Ln0/f;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ln0/j;

    iput-object v0, p0, Ln0/i;->c:Ln0/j;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    iget-object p1, p3, Lu0/j;->c:Lq0/b;

    invoke-virtual {p1}, Lq0/b;->a()Ln0/f;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ln0/j;

    iput-object v0, p0, Ln0/i;->d:Ln0/j;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    iget-object p1, p3, Lu0/j;->d:Lq0/b;

    invoke-virtual {p1}, Lq0/b;->a()Ln0/f;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ln0/j;

    iput-object v0, p0, Ln0/i;->e:Ln0/j;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    iget-object p1, p3, Lu0/j;->e:Lq0/b;

    invoke-virtual {p1}, Lq0/b;->a()Ln0/f;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Ln0/j;

    iput-object p3, p0, Ln0/i;->f:Ln0/j;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    return-void
.end method


# virtual methods
.method public final a(Ll0/a;)V
    .locals 6

    iget-boolean v0, p0, Ln0/i;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ln0/i;->g:Z

    iget-object v0, p0, Ln0/i;->d:Ln0/j;

    invoke-virtual {v0}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    iget-object v2, p0, Ln0/i;->e:Ln0/j;

    invoke-virtual {v2}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Ln0/i;->b:Ln0/g;

    invoke-virtual {v1}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Ln0/i;->c:Ln0/j;

    invoke-virtual {v2}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object p0, p0, Ln0/i;->f:Ln0/j;

    invoke-virtual {p0}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0, v3, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln0/i;->g:Z

    iget-object p0, p0, Ln0/i;->a:Ln0/a;

    invoke-interface {p0}, Ln0/a;->b()V

    return-void
.end method

.method public final c(Lx0/c;)V
    .locals 1

    iget-object p0, p0, Ln0/i;->c:Ln0/j;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    return-void

    :cond_0
    new-instance v0, Ln0/h;

    invoke-direct {v0, p1}, Ln0/h;-><init>(Lx0/c;)V

    invoke-virtual {p0, v0}, Ln0/f;->k(Lx0/c;)V

    return-void
.end method
