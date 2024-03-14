.class public final LL1/t0;
.super Landroid/view/ActionMode$Callback2;
.source "SourceFile"


# instance fields
.field public final synthetic a:LL1/u0;


# direct methods
.method public constructor <init>(LL1/u0;)V
    .locals 0

    iput-object p1, p0, LL1/t0;->a:LL1/u0;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, LL1/t0;->a:LL1/u0;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, LL1/t0;->a:LL1/u0;

    iget-object p0, p0, LL1/u0;->c:LL1/o;

    iget-object p0, p0, LL1/o;->b:LL1/q;

    invoke-virtual {p0, p2}, LL1/q;->f(Landroid/view/MenuItem;)Z

    move-result p0

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    iget-object v0, p0, LL1/t0;->a:LL1/u0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LL1/t0;->a:LL1/u0;

    iget-object v2, v1, LL1/u0;->c:LL1/o;

    iget v1, v1, LL1/u0;->m:I

    invoke-virtual {v2, v1}, LL1/o;->i(I)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, LL1/t0;->a:LL1/u0;

    iget-object v1, v1, LL1/u0;->c:LL1/o;

    iget-object v2, v1, LL1/o;->b:LL1/q;

    invoke-virtual {v2, p1, p2, v1}, LL1/q;->a(Landroid/view/ActionMode;Landroid/view/Menu;LL1/o;)V

    iget-object p0, p0, LL1/t0;->a:LL1/u0;

    iget-object p0, p0, LL1/u0;->c:LL1/o;

    iget-object p0, p0, LL1/o;->b:LL1/q;

    invoke-virtual {p0}, LL1/q;->g()V

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p1, p0, LL1/t0;->a:LL1/u0;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, LL1/t0;->a:LL1/u0;

    iget-object p0, p0, LL1/u0;->c:LL1/o;

    iget-object p0, p0, LL1/o;->b:LL1/q;

    invoke-virtual {p0}, LL1/q;->e()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    iget-object v0, p0, LL1/t0;->a:LL1/u0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LL1/t0;->a:LL1/u0;

    iget-object v2, v1, LL1/u0;->c:LL1/o;

    iget v1, v1, LL1/u0;->m:I

    invoke-virtual {v2, v1}, LL1/o;->i(I)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, LL1/t0;->a:LL1/u0;

    iget-object v1, v1, LL1/u0;->c:LL1/o;

    iget-object v2, v1, LL1/o;->b:LL1/q;

    invoke-virtual {v2, p1, p2, v1}, LL1/q;->a(Landroid/view/ActionMode;Landroid/view/Menu;LL1/o;)V

    iget-object p0, p0, LL1/t0;->a:LL1/u0;

    iget p1, p0, LL1/u0;->i:I

    iget p2, p0, LL1/u0;->m:I

    if-eq p1, p2, :cond_1

    iput p2, p0, LL1/u0;->i:I

    iget-object p0, p0, LL1/u0;->c:LL1/o;

    iget-object p0, p0, LL1/o;->b:LL1/q;

    invoke-virtual {p0}, LL1/q;->h()V

    :cond_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
