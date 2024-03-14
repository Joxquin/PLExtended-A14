.class public abstract Landroidx/fragment/app/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Landroidx/activity/result/e;

.field public B:Landroidx/activity/result/e;

.field public C:Landroidx/activity/result/e;

.field public D:Ljava/util/ArrayDeque;

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Ljava/util/ArrayList;

.field public K:Ljava/util/ArrayList;

.field public L:Ljava/util/ArrayList;

.field public M:Landroidx/fragment/app/u0;

.field public final N:Landroidx/fragment/app/i0;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Landroidx/fragment/app/A0;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Landroidx/fragment/app/Y;

.field public g:Landroidx/activity/s;

.field public final h:Landroidx/fragment/app/f0;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field public final l:Ljava/util/Map;

.field public final m:Landroidx/fragment/app/a0;

.field public final n:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final o:Landroidx/fragment/app/b0;

.field public final p:Landroidx/fragment/app/b0;

.field public final q:Landroidx/fragment/app/b0;

.field public final r:Landroidx/fragment/app/b0;

.field public final s:Landroidx/fragment/app/g0;

.field public t:I

.field public u:Landroidx/fragment/app/W;

.field public v:Landroidx/fragment/app/U;

.field public w:Landroidx/fragment/app/K;

.field public x:Landroidx/fragment/app/K;

.field public final y:Landroidx/fragment/app/h0;

.field public final z:Landroidx/fragment/app/e0;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    new-instance v0, Landroidx/fragment/app/A0;

    invoke-direct {v0}, Landroidx/fragment/app/A0;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    new-instance v0, Landroidx/fragment/app/Y;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Y;-><init>(Landroidx/fragment/app/p0;)V

    iput-object v0, p0, Landroidx/fragment/app/p0;->f:Landroidx/fragment/app/Y;

    new-instance v0, Landroidx/fragment/app/f0;

    invoke-direct {v0, p0}, Landroidx/fragment/app/f0;-><init>(Landroidx/fragment/app/p0;)V

    iput-object v0, p0, Landroidx/fragment/app/p0;->h:Landroidx/fragment/app/f0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/p0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/p0;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/p0;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/p0;->l:Ljava/util/Map;

    new-instance v0, Landroidx/fragment/app/a0;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a0;-><init>(Landroidx/fragment/app/p0;)V

    iput-object v0, p0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/p0;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroidx/fragment/app/b0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/p0;I)V

    iput-object v0, p0, Landroidx/fragment/app/p0;->o:Landroidx/fragment/app/b0;

    new-instance v0, Landroidx/fragment/app/b0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/p0;I)V

    iput-object v0, p0, Landroidx/fragment/app/p0;->p:Landroidx/fragment/app/b0;

    new-instance v0, Landroidx/fragment/app/b0;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/p0;I)V

    iput-object v0, p0, Landroidx/fragment/app/p0;->q:Landroidx/fragment/app/b0;

    new-instance v0, Landroidx/fragment/app/b0;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/p0;I)V

    iput-object v0, p0, Landroidx/fragment/app/p0;->r:Landroidx/fragment/app/b0;

    new-instance v0, Landroidx/fragment/app/g0;

    invoke-direct {v0, p0}, Landroidx/fragment/app/g0;-><init>(Landroidx/fragment/app/p0;)V

    iput-object v0, p0, Landroidx/fragment/app/p0;->s:Landroidx/fragment/app/g0;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/p0;->t:I

    new-instance v0, Landroidx/fragment/app/h0;

    invoke-direct {v0, p0}, Landroidx/fragment/app/h0;-><init>(Landroidx/fragment/app/p0;)V

    iput-object v0, p0, Landroidx/fragment/app/p0;->y:Landroidx/fragment/app/h0;

    new-instance v0, Landroidx/fragment/app/e0;

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/e0;-><init>(Landroidx/fragment/app/p0;I)V

    iput-object v0, p0, Landroidx/fragment/app/p0;->z:Landroidx/fragment/app/e0;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/p0;->D:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0, p0}, Landroidx/fragment/app/i0;-><init>(Landroidx/fragment/app/p0;)V

    iput-object v0, p0, Landroidx/fragment/app/p0;->N:Landroidx/fragment/app/i0;

    return-void
.end method

.method public static H(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static I(Landroidx/fragment/app/K;)Z
    .locals 4

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHasMenu:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mMenuVisible:Z

    if-nez v0, :cond_5

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {p0}, Landroidx/fragment/app/A0;->e()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v2, v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/K;

    if-eqz v3, :cond_2

    invoke-static {v3}, Landroidx/fragment/app/p0;->I(Landroidx/fragment/app/K;)Z

    move-result v2

    :cond_2
    if-eqz v2, :cond_1

    move p0, v1

    goto :goto_0

    :cond_3
    move p0, v0

    :goto_0
    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :cond_5
    :goto_1
    return v1
.end method

.method public static K(Landroidx/fragment/app/K;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    iget-object v2, v1, Landroidx/fragment/app/p0;->x:Landroidx/fragment/app/K;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/K;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v1, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    invoke-static {p0}, Landroidx/fragment/app/p0;->K(Landroidx/fragment/app/K;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a0(Landroidx/fragment/app/K;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHidden:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mHidden:Z

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mHiddenChanged:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Landroidx/fragment/app/K;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/A0;->b(Ljava/lang/String;)Landroidx/fragment/app/K;

    move-result-object p0

    return-object p0
.end method

.method public final B(I)Landroidx/fragment/app/K;
    .locals 4

    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iget-object v0, p0, Landroidx/fragment/app/A0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/K;

    if-eqz v2, :cond_0

    iget v3, v2, Landroidx/fragment/app/K;->mFragmentId:I

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/A0;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/z0;

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget v0, v2, Landroidx/fragment/app/K;->mFragmentId:I

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public final C(Ljava/lang/String;)Landroidx/fragment/app/K;
    .locals 4

    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iget-object v0, p0, Landroidx/fragment/app/A0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/K;

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroidx/fragment/app/K;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/A0;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/z0;

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget-object v0, v2, Landroidx/fragment/app/K;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public final D(Landroidx/fragment/app/K;)Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Landroidx/fragment/app/K;->mContainerId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/p0;->v:Landroidx/fragment/app/U;

    invoke-virtual {v0}, Landroidx/fragment/app/U;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/p0;->v:Landroidx/fragment/app/U;

    iget p1, p1, Landroidx/fragment/app/K;->mContainerId:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/U;->b(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final E()Landroidx/fragment/app/h0;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    iget-object p0, v0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->E()Landroidx/fragment/app/h0;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/p0;->y:Landroidx/fragment/app/h0;

    return-object p0
.end method

.method public final F()Landroidx/fragment/app/e0;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    iget-object p0, v0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->F()Landroidx/fragment/app/e0;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/p0;->z:Landroidx/fragment/app/e0;

    return-object p0
.end method

.method public final G(Landroidx/fragment/app/K;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hide: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/K;->mHidden:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/K;->mHidden:Z

    iget-boolean v1, p1, Landroidx/fragment/app/K;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/K;->mHiddenChanged:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->Z(Landroidx/fragment/app/K;)V

    :cond_1
    return-void
.end method

.method public final J()Z
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/K;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->J()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final L()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/p0;->F:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/fragment/app/p0;->G:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final M(IZ)V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Landroidx/fragment/app/p0;->t:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroidx/fragment/app/p0;->t:I

    iget-object p1, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iget-object p2, p1, Landroidx/fragment/app/A0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v1, p1, Landroidx/fragment/app/A0;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    iget-object v0, v0, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/z0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/z0;->k()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/z0;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/z0;->k()V

    iget-object v2, v0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget-boolean v3, v2, Landroidx/fragment/app/K;->mRemoving:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroidx/fragment/app/K;->isInBackStack()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_5

    iget-boolean v1, v2, Landroidx/fragment/app/K;->mBeingSaved:Z

    if-eqz v1, :cond_7

    iget-object v1, p1, Landroidx/fragment/app/A0;->c:Ljava/util/HashMap;

    iget-object v3, v2, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v2, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/fragment/app/z0;->n()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/A0;->i(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_7
    invoke-virtual {p1, v0}, Landroidx/fragment/app/A0;->h(Landroidx/fragment/app/z0;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/p0;->b0()V

    iget-boolean p1, p0, Landroidx/fragment/app/p0;->E:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    if-eqz p1, :cond_9

    iget p2, p0, Landroidx/fragment/app/p0;->t:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_9

    invoke-virtual {p1}, Landroidx/fragment/app/W;->h()V

    iput-boolean v1, p0, Landroidx/fragment/app/p0;->E:Z

    :cond_9
    return-void
.end method

.method public final N()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->F:Z

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->G:Z

    iget-object v1, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iput-boolean v0, v1, Landroidx/fragment/app/u0;->i:Z

    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {p0}, Landroidx/fragment/app/A0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/K;->noteStateNotSaved()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final O()Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/p0;->P(II)Z

    move-result p0

    return p0
.end method

.method public final P(II)Z
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->x(Z)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/p0;->w(Z)V

    iget-object v2, p0, Landroidx/fragment/app/p0;->x:Landroidx/fragment/app/K;

    if-eqz v2, :cond_0

    if-gez p1, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/K;->getChildFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/p0;->O()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v4, p0, Landroidx/fragment/app/p0;->J:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/fragment/app/p0;->K:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object v3, p0

    move v7, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/fragment/app/p0;->Q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Landroidx/fragment/app/p0;->b:Z

    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/p0;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/p0;->K:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/p0;->S(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d0()V

    iget-boolean p2, p0, Landroidx/fragment/app/p0;->I:Z

    if-eqz p2, :cond_2

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->I:Z

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->b0()V

    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iget-object p0, p0, Landroidx/fragment/app/A0;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return p1
.end method

.method public final Q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 6

    const/4 v0, 0x1

    and-int/2addr p5, v0

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    move p5, v0

    goto :goto_0

    :cond_0
    move p5, v1

    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    const/4 v3, -0x1

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    :cond_1
    if-nez p3, :cond_3

    if-gez p4, :cond_3

    if-eqz p5, :cond_2

    move v3, v1

    goto/16 :goto_5

    :cond_2
    iget-object p3, p0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr v3, p3

    goto :goto_5

    :cond_3
    iget-object v2, p0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_6

    iget-object v4, p0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a;

    if-eqz p3, :cond_4

    iget-object v5, v4, Landroidx/fragment/app/a;->i:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    if-ltz p4, :cond_5

    iget v4, v4, Landroidx/fragment/app/a;->t:I

    if-ne p4, v4, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-gez v2, :cond_8

    :cond_7
    :goto_3
    move v3, v2

    goto :goto_5

    :cond_8
    if-eqz p5, :cond_b

    :goto_4
    if-lez v2, :cond_7

    iget-object p5, p0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/fragment/app/a;

    if-eqz p3, :cond_9

    iget-object v4, p5, Landroidx/fragment/app/a;->i:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    if-ltz p4, :cond_7

    iget p5, p5, Landroidx/fragment/app/a;->t:I

    if-ne p4, p5, :cond_7

    :cond_a
    move v2, v3

    goto :goto_4

    :cond_b
    iget-object p3, p0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p3, v3

    if-ne v2, p3, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    :goto_5
    if-gez v3, :cond_e

    return v1

    :cond_e
    iget-object p3, p0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_6
    if-lt p3, v3, :cond_f

    iget-object p4, p0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/fragment/app/a;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_6

    :cond_f
    return v0
.end method

.method public final R(Landroidx/fragment/app/K;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/K;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/K;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Landroidx/fragment/app/K;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iget-object v2, v0, Landroidx/fragment/app/A0;->a:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/A0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/K;->mAdded:Z

    invoke-static {p1}, Landroidx/fragment/app/p0;->I(Landroidx/fragment/app/K;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/fragment/app/p0;->E:Z

    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/K;->mRemoving:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->Z(Landroidx/fragment/app/K;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final S(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->p:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/p0;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->p:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/p0;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/p0;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error with the back stack records"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final T(Landroid/os/Parcelable;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "result_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iget-object v5, v5, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Landroidx/fragment/app/p0;->k:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "fragment_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, v0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iget-object v6, v6, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v3, v0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iget-object v4, v3, Landroidx/fragment/app/A0;->c:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v2, "state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/s0;

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v4, v3, Landroidx/fragment/app/A0;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v5, v1, Landroidx/fragment/app/s0;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    iget-object v7, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    const/4 v8, 0x0

    const-string v9, "): "

    const/4 v10, 0x2

    const-string v11, "FragmentManager"

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Landroidx/fragment/app/A0;->i(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/x0;

    iget-object v12, v0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iget-object v8, v8, Landroidx/fragment/app/x0;->e:Ljava/lang/String;

    iget-object v12, v12, Landroidx/fragment/app/u0;->d:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/K;

    if-eqz v8, :cond_7

    invoke-static {v10}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v12

    if-eqz v12, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "restoreSaveState: re-attaching retained "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v12, Landroidx/fragment/app/z0;

    invoke-direct {v12, v7, v3, v8, v6}, Landroidx/fragment/app/z0;-><init>(Landroidx/fragment/app/a0;Landroidx/fragment/app/A0;Landroidx/fragment/app/K;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_7
    new-instance v7, Landroidx/fragment/app/z0;

    iget-object v13, v0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    iget-object v14, v0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iget-object v8, v0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iget-object v8, v8, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/p0;->E()Landroidx/fragment/app/h0;

    move-result-object v16

    move-object v12, v7

    move-object/from16 v17, v6

    invoke-direct/range {v12 .. v17}, Landroidx/fragment/app/z0;-><init>(Landroidx/fragment/app/a0;Landroidx/fragment/app/A0;Ljava/lang/ClassLoader;Landroidx/fragment/app/h0;Landroid/os/Bundle;)V

    :goto_3
    iget-object v7, v12, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iput-object v6, v7, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v0, v7, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    invoke-static {v10}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "restoreSaveState: active ("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v7, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v6, v0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iget-object v6, v6, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroidx/fragment/app/z0;->l(Ljava/lang/ClassLoader;)V

    invoke-virtual {v3, v12}, Landroidx/fragment/app/A0;->g(Landroidx/fragment/app/z0;)V

    iget v6, v0, Landroidx/fragment/app/p0;->t:I

    iput v6, v12, Landroidx/fragment/app/z0;->e:I

    goto/16 :goto_2

    :cond_9
    iget-object v2, v0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v2, v2, Landroidx/fragment/app/u0;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v12, 0x1

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/K;

    iget-object v13, v5, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_b

    move v6, v12

    :cond_b
    if-nez v6, :cond_a

    invoke-static {v10}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v13, "Discarding retained Fragment "

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " that was not found in the set of active Fragments "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Landroidx/fragment/app/s0;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v6, v0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/u0;->f(Landroidx/fragment/app/K;)V

    iput-object v0, v5, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    new-instance v6, Landroidx/fragment/app/z0;

    invoke-direct {v6, v7, v3, v5}, Landroidx/fragment/app/z0;-><init>(Landroidx/fragment/app/a0;Landroidx/fragment/app/A0;Landroidx/fragment/app/K;)V

    iput v12, v6, Landroidx/fragment/app/z0;->e:I

    invoke-virtual {v6}, Landroidx/fragment/app/z0;->k()V

    iput-boolean v12, v5, Landroidx/fragment/app/K;->mRemoving:Z

    invoke-virtual {v6}, Landroidx/fragment/app/z0;->k()V

    goto :goto_4

    :cond_d
    iget-object v2, v1, Landroidx/fragment/app/s0;->e:Ljava/util/ArrayList;

    iget-object v4, v3, Landroidx/fragment/app/A0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_10

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/A0;->b(Ljava/lang/String;)Landroidx/fragment/app/K;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-static {v10}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v7

    if-eqz v7, :cond_e

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "restoreSaveState: added ("

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v3, v5}, Landroidx/fragment/app/A0;->a(Landroidx/fragment/app/K;)V

    goto :goto_5

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instantiated fragment for ("

    const-string v2, ")"

    invoke-static {v1, v4, v2}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v2, v1, Landroidx/fragment/app/s0;->f:[Landroidx/fragment/app/c;

    if-eqz v2, :cond_17

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Landroidx/fragment/app/s0;->f:[Landroidx/fragment/app/c;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    move v2, v6

    :goto_6
    iget-object v3, v1, Landroidx/fragment/app/s0;->f:[Landroidx/fragment/app/c;

    array-length v4, v3

    if-ge v2, v4, :cond_18

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/fragment/app/a;

    invoke-direct {v4, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/p0;)V

    move v5, v6

    move v7, v5

    :goto_7
    iget-object v8, v3, Landroidx/fragment/app/c;->d:[I

    array-length v8, v8

    if-ge v5, v8, :cond_13

    new-instance v8, Landroidx/fragment/app/B0;

    invoke-direct {v8}, Landroidx/fragment/app/B0;-><init>()V

    iget-object v13, v3, Landroidx/fragment/app/c;->d:[I

    add-int/lit8 v14, v5, 0x1

    aget v5, v13, v5

    iput v5, v8, Landroidx/fragment/app/B0;->a:I

    invoke-static {v10}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "Instantiate "

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " op #"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " base fragment #"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v3, Landroidx/fragment/app/c;->d:[I

    aget v13, v13, v14

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v5

    iget-object v13, v3, Landroidx/fragment/app/c;->f:[I

    aget v13, v13, v7

    aget-object v5, v5, v13

    iput-object v5, v8, Landroidx/fragment/app/B0;->h:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v5

    iget-object v13, v3, Landroidx/fragment/app/c;->g:[I

    aget v13, v13, v7

    aget-object v5, v5, v13

    iput-object v5, v8, Landroidx/fragment/app/B0;->i:Landroidx/lifecycle/Lifecycle$State;

    iget-object v5, v3, Landroidx/fragment/app/c;->d:[I

    add-int/lit8 v13, v14, 0x1

    aget v14, v5, v14

    if-eqz v14, :cond_12

    move v14, v12

    goto :goto_8

    :cond_12
    move v14, v6

    :goto_8
    iput-boolean v14, v8, Landroidx/fragment/app/B0;->c:Z

    add-int/lit8 v14, v13, 0x1

    aget v13, v5, v13

    iput v13, v8, Landroidx/fragment/app/B0;->d:I

    add-int/lit8 v15, v14, 0x1

    aget v14, v5, v14

    iput v14, v8, Landroidx/fragment/app/B0;->e:I

    add-int/lit8 v16, v15, 0x1

    aget v15, v5, v15

    iput v15, v8, Landroidx/fragment/app/B0;->f:I

    add-int/lit8 v17, v16, 0x1

    aget v5, v5, v16

    iput v5, v8, Landroidx/fragment/app/B0;->g:I

    iput v13, v4, Landroidx/fragment/app/a;->b:I

    iput v14, v4, Landroidx/fragment/app/a;->c:I

    iput v15, v4, Landroidx/fragment/app/a;->d:I

    iput v5, v4, Landroidx/fragment/app/a;->e:I

    invoke-virtual {v4, v8}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/B0;)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v17

    goto/16 :goto_7

    :cond_13
    iget v5, v3, Landroidx/fragment/app/c;->h:I

    iput v5, v4, Landroidx/fragment/app/a;->f:I

    iget-object v5, v3, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    iput-object v5, v4, Landroidx/fragment/app/a;->i:Ljava/lang/String;

    iput-boolean v12, v4, Landroidx/fragment/app/a;->g:Z

    iget v5, v3, Landroidx/fragment/app/c;->k:I

    iput v5, v4, Landroidx/fragment/app/a;->j:I

    iget-object v5, v3, Landroidx/fragment/app/c;->l:Ljava/lang/CharSequence;

    iput-object v5, v4, Landroidx/fragment/app/a;->k:Ljava/lang/CharSequence;

    iget v5, v3, Landroidx/fragment/app/c;->m:I

    iput v5, v4, Landroidx/fragment/app/a;->l:I

    iget-object v5, v3, Landroidx/fragment/app/c;->n:Ljava/lang/CharSequence;

    iput-object v5, v4, Landroidx/fragment/app/a;->m:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroidx/fragment/app/c;->o:Ljava/util/ArrayList;

    iput-object v5, v4, Landroidx/fragment/app/a;->n:Ljava/util/ArrayList;

    iget-object v5, v3, Landroidx/fragment/app/c;->p:Ljava/util/ArrayList;

    iput-object v5, v4, Landroidx/fragment/app/a;->o:Ljava/util/ArrayList;

    iget-boolean v5, v3, Landroidx/fragment/app/c;->q:Z

    iput-boolean v5, v4, Landroidx/fragment/app/a;->p:Z

    iget v5, v3, Landroidx/fragment/app/c;->j:I

    iput v5, v4, Landroidx/fragment/app/a;->t:I

    move v5, v6

    :goto_9
    iget-object v7, v3, Landroidx/fragment/app/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_15

    iget-object v7, v3, Landroidx/fragment/app/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_14

    iget-object v8, v4, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/B0;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/p0;->A(Ljava/lang/String;)Landroidx/fragment/app/K;

    move-result-object v7

    iput-object v7, v8, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_15
    invoke-virtual {v4, v12}, Landroidx/fragment/app/a;->c(I)V

    invoke-static {v10}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "restoreAllState: back stack #"

    const-string v5, " (index "

    invoke-static {v3, v2, v5}, Landroidx/fragment/app/d0;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v4, Landroidx/fragment/app/a;->t:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroidx/fragment/app/N0;

    invoke-direct {v3}, Landroidx/fragment/app/N0;-><init>()V

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, "  "

    invoke-virtual {v4, v3, v5, v6}, Landroidx/fragment/app/a;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    :cond_16
    iget-object v3, v0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_17
    iput-object v8, v0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    :cond_18
    iget-object v2, v0, Landroidx/fragment/app/p0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v3, v1, Landroidx/fragment/app/s0;->g:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v1, Landroidx/fragment/app/s0;->h:Ljava/lang/String;

    if-eqz v2, :cond_19

    invoke-virtual {v0, v2}, Landroidx/fragment/app/p0;->A(Ljava/lang/String;)Landroidx/fragment/app/K;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/p0;->x:Landroidx/fragment/app/K;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/p0;->q(Landroidx/fragment/app/K;)V

    :cond_19
    iget-object v2, v1, Landroidx/fragment/app/s0;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_1a

    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_1a

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Landroidx/fragment/app/s0;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/e;

    iget-object v5, v0, Landroidx/fragment/app/p0;->j:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_1a
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v1, v1, Landroidx/fragment/app/s0;->k:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroidx/fragment/app/p0;->D:Ljava/util/ArrayDeque;

    return-void
.end method

.method public final U()Landroid/os/Bundle;
    .locals 13

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->e()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/U0;

    iget-boolean v5, v2, Landroidx/fragment/app/U0;->e:Z

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "FragmentManager"

    const-string v5, "SpecialEffectsController: Forcing postponed operations"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v3, v2, Landroidx/fragment/app/U0;->e:Z

    invoke-virtual {v2}, Landroidx/fragment/app/U0;->g()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/p0;->e()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/U0;

    invoke-virtual {v2}, Landroidx/fragment/app/U0;->i()V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/p0;->x(Z)Z

    iput-boolean v1, p0, Landroidx/fragment/app/p0;->F:Z

    iget-object v2, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iput-boolean v1, v2, Landroidx/fragment/app/u0;->i:Z

    iget-object v1, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v1, Landroidx/fragment/app/A0;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/z0;

    if-eqz v6, :cond_4

    iget-object v7, v6, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget-object v8, v7, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v6}, Landroidx/fragment/app/z0;->n()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v8, v6}, Landroidx/fragment/app/A0;->i(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v6, v7, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Saved state of "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FragmentManager"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iget-object v1, v1, Landroidx/fragment/app/A0;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4}, Landroidx/fragment/app/p0;->H(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_6
    iget-object v5, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iget-object v6, v5, Landroidx/fragment/app/A0;->a:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v7, v5, Landroidx/fragment/app/A0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    monitor-exit v6

    move-object v7, v8

    goto :goto_4

    :cond_7
    new-instance v7, Ljava/util/ArrayList;

    iget-object v9, v5, Landroidx/fragment/app/A0;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, v5, Landroidx/fragment/app/A0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/K;

    iget-object v10, v9, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveAllState: adding fragment ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    iget-object v5, p0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    new-array v8, v5, [Landroidx/fragment/app/c;

    :goto_5
    if-ge v3, v5, :cond_b

    new-instance v6, Landroidx/fragment/app/c;

    iget-object v9, p0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/a;

    invoke-direct {v6, v9}, Landroidx/fragment/app/c;-><init>(Landroidx/fragment/app/a;)V

    aput-object v6, v8, v3

    invoke-static {v4}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "FragmentManager"

    const-string v9, "saveAllState: adding back stack #"

    const-string v10, ": "

    invoke-static {v9, v3, v10}, Landroidx/fragment/app/d0;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    new-instance v3, Landroidx/fragment/app/s0;

    invoke-direct {v3}, Landroidx/fragment/app/s0;-><init>()V

    iput-object v2, v3, Landroidx/fragment/app/s0;->d:Ljava/util/ArrayList;

    iput-object v7, v3, Landroidx/fragment/app/s0;->e:Ljava/util/ArrayList;

    iput-object v8, v3, Landroidx/fragment/app/s0;->f:[Landroidx/fragment/app/c;

    iget-object v2, p0, Landroidx/fragment/app/p0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iput v2, v3, Landroidx/fragment/app/s0;->g:I

    iget-object v2, p0, Landroidx/fragment/app/p0;->x:Landroidx/fragment/app/K;

    if-eqz v2, :cond_c

    iget-object v2, v2, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    iput-object v2, v3, Landroidx/fragment/app/s0;->h:Ljava/lang/String;

    :cond_c
    iget-object v2, v3, Landroidx/fragment/app/s0;->i:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/p0;->j:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v3, Landroidx/fragment/app/s0;->j:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/p0;->j:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/p0;->D:Ljava/util/ArrayDeque;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v3, Landroidx/fragment/app/s0;->k:Ljava/util/ArrayList;

    const-string v2, "state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Landroidx/fragment/app/p0;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "result_"

    invoke-static {v4, v3}, Landroidx/constraintlayout/widget/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroidx/fragment/app/p0;->k:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "fragment_"

    invoke-static {v3, v2}, Landroidx/constraintlayout/widget/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_7

    :cond_e
    :goto_8
    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final V()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iget-object v1, v1, Landroidx/fragment/app/W;->f:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/p0;->N:Landroidx/fragment/app/i0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iget-object v1, v1, Landroidx/fragment/app/W;->f:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/p0;->N:Landroidx/fragment/app/i0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d0()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final W(Landroidx/fragment/app/K;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->D(Landroidx/fragment/app/K;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p1, p0, Landroidx/fragment/app/FragmentContainerView;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentContainerView;->g:Z

    :cond_0
    return-void
.end method

.method public final X(Landroidx/fragment/app/K;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->A(Ljava/lang/String;)Landroidx/fragment/app/K;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/K;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/K;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final Y(Landroidx/fragment/app/K;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->A(Ljava/lang/String;)Landroidx/fragment/app/K;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/K;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/p0;->x:Landroidx/fragment/app/K;

    iput-object p1, p0, Landroidx/fragment/app/p0;->x:Landroidx/fragment/app/K;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->q(Landroidx/fragment/app/K;)V

    iget-object p1, p0, Landroidx/fragment/app/p0;->x:Landroidx/fragment/app/K;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->q(Landroidx/fragment/app/K;)V

    return-void
.end method

.method public final Z(Landroidx/fragment/app/K;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->D(Landroidx/fragment/app/K;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/K;->getEnterAnim()I

    move-result v0

    invoke-virtual {p1}, Landroidx/fragment/app/K;->getExitAnim()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroidx/fragment/app/K;->getPopEnterAnim()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroidx/fragment/app/K;->getPopExitAnim()I

    move-result v1

    add-int/2addr v1, v0

    if-lez v1, :cond_1

    const v0, 0x7f0a03d0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/K;

    invoke-virtual {p1}, Landroidx/fragment/app/K;->getPopDirection()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->setPopDirection(Z)V

    :cond_1
    return-void
.end method

.method public final a(Landroidx/fragment/app/K;)Landroidx/fragment/app/z0;
    .locals 3

    iget-object v0, p1, Landroidx/fragment/app/K;->mPreviousWho:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, LT/c;->d(Landroidx/fragment/app/K;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->f(Landroidx/fragment/app/K;)Landroidx/fragment/app/z0;

    move-result-object v0

    iput-object p0, p1, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    iget-object v1, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/A0;->g(Landroidx/fragment/app/z0;)V

    iget-boolean v2, p1, Landroidx/fragment/app/K;->mDetached:Z

    if-nez v2, :cond_3

    invoke-virtual {v1, p1}, Landroidx/fragment/app/A0;->a(Landroidx/fragment/app/K;)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/K;->mRemoving:Z

    iget-object v2, p1, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-nez v2, :cond_2

    iput-boolean v1, p1, Landroidx/fragment/app/K;->mHiddenChanged:Z

    :cond_2
    invoke-static {p1}, Landroidx/fragment/app/p0;->I(Landroidx/fragment/app/K;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/p0;->E:Z

    :cond_3
    return-object v0
.end method

.method public final b(Landroidx/fragment/app/W;Landroidx/fragment/app/U;Landroidx/fragment/app/K;)V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    if-nez v0, :cond_10

    iput-object p1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iput-object p2, p0, Landroidx/fragment/app/p0;->v:Landroidx/fragment/app/U;

    iput-object p3, p0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    iget-object p2, p0, Landroidx/fragment/app/p0;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p3, :cond_0

    new-instance v0, Landroidx/fragment/app/j0;

    invoke-direct {v0, p3}, Landroidx/fragment/app/j0;-><init>(Landroidx/fragment/app/K;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/v0;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/v0;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d0()V

    :cond_2
    instance-of p2, p1, Landroidx/activity/t;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Landroidx/activity/t;

    invoke-interface {p2}, Landroidx/activity/t;->getOnBackPressedDispatcher()Landroidx/activity/s;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/p0;->g:Landroidx/activity/s;

    if-eqz p3, :cond_3

    move-object p2, p3

    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/p0;->h:Landroidx/fragment/app/f0;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/s;->a(Landroidx/lifecycle/q;Landroidx/fragment/app/f0;)V

    :cond_4
    const/4 p2, 0x0

    if-eqz p3, :cond_6

    iget-object p1, p3, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    iget-object p1, p1, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iget-object v0, p1, Landroidx/fragment/app/u0;->e:Ljava/util/HashMap;

    iget-object v1, p3, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/u0;

    if-nez v1, :cond_5

    new-instance v1, Landroidx/fragment/app/u0;

    iget-boolean p1, p1, Landroidx/fragment/app/u0;->g:Z

    invoke-direct {v1, p1}, Landroidx/fragment/app/u0;-><init>(Z)V

    iget-object p1, p3, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iput-object v1, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    goto :goto_1

    :cond_6
    instance-of v0, p1, Landroidx/lifecycle/V;

    if-eqz v0, :cond_7

    check-cast p1, Landroidx/lifecycle/V;

    invoke-interface {p1}, Landroidx/lifecycle/V;->getViewModelStore()Landroidx/lifecycle/U;

    move-result-object p1

    new-instance v0, Landroidx/lifecycle/T;

    sget-object v1, Landroidx/fragment/app/u0;->j:Landroidx/fragment/app/t0;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/T;-><init>(Landroidx/lifecycle/U;Landroidx/lifecycle/Q;)V

    const-class p1, Landroidx/fragment/app/u0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/T;->a(Ljava/lang/Class;)Landroidx/lifecycle/N;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/u0;

    iput-object p1, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    goto :goto_1

    :cond_7
    new-instance p1, Landroidx/fragment/app/u0;

    invoke-direct {p1, p2}, Landroidx/fragment/app/u0;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->L()Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/u0;->i:Z

    iget-object p1, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iget-object v0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iput-object p1, v0, Landroidx/fragment/app/A0;->d:Landroidx/fragment/app/u0;

    iget-object p1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of v0, p1, La0/g;

    if-eqz v0, :cond_8

    if-nez p3, :cond_8

    check-cast p1, La0/g;

    invoke-interface {p1}, La0/g;->getSavedStateRegistry()La0/e;

    move-result-object p1

    new-instance v0, Landroidx/fragment/app/c0;

    invoke-direct {v0, p0}, Landroidx/fragment/app/c0;-><init>(Landroidx/fragment/app/p0;)V

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, La0/e;->c(Ljava/lang/String;La0/d;)V

    invoke-virtual {p1, v1}, La0/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->T(Landroid/os/Parcelable;)V

    :cond_8
    iget-object p1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of v0, p1, Landroidx/activity/result/i;

    if-eqz v0, :cond_a

    check-cast p1, Landroidx/activity/result/i;

    invoke-interface {p1}, Landroidx/activity/result/i;->getActivityResultRegistry()Landroidx/activity/result/h;

    move-result-object p1

    if-eqz p3, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    const-string v0, ""

    :goto_2
    const-string v1, "FragmentManager:"

    invoke-static {v1, v0}, Landroidx/constraintlayout/widget/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartActivityForResult"

    invoke-static {v0, v1}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc/d;

    invoke-direct {v2}, Lc/d;-><init>()V

    new-instance v3, Landroidx/fragment/app/e0;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Landroidx/fragment/app/e0;-><init>(Landroidx/fragment/app/p0;I)V

    invoke-virtual {p1, v1, v2, v3}, Landroidx/activity/result/h;->d(Ljava/lang/String;Lc/b;Landroidx/fragment/app/e0;)Landroidx/activity/result/e;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/p0;->A:Landroidx/activity/result/e;

    const-string v1, "StartIntentSenderForResult"

    invoke-static {v0, v1}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/fragment/app/k0;

    invoke-direct {v2}, Landroidx/fragment/app/k0;-><init>()V

    new-instance v3, Landroidx/fragment/app/e0;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroidx/fragment/app/e0;-><init>(Landroidx/fragment/app/p0;I)V

    invoke-virtual {p1, v1, v2, v3}, Landroidx/activity/result/h;->d(Ljava/lang/String;Lc/b;Landroidx/fragment/app/e0;)Landroidx/activity/result/e;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/p0;->B:Landroidx/activity/result/e;

    const-string v1, "RequestPermissions"

    invoke-static {v0, v1}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lc/c;

    invoke-direct {v1}, Lc/c;-><init>()V

    new-instance v2, Landroidx/fragment/app/e0;

    invoke-direct {v2, p0, p2}, Landroidx/fragment/app/e0;-><init>(Landroidx/fragment/app/p0;I)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/h;->d(Ljava/lang/String;Lc/b;Landroidx/fragment/app/e0;)Landroidx/activity/result/e;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/p0;->C:Landroidx/activity/result/e;

    :cond_a
    iget-object p1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of p2, p1, LC/c;

    if-eqz p2, :cond_b

    check-cast p1, LC/c;

    iget-object p2, p0, Landroidx/fragment/app/p0;->o:Landroidx/fragment/app/b0;

    invoke-interface {p1, p2}, LC/c;->addOnConfigurationChangedListener(LL/a;)V

    :cond_b
    iget-object p1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of p2, p1, LC/d;

    if-eqz p2, :cond_c

    check-cast p1, LC/d;

    iget-object p2, p0, Landroidx/fragment/app/p0;->p:Landroidx/fragment/app/b0;

    invoke-interface {p1, p2}, LC/d;->addOnTrimMemoryListener(LL/a;)V

    :cond_c
    iget-object p1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of p2, p1, LB/i;

    if-eqz p2, :cond_d

    check-cast p1, LB/i;

    iget-object p2, p0, Landroidx/fragment/app/p0;->q:Landroidx/fragment/app/b0;

    invoke-interface {p1, p2}, LB/i;->addOnMultiWindowModeChangedListener(LL/a;)V

    :cond_d
    iget-object p1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of p2, p1, LB/j;

    if-eqz p2, :cond_e

    check-cast p1, LB/j;

    iget-object p2, p0, Landroidx/fragment/app/p0;->r:Landroidx/fragment/app/b0;

    invoke-interface {p1, p2}, LB/j;->addOnPictureInPictureModeChangedListener(LL/a;)V

    :cond_e
    iget-object p1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of p2, p1, Landroidx/core/view/f;

    if-eqz p2, :cond_f

    if-nez p3, :cond_f

    check-cast p1, Landroidx/core/view/f;

    iget-object p0, p0, Landroidx/fragment/app/p0;->s:Landroidx/fragment/app/g0;

    invoke-interface {p1, p0}, Landroidx/core/view/f;->addMenuProvider(Landroidx/core/view/k;)V

    :cond_f
    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b0()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {v0}, Landroidx/fragment/app/A0;->d()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/z0;

    iget-object v2, v1, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget-boolean v3, v2, Landroidx/fragment/app/K;->mDeferStart:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroidx/fragment/app/p0;->b:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/p0;->I:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/K;->mDeferStart:Z

    invoke-virtual {v1}, Landroidx/fragment/app/z0;->k()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(Landroidx/fragment/app/K;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "attach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/K;->mDetached:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/K;->mDetached:Z

    iget-boolean v1, p1, Landroidx/fragment/app/K;->mAdded:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/A0;->a(Landroidx/fragment/app/K;)V

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add from attach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/p0;->I(Landroidx/fragment/app/K;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/p0;->E:Z

    :cond_2
    return-void
.end method

.method public final c0(Ljava/lang/RuntimeException;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroidx/fragment/app/N0;

    invoke-direct {v0}, Landroidx/fragment/app/N0;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    const-string v3, "  "

    const-string v4, "Failed dumping state"

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-array p0, v5, [Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroidx/fragment/app/W;->d(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v1, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v2, v0}, Landroidx/fragment/app/p0;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {v1, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    throw p1
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->b:Z

    iget-object v0, p0, Landroidx/fragment/app/p0;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Landroidx/fragment/app/p0;->J:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final d0()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/p0;->h:Landroidx/fragment/app/f0;

    iput-boolean v2, p0, Landroidx/activity/p;->a:Z

    iget-object p0, p0, Landroidx/activity/p;->c:Lm3/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lm3/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/fragment/app/p0;->h:Landroidx/fragment/app/f0;

    iget-object v1, p0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-lez v1, :cond_3

    iget-object p0, p0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    invoke-static {p0}, Landroidx/fragment/app/p0;->K(Landroidx/fragment/app/K;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iput-boolean v2, v0, Landroidx/activity/p;->a:Z

    iget-object p0, v0, Landroidx/activity/p;->c:Lm3/a;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lm3/a;->invoke()Ljava/lang/Object;

    :cond_4
    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final e()Ljava/util/Set;
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {v1}, Landroidx/fragment/app/A0;->d()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/z0;

    iget-object v2, v2, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget-object v2, v2, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->F()Landroidx/fragment/app/e0;

    move-result-object v3

    const-string v4, "factory"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0a0318

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroidx/fragment/app/U0;

    if-eqz v5, :cond_1

    check-cast v4, Landroidx/fragment/app/U0;

    goto :goto_1

    :cond_1
    new-instance v4, Landroidx/fragment/app/q;

    invoke-direct {v4, v2}, Landroidx/fragment/app/q;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final f(Landroidx/fragment/app/K;)Landroidx/fragment/app/z0;
    .locals 3

    iget-object v0, p1, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iget-object v2, v1, Landroidx/fragment/app/A0;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/z0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/fragment/app/z0;

    iget-object v2, p0, Landroidx/fragment/app/p0;->m:Landroidx/fragment/app/a0;

    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/z0;-><init>(Landroidx/fragment/app/a0;Landroidx/fragment/app/A0;Landroidx/fragment/app/K;)V

    iget-object p1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iget-object p1, p1, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/z0;->l(Ljava/lang/ClassLoader;)V

    iget p0, p0, Landroidx/fragment/app/p0;->t:I

    iput p0, v0, Landroidx/fragment/app/z0;->e:I

    return-object v0
.end method

.method public final g(Landroidx/fragment/app/K;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/K;->mDetached:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/fragment/app/K;->mDetached:Z

    iget-boolean v3, p1, Landroidx/fragment/app/K;->mAdded:Z

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "remove from detach: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iget-object v2, v0, Landroidx/fragment/app/A0;->a:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/A0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/K;->mAdded:Z

    invoke-static {p1}, Landroidx/fragment/app/p0;->I(Landroidx/fragment/app/K;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/fragment/app/p0;->E:Z

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->Z(Landroidx/fragment/app/K;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final h(ZLandroid/content/res/Configuration;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of v0, v0, LC/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->c0(Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {p0}, Landroidx/fragment/app/A0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroidx/fragment/app/K;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/p0;->h(ZLandroid/content/res/Configuration;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final i(Landroid/view/MenuItem;)Z
    .locals 3

    iget v0, p0, Landroidx/fragment/app/p0;->t:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {p0}, Landroidx/fragment/app/A0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/K;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public final j(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    iget v0, p0, Landroidx/fragment/app/p0;->t:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {v0}, Landroidx/fragment/app/A0;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/K;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/fragment/app/K;->isMenuVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/K;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/p0;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/p0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Landroidx/fragment/app/p0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/K;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/K;->onDestroyOptionsMenu()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iput-object v3, p0, Landroidx/fragment/app/p0;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public final k()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->H:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->x(Z)Z

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->e()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/U0;

    invoke-virtual {v2}, Landroidx/fragment/app/U0;->i()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of v2, v1, Landroidx/lifecycle/V;

    iget-object v3, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    if-eqz v2, :cond_1

    iget-object v0, v3, Landroidx/fragment/app/A0;->d:Landroidx/fragment/app/u0;

    iget-boolean v0, v0, Landroidx/fragment/app/u0;->h:Z

    goto :goto_1

    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/p0;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/e;

    iget-object v1, v1, Landroidx/fragment/app/e;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, v3, Landroidx/fragment/app/A0;->d:Landroidx/fragment/app/u0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x3

    invoke-static {v5}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Clearing non-config state for saved state of Fragment "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FragmentManager"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v4, v2}, Landroidx/fragment/app/u0;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->t(I)V

    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of v1, v0, LC/d;

    if-eqz v1, :cond_6

    check-cast v0, LC/d;

    iget-object v1, p0, Landroidx/fragment/app/p0;->p:Landroidx/fragment/app/b0;

    invoke-interface {v0, v1}, LC/d;->removeOnTrimMemoryListener(LL/a;)V

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of v1, v0, LC/c;

    if-eqz v1, :cond_7

    check-cast v0, LC/c;

    iget-object v1, p0, Landroidx/fragment/app/p0;->o:Landroidx/fragment/app/b0;

    invoke-interface {v0, v1}, LC/c;->removeOnConfigurationChangedListener(LL/a;)V

    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of v1, v0, LB/i;

    if-eqz v1, :cond_8

    check-cast v0, LB/i;

    iget-object v1, p0, Landroidx/fragment/app/p0;->q:Landroidx/fragment/app/b0;

    invoke-interface {v0, v1}, LB/i;->removeOnMultiWindowModeChangedListener(LL/a;)V

    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of v1, v0, LB/j;

    if-eqz v1, :cond_9

    check-cast v0, LB/j;

    iget-object v1, p0, Landroidx/fragment/app/p0;->r:Landroidx/fragment/app/b0;

    invoke-interface {v0, v1}, LB/j;->removeOnPictureInPictureModeChangedListener(LL/a;)V

    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of v1, v0, Landroidx/core/view/f;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-nez v1, :cond_a

    check-cast v0, Landroidx/core/view/f;

    iget-object v1, p0, Landroidx/fragment/app/p0;->s:Landroidx/fragment/app/g0;

    invoke-interface {v0, v1}, Landroidx/core/view/f;->removeMenuProvider(Landroidx/core/view/k;)V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iput-object v0, p0, Landroidx/fragment/app/p0;->v:Landroidx/fragment/app/U;

    iput-object v0, p0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    iget-object v1, p0, Landroidx/fragment/app/p0;->g:Landroidx/activity/s;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/fragment/app/p0;->h:Landroidx/fragment/app/f0;

    iget-object v1, v1, Landroidx/activity/p;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/a;

    invoke-interface {v2}, Landroidx/activity/a;->cancel()V

    goto :goto_3

    :cond_b
    iput-object v0, p0, Landroidx/fragment/app/p0;->g:Landroidx/activity/s;

    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/p0;->A:Landroidx/activity/result/e;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/activity/result/e;->b()V

    iget-object v0, p0, Landroidx/fragment/app/p0;->B:Landroidx/activity/result/e;

    invoke-virtual {v0}, Landroidx/activity/result/e;->b()V

    iget-object p0, p0, Landroidx/fragment/app/p0;->C:Landroidx/activity/result/e;

    invoke-virtual {p0}, Landroidx/activity/result/e;->b()V

    :cond_d
    return-void
.end method

.method public final l(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of v0, v0, LC/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->c0(Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {p0}, Landroidx/fragment/app/A0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/K;->performLowMemory()V

    if-eqz p1, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/p0;->l(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final m(ZZ)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of v0, v0, LB/i;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->c0(Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {p0}, Landroidx/fragment/app/A0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/fragment/app/K;->performMultiWindowModeChanged(Z)V

    if-eqz p2, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/p0;->m(ZZ)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {p0}, Landroidx/fragment/app/A0;->e()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/K;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/K;->onHiddenChanged(Z)V

    iget-object v0, v0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {v0}, Landroidx/fragment/app/p0;->n()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final o(Landroid/view/MenuItem;)Z
    .locals 3

    iget v0, p0, Landroidx/fragment/app/p0;->t:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {p0}, Landroidx/fragment/app/A0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/K;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public final p(Landroid/view/Menu;)V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/p0;->t:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {p0}, Landroidx/fragment/app/A0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/K;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final q(Landroidx/fragment/app/K;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->A(Ljava/lang/String;)Landroidx/fragment/app/K;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/K;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/K;->performPrimaryNavigationFragmentChanged()V

    :cond_0
    return-void
.end method

.method public final r(ZZ)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    instance-of v0, v0, LB/j;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->c0(Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {p0}, Landroidx/fragment/app/A0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/fragment/app/K;->performPictureInPictureModeChanged(Z)V

    if-eqz p2, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/p0;->r(ZZ)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final s(Landroid/view/Menu;)Z
    .locals 4

    iget v0, p0, Landroidx/fragment/app/p0;->t:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {p0}, Landroidx/fragment/app/A0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/K;->isMenuVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/K;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final t(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/p0;->b:Z

    iget-object v2, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iget-object v2, v2, Landroidx/fragment/app/A0;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/z0;

    if-eqz v3, :cond_0

    iput p1, v3, Landroidx/fragment/app/z0;->e:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/p0;->M(IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->e()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/U0;

    invoke-virtual {v2}, Landroidx/fragment/app/U0;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/p0;->b:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->x(Z)Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/fragment/app/p0;->b:Z

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "    "

    invoke-static {p1, v0}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/fragment/app/A0;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Active Fragments:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/z0;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, p2, p3, p4}, Landroidx/fragment/app/K;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "null"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, v1, Landroidx/fragment/app/A0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v1, 0x0

    if-lez p4, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Added Fragments:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_1
    if-ge v2, p4, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/K;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/K;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/p0;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v1

    :goto_2
    if-ge p4, p2, :cond_3

    iget-object v2, p0, Landroidx/fragment/app/p0;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/K;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/K;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_3
    iget-object p2, p0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v1

    :goto_3
    if-ge p4, p2, :cond_4

    iget-object v2, p0, Landroidx/fragment/app/p0;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p3, v3}, Landroidx/fragment/app/a;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Back Stack Index: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Landroidx/fragment/app/p0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object p4, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge v1, p4, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/n0;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/p0;->v:Landroidx/fragment/app/U;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    if-eqz p2, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/p0;->t:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/p0;->F:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/p0;->G:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/p0;->H:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Landroidx/fragment/app/p0;->E:Z

    if-eqz p2, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/fragment/app/p0;->E:Z

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final v(Landroidx/fragment/app/n0;Z)V
    .locals 2

    if-nez p2, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/fragment/app/p0;->H:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has not been attached to a host."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/p0;->L()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Activity has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->V()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final w(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/p0;->b:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/fragment/app/p0;->H:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has not been attached to a host."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iget-object v1, v1, Landroidx/fragment/app/W;->f:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->L()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/p0;->J:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/p0;->J:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/p0;->K:Ljava/util/ArrayList;

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called from main thread of fragment host"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager is already executing transactions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x(Z)Z
    .locals 8

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->w(Z)V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/p0;->J:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/p0;->K:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v6, p1

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v4, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, p1

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v7, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/n0;

    invoke-interface {v7, v1, v2}, Landroidx/fragment/app/n0;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v1, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iget-object v1, v1, Landroidx/fragment/app/W;->f:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/p0;->N:Landroidx/fragment/app/i0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    if-eqz v6, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->b:Z

    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/p0;->J:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/p0;->K:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/p0;->S(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d()V

    throw p1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d0()V

    iget-boolean v1, p0, Landroidx/fragment/app/p0;->I:Z

    if-eqz v1, :cond_3

    iput-boolean p1, p0, Landroidx/fragment/app/p0;->I:Z

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->b0()V

    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iget-object p0, p0, Landroidx/fragment/app/A0;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return v0

    :catchall_1
    move-exception p1

    :try_start_4
    iget-object v0, p0, Landroidx/fragment/app/p0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iget-object v0, v0, Landroidx/fragment/app/W;->f:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/fragment/app/p0;->N:Landroidx/fragment/app/i0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw p1

    :catchall_2
    move-exception p0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final y(Landroidx/fragment/app/n0;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/p0;->H:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/p0;->w(Z)V

    iget-object p2, p0, Landroidx/fragment/app/p0;->J:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/p0;->K:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/n0;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/p0;->b:Z

    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/p0;->J:Ljava/util/ArrayList;

    iget-object p2, p0, Landroidx/fragment/app/p0;->K:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/p0;->S(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d()V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d0()V

    iget-boolean p1, p0, Landroidx/fragment/app/p0;->I:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/p0;->I:Z

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->b0()V

    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    iget-object p0, p0, Landroidx/fragment/app/A0;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    iget-boolean v5, v5, Landroidx/fragment/app/a;->p:Z

    iget-object v6, v0, Landroidx/fragment/app/p0;->L:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Landroidx/fragment/app/p0;->L:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v6, v0, Landroidx/fragment/app/p0;->L:Ljava/util/ArrayList;

    iget-object v7, v0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {v7}, Landroidx/fragment/app/A0;->f()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v0, Landroidx/fragment/app/p0;->x:Landroidx/fragment/app/K;

    move v9, v3

    const/4 v10, 0x0

    :goto_1
    const/4 v13, 0x1

    if-ge v9, v4, :cond_13

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/a;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_d

    iget-object v15, v0, Landroidx/fragment/app/p0;->L:Ljava/util/ArrayList;

    const/4 v8, 0x0

    :goto_2
    iget-object v12, v14, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_c

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/B0;

    iget v3, v11, Landroidx/fragment/app/B0;->a:I

    if-eq v3, v13, :cond_b

    const/4 v13, 0x2

    const/16 v2, 0x9

    if-eq v3, v13, :cond_5

    const/4 v13, 0x3

    if-eq v3, v13, :cond_3

    const/4 v13, 0x6

    if-eq v3, v13, :cond_3

    const/4 v13, 0x7

    if-eq v3, v13, :cond_2

    const/16 v13, 0x8

    if-eq v3, v13, :cond_1

    goto :goto_3

    :cond_1
    new-instance v3, Landroidx/fragment/app/B0;

    invoke-direct {v3, v2, v6}, Landroidx/fragment/app/B0;-><init>(ILandroidx/fragment/app/K;)V

    invoke-virtual {v12, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v11, Landroidx/fragment/app/B0;->c:Z

    add-int/lit8 v8, v8, 0x1

    iget-object v6, v11, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    goto :goto_3

    :cond_2
    move-object/from16 v19, v7

    const/4 v1, 0x1

    goto/16 :goto_6

    :cond_3
    iget-object v3, v11, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v11, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    if-ne v3, v6, :cond_4

    new-instance v6, Landroidx/fragment/app/B0;

    invoke-direct {v6, v3, v2}, Landroidx/fragment/app/B0;-><init>(Landroidx/fragment/app/K;I)V

    invoke-virtual {v12, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v19, v7

    const/4 v1, 0x1

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_4
    :goto_3
    move-object/from16 v19, v7

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_5
    iget-object v3, v11, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    iget v13, v3, Landroidx/fragment/app/K;->mContainerId:I

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, -0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v2, v17

    const/16 v17, 0x0

    :goto_4
    if-ltz v2, :cond_9

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v7

    move-object/from16 v7, v18

    check-cast v7, Landroidx/fragment/app/K;

    iget v1, v7, Landroidx/fragment/app/K;->mContainerId:I

    if-ne v1, v13, :cond_8

    if-ne v7, v3, :cond_6

    const/4 v1, 0x1

    const/16 v17, 0x1

    goto :goto_5

    :cond_6
    if-ne v7, v6, :cond_7

    new-instance v1, Landroidx/fragment/app/B0;

    const/16 v6, 0x9

    invoke-direct {v1, v6, v7}, Landroidx/fragment/app/B0;-><init>(ILandroidx/fragment/app/K;)V

    invoke-virtual {v12, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    :cond_7
    new-instance v1, Landroidx/fragment/app/B0;

    move-object/from16 v18, v6

    const/4 v6, 0x3

    invoke-direct {v1, v6, v7}, Landroidx/fragment/app/B0;-><init>(ILandroidx/fragment/app/K;)V

    iget v6, v11, Landroidx/fragment/app/B0;->d:I

    iput v6, v1, Landroidx/fragment/app/B0;->d:I

    iget v6, v11, Landroidx/fragment/app/B0;->f:I

    iput v6, v1, Landroidx/fragment/app/B0;->f:I

    iget v6, v11, Landroidx/fragment/app/B0;->e:I

    iput v6, v1, Landroidx/fragment/app/B0;->e:I

    iget v6, v11, Landroidx/fragment/app/B0;->g:I

    iput v6, v1, Landroidx/fragment/app/B0;->g:I

    invoke-virtual {v12, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    add-int/2addr v8, v1

    move-object/from16 v6, v18

    goto :goto_5

    :cond_8
    const/4 v1, 0x1

    :goto_5
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v1, p1

    move-object/from16 v7, v19

    goto :goto_4

    :cond_9
    move-object/from16 v19, v7

    const/4 v1, 0x1

    if-eqz v17, :cond_a

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    :cond_a
    iput v1, v11, Landroidx/fragment/app/B0;->a:I

    iput-boolean v1, v11, Landroidx/fragment/app/B0;->c:Z

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    move-object/from16 v19, v7

    move v1, v13

    :goto_6
    iget-object v2, v11, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v8, v1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v13, v1

    move-object/from16 v7, v19

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_c
    move-object/from16 v19, v7

    goto :goto_a

    :cond_d
    move-object/from16 v19, v7

    move v1, v13

    iget-object v2, v0, Landroidx/fragment/app/p0;->L:Ljava/util/ArrayList;

    iget-object v3, v14, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    :goto_8
    if-ltz v7, :cond_10

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/B0;

    iget v11, v8, Landroidx/fragment/app/B0;->a:I

    if-eq v11, v1, :cond_f

    const/4 v1, 0x3

    if-eq v11, v1, :cond_e

    packed-switch v11, :pswitch_data_0

    goto :goto_9

    :pswitch_0
    iget-object v11, v8, Landroidx/fragment/app/B0;->h:Landroidx/lifecycle/Lifecycle$State;

    iput-object v11, v8, Landroidx/fragment/app/B0;->i:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_9

    :pswitch_1
    iget-object v6, v8, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    goto :goto_9

    :pswitch_2
    const/4 v6, 0x0

    goto :goto_9

    :cond_e
    :pswitch_3
    iget-object v8, v8, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    const/4 v1, 0x3

    :pswitch_4
    iget-object v8, v8, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v7, v7, -0x1

    const/4 v1, 0x1

    goto :goto_8

    :cond_10
    :goto_a
    if-nez v10, :cond_12

    iget-boolean v1, v14, Landroidx/fragment/app/a;->g:Z

    if-eqz v1, :cond_11

    goto :goto_b

    :cond_11
    const/4 v10, 0x0

    goto :goto_c

    :cond_12
    :goto_b
    const/4 v10, 0x1

    :goto_c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v7, v19

    goto/16 :goto_1

    :cond_13
    move-object/from16 v19, v7

    iget-object v1, v0, Landroidx/fragment/app/p0;->L:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v5, :cond_16

    iget v1, v0, Landroidx/fragment/app/p0;->t:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_16

    move/from16 v1, p3

    :goto_d
    if-ge v1, v4, :cond_16

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-object v3, v3, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/B0;

    iget-object v5, v5, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    if-eqz v5, :cond_14

    iget-object v6, v5, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-eqz v6, :cond_14

    invoke-virtual {v0, v5}, Landroidx/fragment/app/p0;->f(Landroidx/fragment/app/K;)Landroidx/fragment/app/z0;

    move-result-object v5

    move-object/from16 v6, v19

    invoke-virtual {v6, v5}, Landroidx/fragment/app/A0;->g(Landroidx/fragment/app/z0;)V

    goto :goto_f

    :cond_14
    move-object/from16 v6, v19

    :goto_f
    move-object/from16 v19, v6

    goto :goto_e

    :cond_15
    move-object/from16 v6, v19

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_16
    move-object/from16 v2, p1

    move/from16 v1, p3

    :goto_10
    if-ge v1, v4, :cond_1e

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    move-object/from16 v5, p2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "Unknown cmd: "

    if-eqz v6, :cond_1b

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroidx/fragment/app/a;->c(I)V

    iget-object v6, v3, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_11
    if-ltz v8, :cond_1d

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/B0;

    iget-object v11, v10, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    if-eqz v11, :cond_1a

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroidx/fragment/app/K;->mBeingSaved:Z

    invoke-virtual {v11, v9}, Landroidx/fragment/app/K;->setPopDirection(Z)V

    iget v9, v3, Landroidx/fragment/app/a;->f:I

    const/16 v12, 0x2002

    const/16 v13, 0x1001

    if-eq v9, v13, :cond_19

    if-eq v9, v12, :cond_18

    const/16 v12, 0x2005

    const/16 v13, 0x1004

    if-eq v9, v12, :cond_18

    const/16 v14, 0x1003

    if-eq v9, v14, :cond_17

    if-eq v9, v13, :cond_19

    const/4 v12, 0x0

    goto :goto_12

    :cond_17
    move v12, v14

    goto :goto_12

    :cond_18
    move v12, v13

    :cond_19
    :goto_12
    invoke-virtual {v11, v12}, Landroidx/fragment/app/K;->setNextTransition(I)V

    iget-object v9, v3, Landroidx/fragment/app/a;->o:Ljava/util/ArrayList;

    iget-object v12, v3, Landroidx/fragment/app/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v11, v9, v12}, Landroidx/fragment/app/K;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1a
    iget v9, v10, Landroidx/fragment/app/B0;->a:I

    iget-object v12, v3, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/p0;

    packed-switch v9, :pswitch_data_1

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v10, Landroidx/fragment/app/B0;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    iget-object v9, v10, Landroidx/fragment/app/B0;->h:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/p0;->X(Landroidx/fragment/app/K;Landroidx/lifecycle/Lifecycle$State;)V

    goto/16 :goto_13

    :pswitch_7
    invoke-virtual {v12, v11}, Landroidx/fragment/app/p0;->Y(Landroidx/fragment/app/K;)V

    goto :goto_13

    :pswitch_8
    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroidx/fragment/app/p0;->Y(Landroidx/fragment/app/K;)V

    goto :goto_13

    :pswitch_9
    iget v9, v10, Landroidx/fragment/app/B0;->d:I

    iget v13, v10, Landroidx/fragment/app/B0;->e:I

    iget v14, v10, Landroidx/fragment/app/B0;->f:I

    iget v10, v10, Landroidx/fragment/app/B0;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/K;->setAnimations(IIII)V

    const/4 v9, 0x1

    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/p0;->W(Landroidx/fragment/app/K;Z)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/p0;->g(Landroidx/fragment/app/K;)V

    goto :goto_13

    :pswitch_a
    iget v9, v10, Landroidx/fragment/app/B0;->d:I

    iget v13, v10, Landroidx/fragment/app/B0;->e:I

    iget v14, v10, Landroidx/fragment/app/B0;->f:I

    iget v10, v10, Landroidx/fragment/app/B0;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/K;->setAnimations(IIII)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/p0;->c(Landroidx/fragment/app/K;)V

    goto :goto_13

    :pswitch_b
    iget v9, v10, Landroidx/fragment/app/B0;->d:I

    iget v13, v10, Landroidx/fragment/app/B0;->e:I

    iget v14, v10, Landroidx/fragment/app/B0;->f:I

    iget v10, v10, Landroidx/fragment/app/B0;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/K;->setAnimations(IIII)V

    const/4 v9, 0x1

    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/p0;->W(Landroidx/fragment/app/K;Z)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/p0;->G(Landroidx/fragment/app/K;)V

    goto :goto_13

    :pswitch_c
    iget v9, v10, Landroidx/fragment/app/B0;->d:I

    iget v13, v10, Landroidx/fragment/app/B0;->e:I

    iget v14, v10, Landroidx/fragment/app/B0;->f:I

    iget v10, v10, Landroidx/fragment/app/B0;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/K;->setAnimations(IIII)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/fragment/app/p0;->a0(Landroidx/fragment/app/K;)V

    goto :goto_13

    :pswitch_d
    iget v9, v10, Landroidx/fragment/app/B0;->d:I

    iget v13, v10, Landroidx/fragment/app/B0;->e:I

    iget v14, v10, Landroidx/fragment/app/B0;->f:I

    iget v10, v10, Landroidx/fragment/app/B0;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/K;->setAnimations(IIII)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/p0;->a(Landroidx/fragment/app/K;)Landroidx/fragment/app/z0;

    goto :goto_13

    :pswitch_e
    iget v9, v10, Landroidx/fragment/app/B0;->d:I

    iget v13, v10, Landroidx/fragment/app/B0;->e:I

    iget v14, v10, Landroidx/fragment/app/B0;->f:I

    iget v10, v10, Landroidx/fragment/app/B0;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/K;->setAnimations(IIII)V

    const/4 v9, 0x1

    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/p0;->W(Landroidx/fragment/app/K;Z)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/p0;->R(Landroidx/fragment/app/K;)V

    :goto_13
    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x1

    goto/16 :goto_11

    :cond_1b
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroidx/fragment/app/a;->c(I)V

    iget-object v6, v3, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v8, :cond_1d

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/B0;

    iget-object v10, v9, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    if-eqz v10, :cond_1c

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/fragment/app/K;->mBeingSaved:Z

    invoke-virtual {v10, v11}, Landroidx/fragment/app/K;->setPopDirection(Z)V

    iget v11, v3, Landroidx/fragment/app/a;->f:I

    invoke-virtual {v10, v11}, Landroidx/fragment/app/K;->setNextTransition(I)V

    iget-object v11, v3, Landroidx/fragment/app/a;->n:Ljava/util/ArrayList;

    iget-object v13, v3, Landroidx/fragment/app/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v10, v11, v13}, Landroidx/fragment/app/K;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1c
    iget v11, v9, Landroidx/fragment/app/B0;->a:I

    iget-object v13, v3, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/p0;

    packed-switch v11, :pswitch_data_2

    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v9, Landroidx/fragment/app/B0;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    iget-object v9, v9, Landroidx/fragment/app/B0;->i:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/p0;->X(Landroidx/fragment/app/K;Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_15

    :pswitch_11
    const/4 v9, 0x0

    invoke-virtual {v13, v9}, Landroidx/fragment/app/p0;->Y(Landroidx/fragment/app/K;)V

    goto :goto_15

    :pswitch_12
    invoke-virtual {v13, v10}, Landroidx/fragment/app/p0;->Y(Landroidx/fragment/app/K;)V

    goto :goto_15

    :pswitch_13
    iget v11, v9, Landroidx/fragment/app/B0;->d:I

    iget v14, v9, Landroidx/fragment/app/B0;->e:I

    iget v15, v9, Landroidx/fragment/app/B0;->f:I

    iget v9, v9, Landroidx/fragment/app/B0;->g:I

    invoke-virtual {v10, v11, v14, v15, v9}, Landroidx/fragment/app/K;->setAnimations(IIII)V

    const/4 v9, 0x0

    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/p0;->W(Landroidx/fragment/app/K;Z)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/p0;->c(Landroidx/fragment/app/K;)V

    goto :goto_15

    :pswitch_14
    iget v11, v9, Landroidx/fragment/app/B0;->d:I

    iget v14, v9, Landroidx/fragment/app/B0;->e:I

    iget v15, v9, Landroidx/fragment/app/B0;->f:I

    iget v9, v9, Landroidx/fragment/app/B0;->g:I

    invoke-virtual {v10, v11, v14, v15, v9}, Landroidx/fragment/app/K;->setAnimations(IIII)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/p0;->g(Landroidx/fragment/app/K;)V

    goto :goto_15

    :pswitch_15
    iget v11, v9, Landroidx/fragment/app/B0;->d:I

    iget v14, v9, Landroidx/fragment/app/B0;->e:I

    iget v15, v9, Landroidx/fragment/app/B0;->f:I

    iget v9, v9, Landroidx/fragment/app/B0;->g:I

    invoke-virtual {v10, v11, v14, v15, v9}, Landroidx/fragment/app/K;->setAnimations(IIII)V

    const/4 v9, 0x0

    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/p0;->W(Landroidx/fragment/app/K;Z)V

    invoke-static {v10}, Landroidx/fragment/app/p0;->a0(Landroidx/fragment/app/K;)V

    goto :goto_15

    :pswitch_16
    iget v11, v9, Landroidx/fragment/app/B0;->d:I

    iget v14, v9, Landroidx/fragment/app/B0;->e:I

    iget v15, v9, Landroidx/fragment/app/B0;->f:I

    iget v9, v9, Landroidx/fragment/app/B0;->g:I

    invoke-virtual {v10, v11, v14, v15, v9}, Landroidx/fragment/app/K;->setAnimations(IIII)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/p0;->G(Landroidx/fragment/app/K;)V

    goto :goto_15

    :pswitch_17
    iget v11, v9, Landroidx/fragment/app/B0;->d:I

    iget v14, v9, Landroidx/fragment/app/B0;->e:I

    iget v15, v9, Landroidx/fragment/app/B0;->f:I

    iget v9, v9, Landroidx/fragment/app/B0;->g:I

    invoke-virtual {v10, v11, v14, v15, v9}, Landroidx/fragment/app/K;->setAnimations(IIII)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/p0;->R(Landroidx/fragment/app/K;)V

    :goto_15
    const/4 v11, 0x0

    goto :goto_16

    :pswitch_18
    iget v11, v9, Landroidx/fragment/app/B0;->d:I

    iget v14, v9, Landroidx/fragment/app/B0;->e:I

    iget v15, v9, Landroidx/fragment/app/B0;->f:I

    iget v9, v9, Landroidx/fragment/app/B0;->g:I

    invoke-virtual {v10, v11, v14, v15, v9}, Landroidx/fragment/app/K;->setAnimations(IIII)V

    const/4 v11, 0x0

    invoke-virtual {v13, v10, v11}, Landroidx/fragment/app/p0;->W(Landroidx/fragment/app/K;Z)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/p0;->a(Landroidx/fragment/app/K;)Landroidx/fragment/app/z0;

    :goto_16
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_14

    :cond_1d
    const/4 v11, 0x0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    :cond_1e
    move-object/from16 v5, p2

    const/4 v11, 0x0

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v3, p3

    :goto_17
    if-ge v3, v4, :cond_23

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    if-eqz v1, :cond_20

    iget-object v7, v6, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_18
    if-ltz v7, :cond_22

    iget-object v8, v6, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/B0;

    iget-object v8, v8, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    if-eqz v8, :cond_1f

    invoke-virtual {v0, v8}, Landroidx/fragment/app/p0;->f(Landroidx/fragment/app/K;)Landroidx/fragment/app/z0;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/z0;->k()V

    :cond_1f
    add-int/lit8 v7, v7, -0x1

    goto :goto_18

    :cond_20
    iget-object v6, v6, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_21
    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/B0;

    iget-object v7, v7, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    if-eqz v7, :cond_21

    invoke-virtual {v0, v7}, Landroidx/fragment/app/p0;->f(Landroidx/fragment/app/K;)Landroidx/fragment/app/z0;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/z0;->k()V

    goto :goto_19

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_23
    iget v3, v0, Landroidx/fragment/app/p0;->t:I

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Landroidx/fragment/app/p0;->M(IZ)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move/from16 v6, p3

    :goto_1a
    if-ge v6, v4, :cond_26

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    iget-object v7, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_24
    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/B0;

    iget-object v8, v8, Landroidx/fragment/app/B0;->b:Landroidx/fragment/app/K;

    if-eqz v8, :cond_24

    iget-object v8, v8, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_24

    invoke-static {v8, v0}, Landroidx/fragment/app/U0;->j(Landroid/view/ViewGroup;Landroidx/fragment/app/p0;)Landroidx/fragment/app/U0;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_25
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_26
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/U0;

    iput-boolean v1, v3, Landroidx/fragment/app/U0;->d:Z

    invoke-virtual {v3}, Landroidx/fragment/app/U0;->k()V

    invoke-virtual {v3}, Landroidx/fragment/app/U0;->g()V

    goto :goto_1c

    :cond_27
    move/from16 v0, p3

    :goto_1d
    if-ge v0, v4, :cond_2b

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_28

    iget v3, v1, Landroidx/fragment/app/a;->t:I

    if-ltz v3, :cond_28

    const/4 v3, -0x1

    iput v3, v1, Landroidx/fragment/app/a;->t:I

    goto :goto_1e

    :cond_28
    const/4 v3, -0x1

    :goto_1e
    iget-object v6, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    if-eqz v6, :cond_2a

    move v12, v11

    :goto_1f
    iget-object v6, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v12, v6, :cond_29

    iget-object v6, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1f

    :cond_29
    const/4 v6, 0x0

    iput-object v6, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    goto :goto_20

    :cond_2a
    const/4 v6, 0x0

    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2b
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
