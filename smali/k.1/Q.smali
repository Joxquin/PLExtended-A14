.class public final Lk/Q;
.super Lk/u0;
.source "SourceFile"


# instance fields
.field public final synthetic m:Lk/X;

.field public final synthetic n:Lk/b0;


# direct methods
.method public constructor <init>(Lk/b0;Landroid/view/View;Lk/X;)V
    .locals 0

    iput-object p1, p0, Lk/Q;->n:Lk/b0;

    iput-object p3, p0, Lk/Q;->m:Lk/X;

    invoke-direct {p0, p2}, Lk/u0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lj/G;
    .locals 0

    iget-object p0, p0, Lk/Q;->m:Lk/X;

    return-object p0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lk/Q;->n:Lk/b0;

    iget-object v0, v0, Lk/b0;->i:Lk/a0;

    invoke-interface {v0}, Lk/a0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lk/Q;->n:Lk/b0;

    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lk/a0;->l(II)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
