.class public final Lk/i;
.super Lj/A;
.source "SourceFile"


# instance fields
.field public final synthetic m:I

.field public final synthetic n:Lk/n;


# direct methods
.method public constructor <init>(Lk/n;Landroid/content/Context;Lj/L;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lk/i;->m:I

    .line 8
    iput-object p1, p0, Lk/i;->n:Lk/n;

    .line 9
    invoke-direct {p0, p2, p3, p4, v0}, Lj/A;-><init>(Landroid/content/Context;Lj/o;Landroid/view/View;Z)V

    .line 10
    iget-object p2, p3, Lj/L;->B:Lj/r;

    .line 11
    invoke-virtual {p2}, Lj/r;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 12
    iget-object p2, p1, Lk/n;->l:Lk/m;

    if-nez p2, :cond_0

    .line 13
    iget-object p2, p1, Lk/n;->k:Lj/E;

    .line 14
    check-cast p2, Landroid/view/View;

    .line 15
    :cond_0
    iput-object p2, p0, Lj/A;->f:Landroid/view/View;

    .line 16
    :cond_1
    iget-object p1, p1, Lk/n;->x:Lk/j;

    .line 17
    iput-object p1, p0, Lj/A;->i:Lj/B;

    .line 18
    iget-object p0, p0, Lj/A;->j:Lj/y;

    if-eqz p0, :cond_2

    .line 19
    invoke-interface {p0, p1}, Lj/C;->i(Lj/B;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Lk/n;Landroid/content/Context;Lj/o;Lk/m;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lk/i;->m:I

    .line 1
    iput-object p1, p0, Lk/i;->n:Lk/n;

    .line 2
    invoke-direct {p0, p2, p3, p4, v0}, Lj/A;-><init>(Landroid/content/Context;Lj/o;Landroid/view/View;Z)V

    const p2, 0x800005

    .line 3
    iput p2, p0, Lj/A;->g:I

    .line 4
    iget-object p1, p1, Lk/n;->x:Lk/j;

    .line 5
    iput-object p1, p0, Lj/A;->i:Lj/B;

    .line 6
    iget-object p0, p0, Lj/A;->j:Lj/y;

    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p0, p1}, Lj/C;->i(Lj/B;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    iget v0, p0, Lk/i;->m:I

    iget-object v1, p0, Lk/i;->n:Lk/n;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object v2, v1, Lk/n;->u:Lk/i;

    invoke-super {p0}, Lj/A;->c()V

    return-void

    :goto_0
    iget-object v0, v1, Lk/n;->f:Lj/o;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lj/o;->c(Z)V

    :cond_0
    iput-object v2, v1, Lk/n;->t:Lk/i;

    invoke-super {p0}, Lj/A;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
