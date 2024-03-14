.class public final Lj/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/C;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public d:Landroid/content/Context;

.field public e:Landroid/view/LayoutInflater;

.field public f:Lj/o;

.field public g:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public h:Lj/B;

.field public i:Lj/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/k;->d:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lj/k;->e:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Lj/o;Z)V
    .locals 0

    iget-object p0, p0, Lj/k;->h:Lj/B;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lj/B;->a(Lj/o;Z)V

    :cond_0
    return-void
.end method

.method public final c(Lj/r;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lj/k;->i:Lj/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj/j;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final f(Landroid/content/Context;Lj/o;)V
    .locals 1

    iget-object v0, p0, Lj/k;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lj/k;->d:Landroid/content/Context;

    iget-object v0, p0, Lj/k;->e:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lj/k;->e:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Lj/k;->f:Lj/o;

    iget-object p0, p0, Lj/k;->i:Lj/j;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lj/j;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h(Lj/r;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i(Lj/B;)V
    .locals 0

    iput-object p1, p0, Lj/k;->h:Lj/B;

    return-void
.end method

.method public final j(Lj/L;)Z
    .locals 5

    invoke-virtual {p1}, Lj/o;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lj/p;

    invoke-direct {v0, p1}, Lj/p;-><init>(Lj/o;)V

    new-instance v1, Le/l;

    iget-object v2, p1, Lj/o;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Le/l;-><init>(Landroid/content/Context;)V

    new-instance v2, Lj/k;

    iget-object v3, v1, Le/l;->a:Le/h;

    iget-object v4, v3, Le/h;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Lj/k;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lj/p;->f:Lj/k;

    iput-object v0, v2, Lj/k;->h:Lj/B;

    iget-object v4, p1, Lj/o;->a:Landroid/content/Context;

    invoke-virtual {p1, v2, v4}, Lj/o;->b(Lj/C;Landroid/content/Context;)V

    iget-object v2, v0, Lj/p;->f:Lj/k;

    iget-object v4, v2, Lj/k;->i:Lj/j;

    if-nez v4, :cond_1

    new-instance v4, Lj/j;

    invoke-direct {v4, v2}, Lj/j;-><init>(Lj/k;)V

    iput-object v4, v2, Lj/k;->i:Lj/j;

    :cond_1
    iget-object v2, v2, Lj/k;->i:Lj/j;

    iput-object v2, v3, Le/h;->n:Landroid/widget/ListAdapter;

    iput-object v0, v3, Le/h;->o:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p1, Lj/o;->o:Landroid/view/View;

    if-eqz v2, :cond_2

    iput-object v2, v3, Le/h;->e:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lj/o;->n:Landroid/graphics/drawable/Drawable;

    iput-object v2, v3, Le/h;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lj/o;->m:Ljava/lang/CharSequence;

    iput-object v2, v3, Le/h;->d:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v3, Le/h;->l:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1}, Le/l;->a()Le/m;

    move-result-object v1

    iput-object v1, v0, Lj/p;->e:Le/m;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Lj/p;->e:Le/m;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Lj/p;->e:Le/m;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Lj/k;->h:Lj/B;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lj/B;->c(Lj/o;)Z

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lj/k;->f:Lj/o;

    iget-object p2, p0, Lj/k;->i:Lj/j;

    invoke-virtual {p2, p3}, Lj/j;->c(I)Lj/r;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lj/o;->q(Landroid/view/MenuItem;Lj/C;I)Z

    return-void
.end method
