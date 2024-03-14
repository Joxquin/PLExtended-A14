.class public final Landroidx/fragment/app/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final b:Landroidx/fragment/app/p0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/p0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->a(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Z;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    iget-object v1, v0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iget-object v1, v1, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->b(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Z;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->c(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Z;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final d(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->d(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Z;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final e(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->e(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Z;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->f(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Z;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final g(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    iget-object v1, v0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iget-object v1, v1, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->g(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Z;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final h(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->h(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Z;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final i(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->i(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Z;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final j(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->j(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Z;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final k(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->k(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Z;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final l(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->l(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Z;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final m(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->m(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Z;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final n(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->n(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Z;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method
