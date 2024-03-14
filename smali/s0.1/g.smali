.class public final Ls0/g;
.super Ls0/b;
.source "SourceFile"


# instance fields
.field public final D:Lm0/e;

.field public final E:Ls0/c;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/a;Ls0/e;Ls0/c;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ls0/b;-><init>(Lcom/airbnb/lottie/a;Ls0/e;)V

    iput-object p3, p0, Ls0/g;->E:Ls0/c;

    new-instance p3, Lr0/o;

    const-string v0, "__container"

    iget-object p2, p2, Ls0/e;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p3, v0, p2, v1}, Lr0/o;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p2, Lm0/e;

    invoke-direct {p2, p1, p0, p3}, Lm0/e;-><init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/o;)V

    iput-object p2, p0, Ls0/g;->D:Lm0/e;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lm0/e;->c(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ls0/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Ls0/b;->o:Landroid/graphics/Matrix;

    iget-object p0, p0, Ls0/g;->D:Lm0/e;

    invoke-virtual {p0, p1, p2, p3}, Lm0/e;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    iget-object p0, p0, Ls0/g;->D:Lm0/e;

    invoke-virtual {p0, p1, p2, p3}, Lm0/e;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final m()Lr0/a;
    .locals 1

    iget-object v0, p0, Ls0/b;->q:Ls0/e;

    iget-object v0, v0, Ls0/e;->w:Lr0/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Ls0/g;->E:Ls0/c;

    iget-object p0, p0, Ls0/b;->q:Ls0/e;

    iget-object p0, p0, Ls0/e;->w:Lr0/a;

    return-object p0
.end method

.method public final n()Lu0/j;
    .locals 1

    iget-object v0, p0, Ls0/b;->q:Ls0/e;

    iget-object v0, v0, Ls0/e;->x:Lu0/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Ls0/g;->E:Ls0/c;

    iget-object p0, p0, Ls0/b;->q:Ls0/e;

    iget-object p0, p0, Ls0/e;->x:Lu0/j;

    return-object p0
.end method

.method public final r(Lp0/e;ILjava/util/List;Lp0/e;)V
    .locals 0

    iget-object p0, p0, Ls0/g;->D:Lm0/e;

    invoke-virtual {p0, p1, p2, p3, p4}, Lm0/e;->h(Lp0/e;ILjava/util/List;Lp0/e;)V

    return-void
.end method
