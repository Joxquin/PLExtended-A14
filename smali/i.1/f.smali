.class public final Li/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a;


# instance fields
.field public final a:Landroid/view/ActionMode$Callback;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lq/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/f;->b:Landroid/content/Context;

    iput-object p2, p0, Li/f;->a:Landroid/view/ActionMode$Callback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Li/f;->c:Ljava/util/ArrayList;

    new-instance p1, Lq/m;

    invoke-direct {p1}, Lq/m;-><init>()V

    iput-object p1, p0, Li/f;->d:Lq/m;

    return-void
.end method


# virtual methods
.method public final a(Li/b;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0, p1}, Li/f;->e(Li/b;)Li/g;

    move-result-object p1

    new-instance v0, Lj/x;

    iget-object v1, p0, Li/f;->b:Landroid/content/Context;

    check-cast p2, LG/b;

    invoke-direct {v0, v1, p2}, Lj/x;-><init>(Landroid/content/Context;LG/b;)V

    iget-object p0, p0, Li/f;->a:Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final b(Li/b;Lj/o;)Z
    .locals 3

    invoke-virtual {p0, p1}, Li/f;->e(Li/b;)Li/g;

    move-result-object p1

    iget-object v0, p0, Li/f;->d:Lq/m;

    invoke-virtual {v0, p2}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    if-nez v1, :cond_0

    new-instance v1, Lj/F;

    iget-object v2, p0, Li/f;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lj/F;-><init>(Landroid/content/Context;LG/a;)V

    invoke-virtual {v0, p2, v1}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Li/f;->a:Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final c(Li/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Li/f;->e(Li/b;)Li/g;

    move-result-object p1

    iget-object p0, p0, Li/f;->a:Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final d(Li/b;Lj/o;)Z
    .locals 3

    invoke-virtual {p0, p1}, Li/f;->e(Li/b;)Li/g;

    move-result-object p1

    iget-object v0, p0, Li/f;->d:Lq/m;

    invoke-virtual {v0, p2}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    if-nez v1, :cond_0

    new-instance v1, Lj/F;

    iget-object v2, p0, Li/f;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lj/F;-><init>(Landroid/content/Context;LG/a;)V

    invoke-virtual {v0, p2, v1}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Li/f;->a:Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final e(Li/b;)Li/g;
    .locals 5

    iget-object v0, p0, Li/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/g;

    if-eqz v3, :cond_0

    iget-object v4, v3, Li/g;->b:Li/b;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Li/g;

    iget-object p0, p0, Li/f;->b:Landroid/content/Context;

    invoke-direct {v1, p0, p1}, Li/g;-><init>(Landroid/content/Context;Li/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
