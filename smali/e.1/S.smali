.class public final Le/S;
.super Li/b;
.source "SourceFile"

# interfaces
.implements Lj/m;


# instance fields
.field public final f:Landroid/content/Context;

.field public final g:Lj/o;

.field public h:Li/a;

.field public i:Ljava/lang/ref/WeakReference;

.field public final synthetic j:Le/T;


# direct methods
.method public constructor <init>(Le/T;Landroid/content/Context;Le/v;)V
    .locals 0

    iput-object p1, p0, Le/S;->j:Le/T;

    invoke-direct {p0}, Li/b;-><init>()V

    iput-object p2, p0, Le/S;->f:Landroid/content/Context;

    iput-object p3, p0, Le/S;->h:Li/a;

    new-instance p1, Lj/o;

    invoke-direct {p1, p2}, Lj/o;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput p2, p1, Lj/o;->l:I

    iput-object p1, p0, Le/S;->g:Lj/o;

    iput-object p0, p1, Lj/o;->e:Lj/m;

    return-void
.end method


# virtual methods
.method public final a(Lj/o;)V
    .locals 0

    iget-object p1, p0, Le/S;->h:Li/a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Le/S;->i()V

    iget-object p0, p0, Le/S;->j:Le/T;

    iget-object p0, p0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Lk/b;->g:Lk/n;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk/n;->l()Z

    :cond_1
    return-void
.end method

.method public final b(Lj/o;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Le/S;->h:Li/a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Li/a;->a(Li/b;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Le/S;->j:Le/T;

    iget-object v1, v0, Le/T;->i:Le/S;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Le/T;->q:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    iput-object p0, v0, Le/T;->j:Le/S;

    iget-object v1, p0, Le/S;->h:Li/a;

    iput-object v1, v0, Le/T;->k:Li/a;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Le/S;->h:Li/a;

    invoke-interface {v1, p0}, Li/a;->c(Li/b;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Le/S;->h:Li/a;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Le/T;->a(Z)V

    iget-object v2, v0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/view/View;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->i()V

    :cond_2
    iget-object v2, v0, Le/T;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, v0, Le/T;->v:Z

    iget-boolean v4, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    if-eq v3, v4, :cond_3

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s()V

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s()V

    iget-object v3, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroidx/appcompat/widget/ActionBarContainer;

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_3
    iput-object v1, v0, Le/T;->i:Le/S;

    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Le/S;->i:Ljava/lang/ref/WeakReference;

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

    iget-object p0, p0, Le/S;->g:Lj/o;

    return-object p0
.end method

.method public final f()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Li/j;

    iget-object p0, p0, Le/S;->f:Landroid/content/Context;

    invoke-direct {v0, p0}, Li/j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Le/S;->j:Le/T;

    iget-object p0, p0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Le/S;->j:Le/T;

    iget-object p0, p0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Le/S;->j:Le/T;

    iget-object v0, v0, Le/T;->i:Le/S;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/S;->g:Lj/o;

    invoke-virtual {v0}, Lj/o;->w()V

    :try_start_0
    iget-object v1, p0, Le/S;->h:Li/a;

    invoke-interface {v1, p0, v0}, Li/a;->b(Li/b;Lj/o;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lj/o;->v()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lj/o;->v()V

    throw p0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Le/S;->j:Le/T;

    iget-object p0, p0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    return p0
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Le/S;->j:Le/T;

    iget-object v0, v0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->j(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/S;->i:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Le/S;->j:Le/T;

    iget-object v0, v0, Le/T;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/S;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Le/S;->j:Le/T;

    iget-object p0, p0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    return-void
.end method

.method public final n(I)V
    .locals 1

    iget-object v0, p0, Le/S;->j:Le/T;

    iget-object v0, v0, Le/T;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/S;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Le/S;->j:Le/T;

    iget-object p0, p0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    invoke-static {p0, p1}, Landroidx/core/view/J;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    iput-boolean p1, p0, Li/b;->e:Z

    iget-object p0, p0, Le/S;->j:Le/T;

    iget-object p0, p0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    return-void
.end method
