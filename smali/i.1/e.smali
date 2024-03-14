.class public final Li/e;
.super Li/b;
.source "SourceFile"

# interfaces
.implements Lj/m;


# instance fields
.field public final f:Landroid/content/Context;

.field public final g:Landroidx/appcompat/widget/ActionBarContextView;

.field public final h:Li/a;

.field public i:Ljava/lang/ref/WeakReference;

.field public j:Z

.field public final k:Lj/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Li/a;)V
    .locals 0

    invoke-direct {p0}, Li/b;-><init>()V

    iput-object p1, p0, Li/e;->f:Landroid/content/Context;

    iput-object p2, p0, Li/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p3, p0, Li/e;->h:Li/a;

    new-instance p1, Lj/o;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lj/o;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput p2, p1, Lj/o;->l:I

    iput-object p1, p0, Li/e;->k:Lj/o;

    iput-object p0, p1, Lj/o;->e:Lj/m;

    return-void
.end method


# virtual methods
.method public final a(Lj/o;)V
    .locals 0

    invoke-virtual {p0}, Li/e;->i()V

    iget-object p0, p0, Li/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Lk/b;->g:Lk/n;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/n;->l()Z

    :cond_0
    return-void
.end method

.method public final b(Lj/o;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Li/e;->h:Li/a;

    invoke-interface {p1, p0, p2}, Li/a;->a(Li/b;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Li/e;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Li/e;->j:Z

    iget-object v0, p0, Li/e;->h:Li/a;

    invoke-interface {v0, p0}, Li/a;->c(Li/b;)V

    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Li/e;->i:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final e()Lj/o;
    .locals 0

    iget-object p0, p0, Li/e;->k:Lj/o;

    return-object p0
.end method

.method public final f()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Li/j;

    iget-object p0, p0, Li/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Li/j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Li/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Li/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Li/e;->k:Lj/o;

    iget-object v1, p0, Li/e;->h:Li/a;

    invoke-interface {v1, p0, v0}, Li/a;->b(Li/b;Lj/o;)Z

    return-void
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Li/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    return p0
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Li/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->j(Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Li/e;->i:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Li/e;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/e;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Li/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    return-void
.end method

.method public final n(I)V
    .locals 1

    iget-object v0, p0, Li/e;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/e;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Li/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    invoke-static {p0, p1}, Landroidx/core/view/J;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    iput-boolean p1, p0, Li/b;->e:Z

    iget-object p0, p0, Li/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    return-void
.end method
