.class public abstract Lg0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final A:Ljava/lang/ThreadLocal;

.field public static final y:[I

.field public static final z:Lg0/p;


# instance fields
.field public final d:Ljava/lang/String;

.field public e:J

.field public f:J

.field public g:Landroid/animation/TimeInterpolator;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public j:Lg0/G;

.field public k:Lg0/G;

.field public l:Lg0/E;

.field public final m:[I

.field public n:Ljava/util/ArrayList;

.field public o:Ljava/util/ArrayList;

.field public p:[Lg0/u;

.field public final q:Ljava/util/ArrayList;

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Ljava/util/ArrayList;

.field public v:Ljava/util/ArrayList;

.field public w:Lg0/t;

.field public x:Lg0/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lg0/x;->y:[I

    new-instance v0, Lg0/p;

    invoke-direct {v0}, Lg0/p;-><init>()V

    sput-object v0, Lg0/x;->z:Lg0/p;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lg0/x;->A:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg0/x;->d:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lg0/x;->e:J

    iput-wide v0, p0, Lg0/x;->f:J

    const/4 v0, 0x0

    iput-object v0, p0, Lg0/x;->g:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg0/x;->h:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg0/x;->i:Ljava/util/ArrayList;

    new-instance v1, Lg0/G;

    invoke-direct {v1}, Lg0/G;-><init>()V

    iput-object v1, p0, Lg0/x;->j:Lg0/G;

    new-instance v1, Lg0/G;

    invoke-direct {v1}, Lg0/G;-><init>()V

    iput-object v1, p0, Lg0/x;->k:Lg0/G;

    iput-object v0, p0, Lg0/x;->l:Lg0/E;

    sget-object v1, Lg0/x;->y:[I

    iput-object v1, p0, Lg0/x;->m:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg0/x;->q:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lg0/x;->r:I

    iput-boolean v1, p0, Lg0/x;->s:Z

    iput-boolean v1, p0, Lg0/x;->t:Z

    iput-object v0, p0, Lg0/x;->u:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg0/x;->v:Ljava/util/ArrayList;

    sget-object v0, Lg0/x;->z:Lg0/p;

    iput-object v0, p0, Lg0/x;->x:Lg0/p;

    return-void
.end method

.method public static c(Lg0/G;Landroid/view/View;Lg0/F;)V
    .locals 3

    iget-object v0, p0, Lg0/G;->a:Lq/f;

    invoke-virtual {v0, p1, p2}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    iget-object v1, p0, Lg0/G;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object p2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/D;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object v1, p0, Lg0/G;->d:Lq/f;

    invoke-virtual {v1, p2}, Lq/f;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p2, v0}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p2, p1}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    iget-object p0, p0, Lg0/G;->c:Lq/j;

    invoke-virtual {p0, v1, v2}, Lq/j;->d(J)I

    move-result p2

    if-ltz p2, :cond_4

    invoke-virtual {p0, v1, v2}, Lq/j;->c(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/core/view/x;->n(Landroid/view/View;Z)V

    invoke-virtual {p0, v1, v2, v0}, Lq/j;->f(JLjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroidx/core/view/x;->n(Landroid/view/View;Z)V

    invoke-virtual {p0, v1, v2, p1}, Lq/j;->f(JLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static q()Lq/f;
    .locals 2

    sget-object v0, Lg0/x;->A:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/f;

    if-nez v1, :cond_0

    new-instance v1, Lq/f;

    invoke-direct {v1}, Lq/f;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static w(Lg0/F;Lg0/F;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lg0/F;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lg0/F;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p2

    goto :goto_1

    :cond_2
    :goto_0
    move p0, p2

    :goto_1
    return p0
.end method


# virtual methods
.method public A(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lg0/x;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public B(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lg0/x;->s:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lg0/x;->t:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lg0/x;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lg0/x;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->resume()V

    goto :goto_0

    :cond_0
    sget-object p1, Lg0/w;->e:Lg0/v;

    invoke-virtual {p0, p1}, Lg0/x;->x(Lg0/v;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lg0/x;->s:Z

    :cond_2
    return-void
.end method

.method public C()V
    .locals 8

    invoke-virtual {p0}, Lg0/x;->J()V

    invoke-static {}, Lg0/x;->q()Lq/f;

    move-result-object v0

    iget-object v1, p0, Lg0/x;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Lq/f;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lg0/x;->J()V

    if-eqz v2, :cond_0

    new-instance v3, Lg0/q;

    invoke-direct {v3, p0, v0}, Lg0/q;-><init>(Lg0/x;Lq/f;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide v3, p0, Lg0/x;->f:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1
    iget-wide v3, p0, Lg0/x;->e:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_2
    iget-object v3, p0, Lg0/x;->g:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    new-instance v3, Lg0/r;

    invoke-direct {v3, p0}, Lg0/r;-><init>(Lg0/x;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lg0/x;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lg0/x;->n()V

    return-void
.end method

.method public D(J)V
    .locals 0

    iput-wide p1, p0, Lg0/x;->f:J

    return-void
.end method

.method public E(Lg0/t;)V
    .locals 0

    iput-object p1, p0, Lg0/x;->w:Lg0/t;

    return-void
.end method

.method public F(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lg0/x;->g:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public G(Lg0/p;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lg0/x;->z:Lg0/p;

    iput-object p1, p0, Lg0/x;->x:Lg0/p;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lg0/x;->x:Lg0/p;

    :goto_0
    return-void
.end method

.method public H()V
    .locals 0

    return-void
.end method

.method public I(J)V
    .locals 0

    iput-wide p1, p0, Lg0/x;->e:J

    return-void
.end method

.method public final J()V
    .locals 1

    iget v0, p0, Lg0/x;->r:I

    if-nez v0, :cond_0

    sget-object v0, Lg0/w;->a:Lg0/v;

    invoke-virtual {p0, v0}, Lg0/x;->x(Lg0/v;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg0/x;->t:Z

    :cond_0
    iget v0, p0, Lg0/x;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg0/x;->r:I

    return-void
.end method

.method public K(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg0/x;->f:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    const-string v1, ") "

    if-eqz p1, :cond_0

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lg0/x;->f:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v5, p0, Lg0/x;->e:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_1

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lg0/x;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p1, p0, Lg0/x;->g:Landroid/animation/TimeInterpolator;

    if-eqz p1, :cond_2

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lg0/x;->g:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p1, p0, Lg0/x;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_3

    iget-object p1, p0, Lg0/x;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    :cond_3
    const-string p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lg0/x;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez p1, :cond_5

    move p1, v2

    :goto_0
    iget-object v3, p0, Lg0/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_5

    if-lez p1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v3, p0, Lg0/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lg0/x;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    :goto_1
    iget-object p1, p0, Lg0/x;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_7

    if-lez v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object p1, p0, Lg0/x;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Lg0/u;)V
    .locals 1

    iget-object v0, p0, Lg0/x;->u:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg0/x;->u:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lg0/x;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lg0/x;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lg0/x;->k()Lg0/x;

    move-result-object p0

    return-object p0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lg0/x;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lg0/x;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    :cond_0
    sget-object v0, Lg0/w;->c:Lg0/v;

    invoke-virtual {p0, v0}, Lg0/x;->x(Lg0/v;)V

    return-void
.end method

.method public abstract e(Lg0/F;)V
.end method

.method public final f(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    new-instance v0, Lg0/F;

    invoke-direct {v0, p1}, Lg0/F;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lg0/x;->h(Lg0/F;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lg0/x;->e(Lg0/F;)V

    :goto_0
    iget-object v1, v0, Lg0/F;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lg0/x;->g(Lg0/F;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lg0/x;->j:Lg0/G;

    invoke-static {v1, p1, v0}, Lg0/x;->c(Lg0/G;Landroid/view/View;Lg0/F;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lg0/x;->k:Lg0/G;

    invoke-static {v1, p1, v0}, Lg0/x;->c(Lg0/G;Landroid/view/View;Lg0/F;)V

    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lg0/x;->f(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public g(Lg0/F;)V
    .locals 0

    return-void
.end method

.method public abstract h(Lg0/F;)V
.end method

.method public final i(Landroid/view/ViewGroup;Z)V
    .locals 5

    invoke-virtual {p0, p2}, Lg0/x;->j(Z)V

    iget-object v0, p0, Lg0/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lg0/x;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lg0/x;->f(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v2, p0, Lg0/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lg0/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lg0/F;

    invoke-direct {v3, v2}, Lg0/F;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_2

    invoke-virtual {p0, v3}, Lg0/x;->h(Lg0/F;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lg0/x;->e(Lg0/F;)V

    :goto_2
    iget-object v4, v3, Lg0/F;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lg0/x;->g(Lg0/F;)V

    if-eqz p2, :cond_3

    iget-object v4, p0, Lg0/x;->j:Lg0/G;

    invoke-static {v4, v2, v3}, Lg0/x;->c(Lg0/G;Landroid/view/View;Lg0/F;)V

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lg0/x;->k:Lg0/G;

    invoke-static {v4, v2, v3}, Lg0/x;->c(Lg0/G;Landroid/view/View;Lg0/F;)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    iget-object p1, p0, Lg0/x;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_8

    iget-object p1, p0, Lg0/x;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v1, Lg0/F;

    invoke-direct {v1, p1}, Lg0/F;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_6

    invoke-virtual {p0, v1}, Lg0/x;->h(Lg0/F;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v1}, Lg0/x;->e(Lg0/F;)V

    :goto_5
    iget-object v2, v1, Lg0/F;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lg0/x;->g(Lg0/F;)V

    if-eqz p2, :cond_7

    iget-object v2, p0, Lg0/x;->j:Lg0/G;

    invoke-static {v2, p1, v1}, Lg0/x;->c(Lg0/G;Landroid/view/View;Lg0/F;)V

    goto :goto_6

    :cond_7
    iget-object v2, p0, Lg0/x;->k:Lg0/G;

    invoke-static {v2, p1, v1}, Lg0/x;->c(Lg0/G;Landroid/view/View;Lg0/F;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    :goto_7
    return-void
.end method

.method public final j(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg0/x;->j:Lg0/G;

    iget-object p1, p1, Lg0/G;->a:Lq/f;

    invoke-virtual {p1}, Lq/m;->clear()V

    iget-object p1, p0, Lg0/x;->j:Lg0/G;

    iget-object p1, p1, Lg0/G;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lg0/x;->j:Lg0/G;

    iget-object p0, p0, Lg0/G;->c:Lq/j;

    invoke-virtual {p0}, Lq/j;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg0/x;->k:Lg0/G;

    iget-object p1, p1, Lg0/G;->a:Lq/f;

    invoke-virtual {p1}, Lq/m;->clear()V

    iget-object p1, p0, Lg0/x;->k:Lg0/G;

    iget-object p1, p1, Lg0/G;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lg0/x;->k:Lg0/G;

    iget-object p0, p0, Lg0/G;->c:Lq/j;

    invoke-virtual {p0}, Lq/j;->a()V

    :goto_0
    return-void
.end method

.method public k()Lg0/x;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0/x;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lg0/x;->v:Ljava/util/ArrayList;

    new-instance v1, Lg0/G;

    invoke-direct {v1}, Lg0/G;-><init>()V

    iput-object v1, v0, Lg0/x;->j:Lg0/G;

    new-instance v1, Lg0/G;

    invoke-direct {v1}, Lg0/G;-><init>()V

    iput-object v1, v0, Lg0/x;->k:Lg0/G;

    const/4 v1, 0x0

    iput-object v1, v0, Lg0/x;->n:Ljava/util/ArrayList;

    iput-object v1, v0, Lg0/x;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lg0/x;->u:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lg0/x;->u:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lg0/x;->u:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public l(Landroid/view/ViewGroup;Lg0/F;Lg0/F;)Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public m(Landroid/view/ViewGroup;Lg0/G;Lg0/G;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Lg0/x;->q()Lq/f;

    move-result-object v9

    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lg0/x;->p()Lg0/x;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_b

    move-object/from16 v14, p4

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0/F;

    move-object/from16 v15, p5

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg0/F;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lg0/F;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lg0/F;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    goto/16 :goto_7

    :cond_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v7, v0, v1}, Lg0/x;->u(Lg0/F;Lg0/F;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_a

    invoke-virtual {v7, v8, v0, v1}, Lg0/x;->l(Landroid/view/ViewGroup;Lg0/F;Lg0/F;)Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_a

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lg0/x;->r()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lg0/F;->b:Landroid/view/View;

    if-eqz v0, :cond_8

    array-length v4, v0

    if-lez v4, :cond_8

    new-instance v4, Lg0/F;

    invoke-direct {v4, v1}, Lg0/F;-><init>(Landroid/view/View;)V

    move-object/from16 v6, p3

    iget-object v5, v6, Lg0/G;->a:Lq/f;

    invoke-virtual {v5, v1}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg0/F;

    if-eqz v5, :cond_5

    const/4 v2, 0x0

    :goto_3
    array-length v12, v0

    if-ge v2, v12, :cond_5

    iget-object v12, v4, Lg0/F;->a:Ljava/util/Map;

    move-object/from16 v16, v3

    aget-object v3, v0, v2

    move-object/from16 v17, v0

    iget-object v0, v5, Lg0/F;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v16

    move-object/from16 v0, v17

    goto :goto_3

    :cond_5
    move-object/from16 v16, v3

    iget v0, v9, Lq/m;->f:I

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_7

    invoke-virtual {v9, v2}, Lq/m;->g(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v9, v3}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg0/s;

    iget-object v5, v3, Lg0/s;->c:Lg0/F;

    if-eqz v5, :cond_6

    iget-object v5, v3, Lg0/s;->a:Landroid/view/View;

    if-ne v5, v1, :cond_6

    iget-object v5, v7, Lg0/x;->d:Ljava/lang/String;

    iget-object v12, v3, Lg0/s;->b:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v3, v3, Lg0/s;->c:Lg0/F;

    invoke-virtual {v3, v4}, Lg0/F;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v2, v16

    goto :goto_5

    :cond_8
    move-object/from16 v6, p3

    move-object/from16 v16, v3

    move-object/from16 v2, v16

    const/4 v4, 0x0

    :goto_5
    move-object v12, v2

    move-object v5, v4

    goto :goto_6

    :cond_9
    move-object/from16 v6, p3

    move-object/from16 v16, v3

    iget-object v0, v0, Lg0/F;->b:Landroid/view/View;

    move-object v1, v0

    move-object/from16 v12, v16

    const/4 v5, 0x0

    :goto_6
    if-eqz v12, :cond_a

    new-instance v4, Lg0/s;

    iget-object v2, v7, Lg0/x;->d:Ljava/lang/String;

    sget-object v0, Lg0/I;->a:Lg0/N;

    new-instance v3, Lg0/T;

    invoke-direct {v3, v8}, Lg0/T;-><init>(Landroid/view/View;)V

    move-object v0, v4

    move-object/from16 v16, v3

    move-object/from16 v3, p0

    move-object v8, v4

    move-object/from16 v4, v16

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lg0/s;-><init>(Landroid/view/View;Ljava/lang/String;Lg0/x;Lg0/T;Lg0/F;Landroid/animation/Animator;)V

    invoke-virtual {v9, v12, v8}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lg0/x;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, p1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v12, v0, :cond_c

    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iget-object v1, v7, Lg0/x;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v9, v0}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0/s;

    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0x7fffffffffffffffL

    sub-long/2addr v1, v3

    iget-object v3, v0, Lg0/s;->f:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v3

    add-long/2addr v3, v1

    iget-object v0, v0, Lg0/s;->f:Landroid/animation/Animator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_c
    return-void
.end method

.method public final n()V
    .locals 5

    iget v0, p0, Lg0/x;->r:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lg0/x;->r:I

    if-nez v0, :cond_4

    sget-object v0, Lg0/w;->b:Lg0/v;

    invoke-virtual {p0, v0}, Lg0/x;->x(Lg0/v;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lg0/x;->j:Lg0/G;

    iget-object v3, v3, Lg0/G;->c:Lq/j;

    invoke-virtual {v3}, Lq/j;->g()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lg0/x;->j:Lg0/G;

    iget-object v3, v3, Lg0/G;->c:Lq/j;

    invoke-virtual {v3, v2}, Lq/j;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    sget-object v4, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v3, v0}, Landroidx/core/view/x;->n(Landroid/view/View;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_1
    iget-object v3, p0, Lg0/x;->k:Lg0/G;

    iget-object v3, v3, Lg0/G;->c:Lq/j;

    invoke-virtual {v3}, Lq/j;->g()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lg0/x;->k:Lg0/G;

    iget-object v3, v3, Lg0/G;->c:Lq/j;

    invoke-virtual {v3, v2}, Lq/j;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_2

    sget-object v4, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v3, v0}, Landroidx/core/view/x;->n(Landroid/view/View;Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lg0/x;->t:Z

    :cond_4
    return-void
.end method

.method public final o(Landroid/view/View;Z)Lg0/F;
    .locals 5

    iget-object v0, p0, Lg0/x;->l:Lg0/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg0/x;->o(Landroid/view/View;Z)Lg0/F;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lg0/x;->n:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg0/x;->o:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg0/F;

    if-nez v4, :cond_3

    return-object v1

    :cond_3
    iget-object v4, v4, Lg0/F;->b:Landroid/view/View;

    if-ne v4, p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    iget-object p0, p0, Lg0/x;->o:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lg0/x;->n:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lg0/F;

    :cond_7
    return-object v1
.end method

.method public final p()Lg0/x;
    .locals 1

    iget-object v0, p0, Lg0/x;->l:Lg0/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg0/x;->p()Lg0/x;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public r()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final s(Landroid/view/View;Z)Lg0/F;
    .locals 1

    iget-object v0, p0, Lg0/x;->l:Lg0/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg0/x;->s(Landroid/view/View;Z)Lg0/F;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lg0/x;->j:Lg0/G;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lg0/x;->k:Lg0/G;

    :goto_0
    iget-object p0, p0, Lg0/G;->a:Lq/f;

    invoke-virtual {p0, p1}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg0/F;

    return-object p0
.end method

.method public t()Z
    .locals 0

    iget-object p0, p0, Lg0/x;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lg0/x;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Lg0/F;Lg0/F;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lg0/x;->r()[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    invoke-static {p1, p2, v4}, Lg0/x;->w(Lg0/F;Lg0/F;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lg0/F;->a:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lg0/x;->w(Lg0/F;Lg0/F;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v0, v1

    :cond_3
    return v0
.end method

.method public final v(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lg0/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lg0/x;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lg0/x;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lg0/x;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public final x(Lg0/v;)V
    .locals 6

    iget-object v0, p0, Lg0/x;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg0/x;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lg0/x;->p:[Lg0/u;

    if-nez v1, :cond_0

    new-array v1, v0, [Lg0/u;

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lg0/x;->p:[Lg0/u;

    iget-object v3, p0, Lg0/x;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lg0/u;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v1, v3

    iget v5, p1, Lg0/v;->f:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {v4}, Lg0/u;->b()V

    goto :goto_2

    :pswitch_1
    invoke-interface {v4, p0}, Lg0/u;->f(Lg0/x;)V

    goto :goto_2

    :pswitch_2
    invoke-interface {v4, p0}, Lg0/u;->e(Lg0/x;)V

    goto :goto_2

    :pswitch_3
    invoke-interface {v4, p0}, Lg0/u;->c(Lg0/x;)V

    goto :goto_2

    :goto_1
    invoke-interface {v4}, Lg0/u;->d()V

    :goto_2
    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lg0/x;->p:[Lg0/u;

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public y(Landroid/view/View;)V
    .locals 2

    iget-boolean p1, p0, Lg0/x;->t:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lg0/x;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_0

    iget-object v1, p0, Lg0/x;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->pause()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lg0/w;->d:Lg0/v;

    invoke-virtual {p0, p1}, Lg0/x;->x(Lg0/v;)V

    iput-boolean v0, p0, Lg0/x;->s:Z

    :cond_1
    return-void
.end method

.method public z(Lg0/u;)V
    .locals 1

    iget-object v0, p0, Lg0/x;->u:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg0/x;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lg0/x;->u:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method
