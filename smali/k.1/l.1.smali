.class public final Lk/l;
.super Lk/u0;
.source "SourceFile"


# instance fields
.field public final synthetic m:Lk/m;


# direct methods
.method public constructor <init>(Lk/m;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lk/l;->m:Lk/m;

    invoke-direct {p0, p2}, Lk/u0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lj/G;
    .locals 0

    iget-object p0, p0, Lk/l;->m:Lk/m;

    iget-object p0, p0, Lk/m;->g:Lk/n;

    iget-object p0, p0, Lk/n;->t:Lk/i;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lj/A;->a()Lj/y;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lk/l;->m:Lk/m;

    iget-object p0, p0, Lk/m;->g:Lk/n;

    invoke-virtual {p0}, Lk/n;->l()Z

    const/4 p0, 0x1

    return p0
.end method

.method public final d()Z
    .locals 1

    iget-object p0, p0, Lk/l;->m:Lk/m;

    iget-object p0, p0, Lk/m;->g:Lk/n;

    iget-object v0, p0, Lk/n;->v:Lk/k;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lk/n;->e()Z

    const/4 p0, 0x1

    return p0
.end method
