.class public final Lj/i;
.super Lj/y;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public A:Lj/B;

.field public B:Landroid/view/ViewTreeObserver;

.field public C:Landroid/widget/PopupWindow$OnDismissListener;

.field public D:Z

.field public final e:Landroid/content/Context;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Z

.field public final j:Landroid/os/Handler;

.field public final k:Ljava/util/List;

.field public final l:Ljava/util/List;

.field public final m:Lj/d;

.field public final n:Lj/e;

.field public final o:Lj/g;

.field public p:I

.field public q:I

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;

.field public t:I

.field public u:Z

.field public v:Z

.field public w:I

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1

    invoke-direct {p0}, Lj/y;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj/i;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj/i;->l:Ljava/util/List;

    new-instance v0, Lj/d;

    invoke-direct {v0, p0}, Lj/d;-><init>(Lj/i;)V

    iput-object v0, p0, Lj/i;->m:Lj/d;

    new-instance v0, Lj/e;

    invoke-direct {v0, p0}, Lj/e;-><init>(Lj/i;)V

    iput-object v0, p0, Lj/i;->n:Lj/e;

    new-instance v0, Lj/g;

    invoke-direct {v0, p0}, Lj/g;-><init>(Lj/i;)V

    iput-object v0, p0, Lj/i;->o:Lj/g;

    const/4 v0, 0x0

    iput v0, p0, Lj/i;->p:I

    iput v0, p0, Lj/i;->q:I

    iput-object p1, p0, Lj/i;->e:Landroid/content/Context;

    iput-object p2, p0, Lj/i;->r:Landroid/view/View;

    iput p3, p0, Lj/i;->g:I

    iput p4, p0, Lj/i;->h:I

    iput-boolean p5, p0, Lj/i;->i:Z

    iput-boolean v0, p0, Lj/i;->y:Z

    sget-object p3, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p2}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Lj/i;->t:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    const p3, 0x7f070017

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lj/i;->f:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lj/i;->j:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lj/o;Z)V
    .locals 6

    iget-object v0, p0, Lj/i;->l:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lj/i;->l:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/h;

    iget-object v3, v3, Lj/h;->b:Lj/o;

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-gez v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Lj/i;->l:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lj/i;->l:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/h;

    iget-object v0, v0, Lj/h;->b:Lj/o;

    invoke-virtual {v0, v1}, Lj/o;->c(Z)V

    :cond_3
    iget-object v0, p0, Lj/i;->l:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/h;

    iget-object v2, v0, Lj/h;->b:Lj/o;

    invoke-virtual {v2, p0}, Lj/o;->r(Lj/C;)V

    iget-boolean v2, p0, Lj/i;->D:Z

    const/4 v3, 0x0

    iget-object v0, v0, Lj/h;->a:Lk/F0;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lk/C0;->C:Lk/K;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    iget-object v2, v0, Lk/C0;->C:Lk/K;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_4
    invoke-virtual {v0}, Lk/C0;->dismiss()V

    iget-object v0, p0, Lj/i;->l:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    iget-object v4, p0, Lj/i;->l:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj/h;

    iget v4, v4, Lj/h;->c:I

    iput v4, p0, Lj/i;->t:I

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lj/i;->r:Landroid/view/View;

    sget-object v5, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result v4

    if-ne v4, v2, :cond_6

    move v4, v1

    goto :goto_2

    :cond_6
    move v4, v2

    :goto_2
    iput v4, p0, Lj/i;->t:I

    :goto_3
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lj/i;->dismiss()V

    iget-object p2, p0, Lj/i;->A:Lj/B;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1, v2}, Lj/B;->a(Lj/o;Z)V

    :cond_7
    iget-object p1, p0, Lj/i;->B:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lj/i;->B:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lj/i;->m:Lj/d;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_8
    iput-object v3, p0, Lj/i;->B:Landroid/view/ViewTreeObserver;

    :cond_9
    iget-object p1, p0, Lj/i;->s:Landroid/view/View;

    iget-object p2, p0, Lj/i;->n:Lj/e;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lj/i;->C:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_4

    :cond_a
    if-eqz p2, :cond_b

    iget-object p0, p0, Lj/i;->l:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj/h;

    iget-object p0, p0, Lj/h;->b:Lj/o;

    invoke-virtual {p0, v1}, Lj/o;->c(Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lj/i;->l:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object p0, p0, Lj/i;->l:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj/h;

    iget-object p0, p0, Lj/h;->a:Lk/F0;

    invoke-virtual {p0}, Lk/C0;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final d()V
    .locals 2

    iget-object p0, p0, Lj/i;->l:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/h;

    iget-object v0, v0, Lj/h;->a:Lk/F0;

    iget-object v0, v0, Lk/C0;->f:Lk/s0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lj/l;

    goto :goto_1

    :cond_0
    check-cast v0, Lj/l;

    :goto_1
    invoke-virtual {v0}, Lj/l;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dismiss()V
    .locals 3

    iget-object v0, p0, Lj/i;->l:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lj/i;->l:Ljava/util/List;

    new-array v1, v0, [Lj/h;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lj/h;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v1, p0, v0

    iget-object v2, v1, Lj/h;->a:Lk/F0;

    invoke-virtual {v2}, Lk/C0;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lj/h;->a:Lk/F0;

    invoke-virtual {v1}, Lk/C0;->dismiss()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e()Lk/s0;
    .locals 1

    iget-object v0, p0, Lj/i;->l:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lj/i;->l:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj/h;

    iget-object p0, p0, Lj/h;->a:Lk/F0;

    iget-object p0, p0, Lk/C0;->f:Lk/s0;

    :goto_0
    return-object p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i(Lj/B;)V
    .locals 0

    iput-object p1, p0, Lj/i;->A:Lj/B;

    return-void
.end method

.method public final j(Lj/L;)Z
    .locals 4

    iget-object v0, p0, Lj/i;->l:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/h;

    iget-object v3, v1, Lj/h;->b:Lj/o;

    if-ne p1, v3, :cond_0

    iget-object p0, v1, Lj/h;->a:Lk/F0;

    iget-object p0, p0, Lk/C0;->f:Lk/s0;

    invoke-virtual {p0}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    :cond_1
    invoke-virtual {p1}, Lj/o;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lj/i;->k(Lj/o;)V

    iget-object p0, p0, Lj/i;->A:Lj/B;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lj/B;->c(Lj/o;)Z

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final k(Lj/o;)V
    .locals 1

    iget-object v0, p0, Lj/i;->e:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lj/o;->b(Lj/C;Landroid/content/Context;)V

    invoke-virtual {p0}, Lj/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lj/i;->u(Lj/o;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lj/i;->k:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lj/i;->r:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lj/i;->r:Landroid/view/View;

    iget v0, p0, Lj/i;->p:I

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Lj/i;->q:I

    :cond_0
    return-void
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Lj/i;->y:Z

    return-void
.end method

.method public final o(I)V
    .locals 2

    iget v0, p0, Lj/i;->p:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lj/i;->p:I

    iget-object v0, p0, Lj/i;->r:Landroid/view/View;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Lj/i;->q:I

    :cond_0
    return-void
.end method

.method public final onDismiss()V
    .locals 5

    iget-object v0, p0, Lj/i;->l:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lj/i;->l:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/h;

    iget-object v4, v3, Lj/h;->a:Lk/F0;

    invoke-virtual {v4}, Lk/C0;->b()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    iget-object p0, v3, Lj/h;->b:Lj/o;

    invoke-virtual {p0, v1}, Lj/o;->c(Z)V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lj/i;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj/i;->u:Z

    iput p1, p0, Lj/i;->w:I

    return-void
.end method

.method public final q(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lj/i;->C:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final r(Z)V
    .locals 0

    iput-boolean p1, p0, Lj/i;->z:Z

    return-void
.end method

.method public final s(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj/i;->v:Z

    iput p1, p0, Lj/i;->x:I

    return-void
.end method

.method public final show()V
    .locals 2

    invoke-virtual {p0}, Lj/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lj/i;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/o;

    invoke-virtual {p0, v1}, Lj/i;->u(Lj/o;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj/i;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lj/i;->r:Landroid/view/View;

    iput-object v0, p0, Lj/i;->s:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lj/i;->B:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lj/i;->B:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lj/i;->m:Lj/d;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, Lj/i;->s:Landroid/view/View;

    iget-object p0, p0, Lj/i;->n:Lj/e;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public final u(Lj/o;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lj/i;->e:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    new-instance v3, Lj/l;

    iget-boolean v4, v0, Lj/i;->i:Z

    const v5, 0x7f0d000b

    invoke-direct {v3, v1, v2, v4, v5}, Lj/l;-><init>(Lj/o;Landroid/view/LayoutInflater;ZI)V

    invoke-virtual/range {p0 .. p0}, Lj/i;->b()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lj/i;->y:Z

    if-eqz v4, :cond_0

    iput-boolean v5, v3, Lj/l;->f:Z

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lj/i;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static/range {p1 .. p1}, Lj/y;->t(Lj/o;)Z

    move-result v4

    iput-boolean v4, v3, Lj/l;->f:Z

    :cond_1
    :goto_0
    iget-object v4, v0, Lj/i;->e:Landroid/content/Context;

    iget v6, v0, Lj/i;->f:I

    invoke-static {v3, v4, v6}, Lj/y;->l(Lj/l;Landroid/content/Context;I)I

    move-result v4

    new-instance v6, Lk/F0;

    iget-object v7, v0, Lj/i;->e:Landroid/content/Context;

    iget v8, v0, Lj/i;->g:I

    iget v9, v0, Lj/i;->h:I

    invoke-direct {v6, v7, v8, v9}, Lk/F0;-><init>(Landroid/content/Context;II)V

    iget-object v7, v0, Lj/i;->o:Lj/g;

    iput-object v7, v6, Lk/F0;->D:Lk/D0;

    iput-object v0, v6, Lk/C0;->s:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v7, v6, Lk/C0;->C:Lk/K;

    invoke-virtual {v7, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v8, v0, Lj/i;->r:Landroid/view/View;

    iput-object v8, v6, Lk/C0;->r:Landroid/view/View;

    iget v8, v0, Lj/i;->q:I

    iput v8, v6, Lk/C0;->o:I

    iput-boolean v5, v6, Lk/C0;->B:Z

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {v6, v3}, Lk/C0;->o(Landroid/widget/ListAdapter;)V

    invoke-virtual {v6, v4}, Lk/C0;->q(I)V

    iget v3, v0, Lj/i;->q:I

    iput v3, v6, Lk/C0;->o:I

    iget-object v3, v0, Lj/i;->l:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x0

    if-lez v3, :cond_a

    iget-object v3, v0, Lj/i;->l:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/h;

    iget-object v11, v3, Lj/h;->b:Lj/o;

    invoke-virtual {v11}, Lj/o;->size()I

    move-result v12

    move v13, v9

    :goto_1
    if-ge v13, v12, :cond_3

    invoke-virtual {v11, v13}, Lj/o;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v15

    if-ne v1, v15, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_2
    if-nez v14, :cond_4

    goto :goto_6

    :cond_4
    iget-object v11, v3, Lj/h;->a:Lk/F0;

    iget-object v11, v11, Lk/C0;->f:Lk/s0;

    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    if-eqz v13, :cond_5

    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v13

    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    check-cast v12, Lj/l;

    goto :goto_3

    :cond_5
    check-cast v12, Lj/l;

    move v13, v9

    :goto_3
    invoke-virtual {v12}, Lj/l;->getCount()I

    move-result v15

    move v8, v9

    :goto_4
    const/4 v5, -0x1

    if-ge v8, v15, :cond_7

    invoke-virtual {v12, v8}, Lj/l;->c(I)Lj/r;

    move-result-object v10

    if-ne v14, v10, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    move v8, v5

    :goto_5
    if-ne v8, v5, :cond_8

    goto :goto_6

    :cond_8
    add-int/2addr v8, v13

    invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v8, v5

    if-ltz v8, :cond_b

    invoke-virtual {v11}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lt v8, v5, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v11, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :cond_b
    :goto_6
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_13

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    iget-object v7, v0, Lj/i;->l:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj/h;

    iget-object v7, v7, Lj/h;->a:Lk/F0;

    iget-object v7, v7, Lk/C0;->f:Lk/s0;

    const/4 v8, 0x2

    new-array v8, v8, [I

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, v0, Lj/i;->s:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v11, v0, Lj/i;->t:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    aget v8, v8, v9

    invoke-virtual {v7}, Landroid/widget/ListView;->getWidth()I

    move-result v7

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    iget v8, v10, Landroid/graphics/Rect;->right:I

    if-le v7, v8, :cond_d

    goto :goto_8

    :cond_c
    aget v7, v8, v9

    sub-int/2addr v7, v4

    if-gez v7, :cond_e

    :cond_d
    const/4 v7, 0x1

    const/4 v10, 0x1

    goto :goto_9

    :cond_e
    :goto_8
    move v10, v9

    const/4 v7, 0x1

    :goto_9
    if-ne v10, v7, :cond_f

    const/4 v7, 0x1

    goto :goto_a

    :cond_f
    move v7, v9

    :goto_a
    iput v10, v0, Lj/i;->t:I

    iput-object v5, v6, Lk/C0;->r:Landroid/view/View;

    iget v8, v0, Lj/i;->q:I

    const/4 v10, 0x5

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_11

    if-eqz v7, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_c

    :cond_11
    if-eqz v7, :cond_12

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    :goto_b
    add-int/2addr v4, v9

    goto :goto_d

    :cond_12
    :goto_c
    rsub-int/lit8 v4, v4, 0x0

    :goto_d
    iput v4, v6, Lk/C0;->i:I

    const/4 v4, 0x1

    iput-boolean v4, v6, Lk/C0;->n:Z

    iput-boolean v4, v6, Lk/C0;->m:Z

    invoke-virtual {v6, v9}, Lk/C0;->h(I)V

    goto :goto_f

    :cond_13
    iget-boolean v4, v0, Lj/i;->u:Z

    if-eqz v4, :cond_14

    iget v4, v0, Lj/i;->w:I

    iput v4, v6, Lk/C0;->i:I

    :cond_14
    iget-boolean v4, v0, Lj/i;->v:Z

    if-eqz v4, :cond_15

    iget v4, v0, Lj/i;->x:I

    invoke-virtual {v6, v4}, Lk/C0;->h(I)V

    :cond_15
    iget-object v4, v0, Lj/y;->d:Landroid/graphics/Rect;

    if-eqz v4, :cond_16

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_e

    :cond_16
    const/4 v8, 0x0

    :goto_e
    iput-object v8, v6, Lk/C0;->A:Landroid/graphics/Rect;

    :goto_f
    new-instance v4, Lj/h;

    iget v5, v0, Lj/i;->t:I

    invoke-direct {v4, v6, v1, v5}, Lj/h;-><init>(Lk/F0;Lj/o;I)V

    iget-object v5, v0, Lj/i;->l:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lk/C0;->show()V

    iget-object v4, v6, Lk/C0;->f:Lk/s0;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v3, :cond_17

    iget-boolean v0, v0, Lj/i;->z:Z

    if-eqz v0, :cond_17

    iget-object v0, v1, Lj/o;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_17

    const v0, 0x7f0d0012

    invoke-virtual {v2, v0, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v1, v1, Lj/o;->m:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v6}, Lk/C0;->show()V

    :cond_17
    return-void
.end method
