.class public final Lf0/x;
.super Lf0/F;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final A:Landroid/widget/LinearLayout;

.field public B:Landroid/view/View;

.field public C:Landroid/view/View;

.field public D:Z

.field public final E:Landroid/widget/ProgressBar;

.field public F:Ljava/util/Set;

.field public G:Z

.field public H:Landroid/widget/Spinner;

.field public I:I

.field public J:Lf0/p;

.field public K:Landroidx/slice/core/a;

.field public L:Landroidx/slice/SliceItem;

.field public M:Z

.field public N:Ljava/util/List;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Landroid/os/Handler;

.field public S:J

.field public T:I

.field public U:I

.field public V:I

.field public W:Landroidx/slice/SliceItem;

.field public a0:Landroidx/slice/SliceItem;

.field public b0:Ljava/util/ArrayList;

.field public c0:Ljava/util/ArrayList;

.field public d0:I

.field public e0:I

.field public f0:I

.field public final g0:Lf0/s;

.field public final h0:Lf0/t;

.field public final i0:Lf0/u;

.field public final p:Landroid/widget/LinearLayout;

.field public final q:Landroid/widget/LinearLayout;

.field public final r:Landroid/widget/LinearLayout;

.field public final s:Landroid/widget/LinearLayout;

.field public final t:Landroid/widget/TextView;

.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/TextView;

.field public final w:Landroid/view/View;

.field public final x:Landroid/view/View;

.field public final y:Landroid/util/ArrayMap;

.field public final z:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lf0/F;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lf0/x;->y:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lf0/x;->z:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lf0/x;->F:Ljava/util/Set;

    new-instance v0, Lf0/s;

    invoke-direct {v0, p0}, Lf0/s;-><init>(Lf0/x;)V

    iput-object v0, p0, Lf0/x;->g0:Lf0/s;

    new-instance v0, Lf0/t;

    invoke-direct {v0, p0}, Lf0/t;-><init>(Lf0/x;)V

    iput-object v0, p0, Lf0/x;->h0:Lf0/t;

    new-instance v0, Lf0/u;

    invoke-direct {v0, p0}, Lf0/u;-><init>(Lf0/x;)V

    iput-object v0, p0, Lf0/x;->i0:Lf0/u;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lf0/x;->e0:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lf0/x;->d0:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d002b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const p1, 0x7f0a01d1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lf0/x;->q:Landroid/widget/LinearLayout;

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lf0/x;->r:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0338

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf0/x;->s:Landroid/widget/LinearLayout;

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf0/x;->t:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf0/x;->u:Landroid/widget/TextView;

    const v0, 0x7f0a01e9

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf0/x;->v:Landroid/widget/TextView;

    const v0, 0x7f0a00b1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf0/x;->w:Landroid/view/View;

    const v0, 0x7f0a004b

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf0/x;->x:Landroid/view/View;

    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lf0/x;->E:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04012a

    invoke-static {v2, v1}, Lf0/P;->b(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x1020018

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf0/x;->A:Landroid/widget/LinearLayout;

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroidx/core/view/x;->o(Landroid/view/View;I)V

    invoke-static {p1, v0}, Landroidx/core/view/x;->o(Landroid/view/View;I)V

    return-void
.end method

.method public static z(ILandroid/view/View;I)V
    .locals 2

    if-gez p0, :cond_0

    if-gez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_4

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ltz p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    iget-object v0, p0, Lf0/x;->E:Landroid/widget/ProgressBar;

    iget-boolean p0, p0, Lf0/x;->G:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final B()V
    .locals 12

    iget-object v0, p0, Lf0/x;->J:Lf0/p;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lf0/p;->m:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v0, p0, Lf0/x;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lf0/x;->J:Lf0/p;

    iget-object v1, v0, Lf0/p;->k:Ljava/util/ArrayList;

    iget-object v2, p0, Lf0/x;->N:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    iget-boolean v0, v0, Lf0/p;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf0/x;->J:Lf0/p;

    iget-boolean v0, v0, Lf0/p;->q:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v6, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v7, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, "action"

    const/4 v10, 0x1

    if-ge v3, v8, :cond_8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Landroidx/slice/SliceItem;

    if-eqz v8, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/slice/SliceItem;

    goto :goto_1

    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/slice/core/a;

    iget-object v8, v8, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    :goto_1
    const/4 v11, 0x3

    if-ge v4, v11, :cond_7

    iget v11, p0, Lf0/F;->e:I

    invoke-virtual {p0, v8, v11, v2}, Lf0/x;->r(Landroidx/slice/SliceItem;IZ)Z

    move-result v11

    if-eqz v11, :cond_7

    if-nez v6, :cond_4

    invoke-static {v8, v9, v0, v0}, Ld0/e;->e(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v11

    if-eqz v11, :cond_4

    move-object v6, v8

    :cond_4
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v10, :cond_7

    iget-object v5, p0, Lf0/x;->y:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v8}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v5

    const-string v7, "image"

    invoke-static {v5, v7, v0, v0}, Ld0/e;->c(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    if-nez v5, :cond_5

    move v5, v10

    goto :goto_2

    :cond_5
    move v5, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v10, :cond_6

    invoke-static {v8, v9, v0, v0}, Ld0/e;->e(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    if-eqz v7, :cond_6

    move v7, v10

    goto :goto_3

    :cond_6
    move v7, v2

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lf0/x;->A:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    if-lez v4, :cond_9

    move v8, v2

    goto :goto_4

    :cond_9
    move v8, v3

    :goto_4
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lf0/x;->x:Landroid/view/View;

    iget-object v8, p0, Lf0/x;->K:Landroidx/slice/core/a;

    if-eqz v8, :cond_b

    if-nez v5, :cond_a

    iget-object v5, p0, Lf0/x;->J:Lf0/p;

    iget-boolean v5, v5, Lf0/p;->s:Z

    if-eqz v5, :cond_b

    if-eqz v7, :cond_b

    :cond_a
    move v3, v2

    :cond_b
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_c

    invoke-static {v1, v9, v0, v0}, Ld0/e;->e(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_c

    move v0, v10

    goto :goto_5

    :cond_c
    move v0, v2

    :goto_5
    if-eqz v6, :cond_d

    move v1, v10

    goto :goto_6

    :cond_d
    move v1, v2

    :goto_6
    iget-object v3, p0, Lf0/x;->K:Landroidx/slice/core/a;

    if-eqz v3, :cond_e

    iget-object v0, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v10}, Lf0/x;->y(Landroid/view/View;Z)V

    goto :goto_8

    :cond_e
    if-eq v1, v0, :cond_12

    if-eq v4, v10, :cond_f

    if-eqz v0, :cond_12

    :cond_f
    iget-object v0, p0, Lf0/x;->y:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lf0/x;->y:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/core/a;

    iput-object v0, p0, Lf0/x;->K:Landroidx/slice/core/a;

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lf0/x;->z:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lf0/x;->z:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ne v0, v10, :cond_11

    iget-object v0, p0, Lf0/x;->z:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf0/A;

    iget-object v0, v0, Lf0/A;->d:Landroidx/slice/core/a;

    iput-object v0, p0, Lf0/x;->K:Landroidx/slice/core/a;

    :cond_11
    :goto_7
    iget-object v0, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v10}, Lf0/x;->y(Landroid/view/View;Z)V

    move v0, v10

    goto :goto_9

    :cond_12
    :goto_8
    move v0, v2

    :goto_9
    iget-object v1, p0, Lf0/x;->K:Landroidx/slice/core/a;

    if-eqz v1, :cond_13

    if-nez v0, :cond_13

    iget-object v0, p0, Lf0/x;->F:Ljava/util/Set;

    iget-object v1, v1, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iput-boolean v10, p0, Lf0/x;->G:Z

    :cond_13
    iget-object p0, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_a

    :cond_14
    const/4 v2, 0x2

    :goto_a
    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v2}, Landroidx/core/view/x;->o(Landroid/view/View;I)V

    :cond_15
    :goto_b
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lf0/x;->J:Lf0/p;

    iget-object v0, p0, Lf0/x;->F:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lf0/x;->w()V

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lf0/x;->O:Z

    iget-object p1, p0, Lf0/x;->J:Lf0/p;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lf0/x;->v(Z)V

    :cond_0
    return-void
.end method

.method public final f(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lf0/F;->f(IIII)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public final g(J)V
    .locals 0

    iput-wide p1, p0, Lf0/F;->g:J

    iget-object p1, p0, Lf0/x;->J:Lf0/p;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lf0/p;->h:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->f()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lf0/x;->s(Z)V

    :cond_1
    return-void
.end method

.method public final h(Ljava/util/Set;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lf0/x;->F:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lf0/x;->G:Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lf0/x;->F:Ljava/util/Set;

    :goto_0
    invoke-virtual {p0}, Lf0/x;->B()V

    invoke-virtual {p0}, Lf0/x;->A()V

    return-void
.end method

.method public final j(Z)V
    .locals 0

    iput-boolean p1, p0, Lf0/F;->f:Z

    iget-object p1, p0, Lf0/x;->J:Lf0/p;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lf0/x;->v(Z)V

    :cond_0
    return-void
.end method

.method public final l(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lf0/x;->N:Ljava/util/List;

    iget-object p1, p0, Lf0/x;->J:Lf0/p;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf0/x;->B()V

    :cond_0
    return-void
.end method

.method public final n(Lf0/G;ZIILf0/M;)V
    .locals 3

    iput-object p5, p0, Lf0/F;->d:Lf0/M;

    iget-object p4, p0, Lf0/x;->J:Lf0/p;

    const/4 p5, 0x0

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lf0/p;->g()Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lf0/x;->J:Lf0/p;

    if-eqz p4, :cond_0

    new-instance v0, Lb0/h;

    iget-object p4, p4, Lf0/G;->a:Landroidx/slice/SliceItem;

    invoke-direct {v0, p4}, Lb0/h;-><init>(Landroidx/slice/SliceItem;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p4, Lb0/h;

    iget-object v1, p1, Lf0/G;->a:Landroidx/slice/SliceItem;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v1

    invoke-direct {p4, v1}, Lb0/h;-><init>(Landroidx/slice/Slice;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p4}, Lb0/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p5

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, v0, Lb0/h;->b:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object p4, p4, Lb0/h;->b:Landroid/net/Uri;

    invoke-virtual {v0, p4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    move p4, v1

    goto :goto_2

    :cond_2
    move p4, p5

    :goto_2
    if-eqz p4, :cond_3

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v1, p5

    :goto_3
    iput-boolean p5, p0, Lf0/x;->G:Z

    iput-boolean p2, p0, Lf0/x;->M:Z

    check-cast p1, Lf0/p;

    iput-object p1, p0, Lf0/x;->J:Lf0/p;

    iput p3, p0, Lf0/x;->I:I

    invoke-virtual {p0, v1}, Lf0/x;->v(Z)V

    return-void
.end method

.method public final o(Lf0/J;Lf0/q;)V
    .locals 2

    iput-object p1, p0, Lf0/F;->m:Lf0/J;

    iput-object p2, p0, Lf0/F;->n:Lf0/q;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lf0/x;->q:Landroid/widget/LinearLayout;

    iget v0, p2, Lf0/q;->b:I

    iget p2, p2, Lf0/q;->c:I

    invoke-static {v0, p1, p2}, Lf0/x;->z(ILandroid/view/View;I)V

    iget-object p1, p0, Lf0/x;->r:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lf0/F;->n:Lf0/q;

    iget v0, p2, Lf0/q;->d:I

    iget p2, p2, Lf0/q;->e:I

    invoke-static {v0, p1, p2}, Lf0/x;->z(ILandroid/view/View;I)V

    iget-object p1, p0, Lf0/x;->t:Landroid/widget/TextView;

    iget-object p2, p0, Lf0/F;->n:Lf0/q;

    iget v0, p2, Lf0/q;->f:I

    iget p2, p2, Lf0/q;->g:I

    invoke-static {v0, p1, p2}, Lf0/x;->z(ILandroid/view/View;I)V

    iget-object p1, p0, Lf0/x;->s:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lf0/F;->n:Lf0/q;

    iget v0, p2, Lf0/q;->h:I

    iget p2, p2, Lf0/q;->i:I

    invoke-static {v0, p1, p2}, Lf0/x;->z(ILandroid/view/View;I)V

    iget-object p1, p0, Lf0/x;->A:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lf0/F;->n:Lf0/q;

    iget v0, p2, Lf0/q;->j:I

    iget p2, p2, Lf0/q;->k:I

    invoke-static {v0, p1, p2}, Lf0/x;->z(ILandroid/view/View;I)V

    iget-object p1, p0, Lf0/x;->w:Landroid/view/View;

    iget-object p2, p0, Lf0/F;->n:Lf0/q;

    iget v0, p2, Lf0/q;->l:I

    iget p2, p2, Lf0/q;->m:I

    if-gez v0, :cond_0

    if-gez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-ltz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_2
    if-ltz p2, :cond_3

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lf0/x;->x:Landroid/view/View;

    iget-object p2, p0, Lf0/F;->n:Lf0/q;

    iget p2, p2, Lf0/q;->n:I

    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object p1, p0, Lf0/F;->n:Lf0/q;

    iget-object p2, p1, Lf0/q;->w:Ljava/lang/Integer;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_6
    iget-object p1, p1, Lf0/q;->a:Lf0/J;

    iget p1, p1, Lf0/J;->a:I

    :goto_2
    const/4 p2, -0x1

    if-eq p1, p2, :cond_8

    iget-object p1, p0, Lf0/F;->n:Lf0/q;

    iget-object p2, p1, Lf0/q;->w:Ljava/lang/Integer;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_7
    iget-object p1, p1, Lf0/q;->a:Lf0/J;

    iget p1, p1, Lf0/J;->a:I

    :goto_3
    invoke-virtual {p0, p1}, Lf0/x;->p(I)V

    :cond_8
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lf0/x;->K:Landroidx/slice/core/a;

    if-eqz v0, :cond_b

    iget-object v1, v0, Landroidx/slice/core/a;->a:Landroidx/slice/SliceItem;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroidx/slice/core/a;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf0/x;->K:Landroidx/slice/core/a;

    invoke-virtual {v0}, Landroidx/slice/core/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "date_picker"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "time_picker"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "toggle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    packed-switch v4, :pswitch_data_0

    iget-object v0, p0, Lf0/x;->z:Landroid/util/ArrayMap;

    iget-object v2, p0, Lf0/x;->K:Landroidx/slice/core/a;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf0/A;

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v3}, Lf0/x;->u(Z)V

    return-void

    :pswitch_1
    invoke-virtual {p0, v1}, Lf0/x;->u(Z)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lf0/x;->y:Landroid/util/ArrayMap;

    iget-object v2, p0, Lf0/x;->K:Landroidx/slice/core/a;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf0/A;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lf0/x;->z:Landroid/util/ArrayMap;

    iget-object v2, p0, Lf0/x;->K:Landroidx/slice/core/a;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf0/A;

    :goto_1
    if-eqz v0, :cond_7

    instance-of p1, p1, Lf0/A;

    if-nez p1, :cond_7

    iget-object p0, v0, Lf0/A;->d:Landroidx/slice/core/a;

    if-nez p0, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/slice/core/a;->b()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v0, Lf0/A;->h:Landroid/view/View;

    if-eqz p0, :cond_b

    iget-object p0, v0, Lf0/A;->d:Landroidx/slice/core/a;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroidx/slice/core/a;->b()Z

    move-result p0

    if-eqz p0, :cond_b

    iget-object p0, v0, Lf0/A;->h:Landroid/view/View;

    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0}, Landroid/widget/Checkable;->toggle()V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lf0/A;->a()V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lf0/x;->J:Lf0/p;

    iget-boolean p1, p1, Lf0/p;->o:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    goto :goto_2

    :cond_8
    :try_start_0
    iget-object p1, p0, Lf0/x;->K:Landroidx/slice/core/a;

    iget-object p1, p1, Landroidx/slice/core/a;->a:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroidx/slice/SliceItem;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lf0/x;->G:Z

    iget-object p1, p0, Lf0/F;->d:Lf0/M;

    if-eqz p1, :cond_9

    new-instance p1, Lf0/c;

    invoke-virtual {p0}, Lf0/F;->b()I

    move-result v0

    iget v2, p0, Lf0/x;->I:I

    const/4 v3, 0x3

    invoke-direct {p1, v0, v3, v1, v2}, Lf0/c;-><init>(IIII)V

    iget-object v0, p0, Lf0/F;->d:Lf0/M;

    iget-object v1, p0, Lf0/x;->K:Landroidx/slice/core/a;

    iget-object v1, v1, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->k(Landroidx/slice/SliceItem;Lf0/c;)V

    :cond_9
    iget-boolean p1, p0, Lf0/x;->G:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lf0/F;->l:Lf0/E;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lf0/x;->K:Landroidx/slice/core/a;

    iget-object v0, v0, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    iget v1, p0, Lf0/x;->I:I

    invoke-virtual {p1, v0, v1}, Lf0/E;->c(Landroidx/slice/SliceItem;I)V

    iget-object p1, p0, Lf0/x;->F:Ljava/util/Set;

    iget-object v0, p0, Lf0/x;->K:Landroidx/slice/core/a;

    iget-object v0, v0, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {p0}, Lf0/x;->A()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "RowView"

    const-string v0, "PendingIntent for slice cannot be sent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x33c144ac -> :sswitch_2
        0x2d3f6240 -> :sswitch_1
        0x4a87b63f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object p2, p0, Lf0/x;->a0:Landroidx/slice/SliceItem;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lf0/x;->H:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_3

    if-ltz p3, :cond_3

    iget-object p1, p0, Lf0/x;->b0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p3, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf0/F;->d:Lf0/M;

    if-eqz p1, :cond_1

    new-instance p1, Lf0/c;

    invoke-virtual {p0}, Lf0/F;->b()I

    move-result p2

    const/4 p4, 0x6

    iget p5, p0, Lf0/x;->I:I

    const/4 v0, 0x5

    invoke-direct {p1, p2, v0, p4, p5}, Lf0/c;-><init>(IIII)V

    iget-object p2, p0, Lf0/F;->d:Lf0/M;

    iget-object p4, p0, Lf0/x;->a0:Landroidx/slice/SliceItem;

    check-cast p2, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;

    invoke-virtual {p2, p4, p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->k(Landroidx/slice/SliceItem;Lf0/c;)V

    :cond_1
    iget-object p1, p0, Lf0/x;->b0:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    iget-object p2, p0, Lf0/x;->a0:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    const/high16 p5, 0x10000000

    invoke-virtual {p4, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p4

    const-string p5, "android.app.slice.extra.SELECTION"

    invoke-virtual {p4, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroidx/slice/SliceItem;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf0/x;->G:Z

    iget-object p1, p0, Lf0/F;->l:Lf0/E;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lf0/x;->K:Landroidx/slice/core/a;

    iget-object p2, p2, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    iget p3, p0, Lf0/x;->I:I

    invoke-virtual {p1, p2, p3}, Lf0/E;->c(Landroidx/slice/SliceItem;I)V

    iget-object p1, p0, Lf0/x;->F:Ljava/util/Set;

    iget-object p2, p0, Lf0/x;->K:Landroidx/slice/core/a;

    iget-object p2, p2, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lf0/x;->A()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RowView"

    const-string p2, "PendingIntent for slice cannot be sent"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    iget-object p2, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    iget p3, p0, Lf0/F;->i:I

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0}, Lf0/x;->t()I

    move-result p5

    iget v0, p0, Lf0/F;->i:I

    add-int/2addr p5, v0

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object p2, p0, Lf0/x;->C:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    if-nez p2, :cond_0

    iget-object p2, p0, Lf0/F;->m:Lf0/J;

    iget p2, p2, Lf0/J;->s:I

    iget p3, p0, Lf0/x;->f0:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lf0/x;->t()I

    move-result p3

    add-int/2addr p3, p2

    iget p2, p0, Lf0/F;->i:I

    add-int/2addr p3, p2

    iget p2, p0, Lf0/x;->f0:I

    add-int/2addr p2, p3

    iget-object p0, p0, Lf0/x;->C:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lf0/x;->H:Landroid/widget/Spinner;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lf0/x;->t()I

    move-result p2

    iget p3, p0, Lf0/F;->i:I

    add-int/2addr p2, p3

    iget-object p3, p0, Lf0/x;->H:Landroid/widget/Spinner;

    invoke-virtual {p3}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p0, p0, Lf0/x;->H:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/widget/Spinner;->layout(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Lf0/x;->t()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    iget v3, p0, Lf0/F;->i:I

    add-int/2addr p2, v3

    iget v3, p0, Lf0/F;->k:I

    add-int/2addr p2, v3

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    iget-object p2, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move p2, v1

    :goto_0
    iget-object v2, p0, Lf0/x;->C:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    if-nez v3, :cond_1

    iget-object v3, p0, Lf0/F;->m:Lf0/J;

    iget v3, v3, Lf0/J;->s:I

    iget v4, p0, Lf0/F;->i:I

    add-int/2addr v3, v4

    iget v4, p0, Lf0/F;->k:I

    add-int/2addr v3, v4

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v2, p1, v0}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Lf0/x;->C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lf0/x;->f0:I

    iget-object v0, p0, Lf0/x;->C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lf0/x;->H:Landroid/widget/Spinner;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lf0/F;->m:Lf0/J;

    iget v3, v3, Lf0/J;->t:I

    iget v4, p0, Lf0/F;->i:I

    add-int/2addr v3, v4

    iget v4, p0, Lf0/F;->k:I

    add-int/2addr v3, v4

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v2, p1, v0}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Lf0/x;->H:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_2
    :goto_1
    iget v0, p0, Lf0/F;->h:I

    add-int/2addr p2, v0

    iget v0, p0, Lf0/F;->j:I

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lf0/x;->J:Lf0/p;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lf0/F;->m:Lf0/J;

    iget-object v3, p0, Lf0/F;->o:Lf0/O;

    invoke-virtual {v0, v2, v3}, Lf0/p;->a(Lf0/J;Lf0/O;)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-static {p2, p1, v1}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Lf0/F;->i:I

    add-int/2addr v0, p2

    iget p2, p0, Lf0/F;->k:I

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Lf0/F;->e:I

    iget-object p1, p0, Lf0/x;->J:Lf0/p;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lf0/x;->v(Z)V

    :cond_0
    return-void
.end method

.method public final q(Landroidx/slice/core/a;ILandroid/view/ViewGroup;Z)V
    .locals 7

    new-instance v6, Lf0/A;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lf0/F;->n:Lf0/q;

    invoke-direct {v6, v0, v1}, Lf0/A;-><init>(Landroid/content/Context;Lf0/q;)V

    invoke-virtual {p3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/core/a;->b()Z

    move-result p3

    xor-int/lit8 v0, p3, 0x1

    if-eqz p3, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    new-instance v3, Lf0/c;

    invoke-virtual {p0}, Lf0/F;->b()I

    move-result v4

    iget v5, p0, Lf0/x;->I:I

    invoke-direct {v3, v4, v0, v1, v5}, Lf0/c;-><init>(IIII)V

    if-eqz p4, :cond_2

    iput v2, v3, Lf0/c;->g:I

    iput v2, v3, Lf0/c;->e:I

    const/4 p4, 0x1

    iput p4, v3, Lf0/c;->f:I

    :cond_2
    iget-object p4, p0, Lf0/F;->d:Lf0/M;

    iget-object v5, p0, Lf0/F;->l:Lf0/E;

    move-object v0, v6

    move-object v1, p1

    move-object v2, v3

    move-object v3, p4

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lf0/A;->b(Landroidx/slice/core/a;Lf0/c;Lf0/M;ILf0/E;)V

    iget-object p2, p0, Lf0/x;->F:Ljava/util/Set;

    iget-object p4, p1, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v6}, Lf0/A;->c()V

    :cond_3
    if-eqz p3, :cond_4

    iget-object p0, p0, Lf0/x;->y:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lf0/x;->z:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public final r(Landroidx/slice/SliceItem;IZ)Z
    .locals 9

    if-eqz p3, :cond_0

    iget-object v0, p0, Lf0/x;->q:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf0/x;->A:Landroid/widget/LinearLayout;

    :goto_0
    iget-object v1, p1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v4, "action"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    const-string v1, "shortcut"

    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/slice/core/a;

    invoke-direct {v1, p1}, Landroidx/slice/core/a;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {p0, v1, p2, v0, p3}, Lf0/x;->q(Landroidx/slice/core/a;ILandroid/view/ViewGroup;Z)V

    return v3

    :cond_2
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    :cond_4
    iget-object p3, p1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v1, "image"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    iget-object p3, p1, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast p3, Landroidx/core/graphics/drawable/IconCompat;

    move-object v4, v1

    goto :goto_1

    :cond_5
    iget-object p3, p1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v4, "long"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    move-object v4, p1

    move-object p3, v1

    goto :goto_1

    :cond_6
    move-object p3, v1

    move-object v4, p3

    :goto_1
    if-eqz p3, :cond_13

    const-string v1, "no_tint"

    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v3

    const-string v4, "raw"

    invoke-virtual {p1, v4}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p3, v7}, Landroidx/core/graphics/drawable/IconCompat;->h(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iget-object v7, p0, Lf0/F;->m:Lf0/J;

    if-eqz v7, :cond_8

    iget v7, v7, Lf0/J;->L:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    move v7, v3

    goto :goto_2

    :cond_7
    move v7, v2

    :goto_2
    if-eqz v7, :cond_8

    move v7, v3

    goto :goto_3

    :cond_8
    move v7, v2

    :goto_3
    if-eqz v7, :cond_9

    const-string v7, "large"

    invoke-virtual {p1, v7}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Lb0/b;

    iget-object v7, p0, Lf0/F;->m:Lf0/J;

    iget v7, v7, Lf0/J;->L:F

    invoke-direct {p1, p3, v7}, Lb0/b;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v6, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    const/4 p1, -0x1

    if-eqz v1, :cond_a

    if-eq p2, p1, :cond_a

    invoke-virtual {v6, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_a
    iget-boolean p2, p0, Lf0/x;->P:Z

    if-eqz p2, :cond_b

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_5
    iget-object p2, p0, Lf0/F;->n:Lf0/q;

    if-eqz p2, :cond_e

    iget v0, p2, Lf0/q;->t:I

    if-lez v0, :cond_c

    goto :goto_6

    :cond_c
    iget v0, p0, Lf0/x;->e0:I

    :goto_6
    iput v0, p0, Lf0/x;->e0:I

    iget p2, p2, Lf0/q;->v:I

    if-lez p2, :cond_d

    goto :goto_7

    :cond_d
    iget p2, p0, Lf0/x;->d0:I

    :goto_7
    iput p2, p0, Lf0/x;->d0:I

    :cond_e
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_f

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_8

    :cond_f
    iget v0, p0, Lf0/x;->d0:I

    :goto_8
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz v4, :cond_10

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v5

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_9

    :cond_10
    iget p3, p0, Lf0/x;->d0:I

    :goto_9
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v6, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_12

    iget p2, p0, Lf0/x;->d0:I

    if-ne p2, p1, :cond_11

    iget p0, p0, Lf0/x;->e0:I

    div-int/lit8 p0, p0, 0x2

    goto :goto_a

    :cond_11
    iget p0, p0, Lf0/x;->e0:I

    sub-int/2addr p2, p0

    div-int/lit8 p0, p2, 0x2

    goto :goto_a

    :cond_12
    move p0, v2

    :goto_a
    invoke-virtual {v6, p0, p0, p0, p0}, Landroid/widget/ImageView;->setPadding(IIII)V

    move-object v1, v6

    goto :goto_b

    :cond_13
    if-eqz v4, :cond_15

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->e()J

    move-result-wide v4

    invoke-static {p2, v4, v5}, Lf0/P;->d(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lf0/F;->m:Lf0/J;

    if-eqz p1, :cond_14

    iget p1, p1, Lf0/J;->h:I

    int-to-float p1, p1

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Lf0/F;->n:Lf0/q;

    invoke-virtual {p0}, Lf0/q;->b()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_15
    :goto_b
    if-eqz v1, :cond_16

    move v2, v3

    :cond_16
    return v2
.end method

.method public final s(Z)V
    .locals 8

    iget-object v0, p0, Lf0/x;->J:Lf0/p;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lf0/p;->m:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual {p0}, Lf0/F;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lf0/x;->J:Lf0/p;

    iget-object v2, v0, Lf0/p;->j:Landroidx/slice/SliceItem;

    if-nez v2, :cond_2

    iget-object v2, v0, Lf0/p;->i:Landroidx/slice/SliceItem;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf0/x;->J:Lf0/p;

    iget-object v2, v0, Lf0/p;->i:Landroidx/slice/SliceItem;

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lf0/F;->f:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-wide v4, p0, Lf0/F;->g:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide v4, 0x7528ad000L

    cmp-long v0, v6, v4

    if-lez v0, :cond_3

    div-long/2addr v6, v4

    long-to-int v0, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f110002

    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-wide/32 v4, 0x5265c00

    cmp-long v0, v6, v4

    if-lez v0, :cond_4

    div-long/2addr v6, v4

    long-to-int v0, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const/high16 v6, 0x7f110000

    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-wide/32 v4, 0xea60

    cmp-long v0, v6, v4

    if-lez v0, :cond_5

    div-long/2addr v6, v4

    long-to-int v0, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f110001

    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f130027

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v3

    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->f()Ljava/lang/CharSequence;

    move-result-object v3

    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    if-eqz v2, :cond_8

    const-string v4, "partial"

    invoke-virtual {v2, v4}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move v2, v5

    goto :goto_4

    :cond_9
    :goto_3
    move v2, v1

    :goto_4
    if-eqz v2, :cond_c

    iget-object v4, p0, Lf0/x;->u:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lf0/F;->m:Lf0/J;

    if-eqz v4, :cond_c

    iget-object v6, p0, Lf0/x;->u:Landroid/widget/TextView;

    iget-boolean v7, p0, Lf0/x;->M:Z

    if-eqz v7, :cond_a

    iget v4, v4, Lf0/J;->e:I

    goto :goto_5

    :cond_a
    iget v4, v4, Lf0/J;->h:I

    :goto_5
    int-to-float v4, v4

    invoke-virtual {v6, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lf0/x;->u:Landroid/widget/TextView;

    iget-object v6, p0, Lf0/F;->n:Lf0/q;

    invoke-virtual {v6}, Lf0/q;->b()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v4, p0, Lf0/x;->M:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lf0/F;->m:Lf0/J;

    iget v4, v4, Lf0/J;->f:I

    goto :goto_6

    :cond_b
    iget-object v4, p0, Lf0/F;->m:Lf0/J;

    iget v4, v4, Lf0/J;->i:I

    :goto_6
    iget-object v6, p0, Lf0/x;->u:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v4, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_c
    const/4 v4, 0x2

    if-eqz v0, :cond_f

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " \u00b7 "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v5, v7, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Lf0/x;->v:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lf0/F;->m:Lf0/J;

    if-eqz v3, :cond_f

    iget-object v6, p0, Lf0/x;->v:Landroid/widget/TextView;

    iget-boolean v7, p0, Lf0/x;->M:Z

    if-eqz v7, :cond_e

    iget v3, v3, Lf0/J;->e:I

    goto :goto_7

    :cond_e
    iget v3, v3, Lf0/J;->h:I

    :goto_7
    int-to-float v3, v3

    invoke-virtual {v6, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lf0/x;->v:Landroid/widget/TextView;

    iget-object v6, p0, Lf0/F;->n:Lf0/q;

    invoke-virtual {v6}, Lf0/q;->b()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    iget-object v3, p0, Lf0/x;->v:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_10

    move v6, v7

    goto :goto_8

    :cond_10
    move v6, v5

    :goto_8
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lf0/x;->u:Landroid/widget/TextView;

    if-eqz v2, :cond_11

    move v7, v5

    :cond_11
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lf0/x;->J:Lf0/p;

    iget-boolean v3, v3, Lf0/p;->o:Z

    if-eqz v3, :cond_13

    iget-boolean v3, p0, Lf0/x;->O:Z

    if-eqz v3, :cond_12

    goto :goto_9

    :cond_12
    move v3, v5

    goto :goto_a

    :cond_13
    :goto_9
    move v3, v1

    :goto_a
    if-eqz v3, :cond_14

    if-nez p1, :cond_14

    if-eqz v2, :cond_14

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_b

    :cond_14
    move v4, v1

    :goto_b
    iget-object p1, p0, Lf0/x;->u:Landroid/widget/TextView;

    if-ne v4, v1, :cond_15

    goto :goto_c

    :cond_15
    move v1, v5

    :goto_c
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Lf0/x;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lf0/x;->u:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    iget-object p0, p0, Lf0/x;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_16
    :goto_d
    return-void
.end method

.method public final t()I
    .locals 3

    iget-object v0, p0, Lf0/x;->J:Lf0/p;

    iget-object v1, p0, Lf0/F;->m:Lf0/J;

    iget-object v2, p0, Lf0/F;->o:Lf0/O;

    invoke-virtual {v0, v1, v2}, Lf0/p;->a(Lf0/J;Lf0/O;)I

    move-result v0

    iget-object v1, p0, Lf0/x;->C:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    if-nez v1, :cond_0

    iget-object v1, p0, Lf0/F;->m:Lf0/J;

    iget v1, v1, Lf0/J;->s:I

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lf0/x;->H:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lf0/F;->m:Lf0/J;

    iget p0, p0, Lf0/J;->t:I

    sub-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public final u(Z)V
    .locals 13

    iget-object v0, p0, Lf0/x;->K:Landroidx/slice/core/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ASDF"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf0/x;->K:Landroidx/slice/core/a;

    iget-object v2, v2, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lf0/x;->K:Landroidx/slice/core/a;

    iget-object v0, v0, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    const-string v1, "long"

    const-string v2, "millis"

    invoke-static {v0, v1, v2}, Ld0/e;->i(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lf0/x;->I:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->e()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz p1, :cond_2

    new-instance p1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f140139

    new-instance v9, Lf0/v;

    iget-object v0, p0, Lf0/x;->K:Landroidx/slice/core/a;

    iget-object v0, v0, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    invoke-direct {v9, p0, v0, v1}, Lf0/v;-><init>(Lf0/x;Landroidx/slice/SliceItem;I)V

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 p0, 0x2

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 p0, 0x5

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f140139

    new-instance v5, Lf0/w;

    iget-object v0, p0, Lf0/x;->K:Landroidx/slice/core/a;

    iget-object v0, v0, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    invoke-direct {v5, p0, v0, v1}, Lf0/w;-><init>(Lf0/x;Landroidx/slice/SliceItem;I)V

    const/16 p0, 0xb

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, v3

    move v2, v4

    move-object v3, v5

    move v4, p0

    move v5, v6

    move v6, v7

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {p1}, Landroid/app/TimePickerDialog;->show()V

    :goto_0
    return-void
.end method

.method public final v(Z)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lf0/x;->P:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lf0/x;->w()V

    :cond_1
    iget-object v2, p0, Lf0/x;->J:Lf0/p;

    invoke-virtual {v2}, Lf0/G;->b()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lf0/x;->J:Lf0/p;

    invoke-virtual {v2}, Lf0/G;->b()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :cond_2
    iget-object v2, p0, Lf0/x;->J:Lf0/p;

    invoke-virtual {v2}, Lf0/p;->f()Z

    move-result v2

    const/16 v4, 0x8

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0d0028

    invoke-virtual {p1, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lf0/r;

    invoke-direct {v1, p0, p1}, Lf0/r;-><init>(Lf0/x;Landroid/widget/Button;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Lf0/F;->e:I

    if-eq v1, v3, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_3
    iput-object p1, p0, Lf0/x;->B:Landroid/view/View;

    iget-object v1, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lf0/x;->F:Ljava/util/Set;

    iget-object v2, p0, Lf0/x;->J:Lf0/p;

    iget-object v2, v2, Lf0/G;->a:Landroidx/slice/SliceItem;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v0, p0, Lf0/x;->G:Z

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Lf0/x;->A()V

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lf0/x;->J:Lf0/p;

    iget-object v2, v2, Lf0/G;->d:Landroidx/slice/SliceItem;

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    iget-object v2, v2, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_6
    move-object v2, v5

    :goto_1
    if-eqz v2, :cond_7

    iget-object v6, p0, Lf0/x;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v2, p0, Lf0/x;->J:Lf0/p;

    iget-boolean v6, v2, Lf0/p;->o:Z

    if-eqz v6, :cond_8

    iget-boolean v7, v2, Lf0/p;->q:Z

    if-nez v7, :cond_8

    move-object v7, v5

    goto :goto_2

    :cond_8
    iget-object v7, v2, Lf0/p;->g:Landroidx/slice/SliceItem;

    :goto_2
    iput-object v7, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    if-eqz v7, :cond_a

    if-eqz v6, :cond_9

    iget-boolean v2, v2, Lf0/p;->q:Z

    if-eqz v2, :cond_a

    :cond_9
    move v2, v0

    goto :goto_3

    :cond_a
    move v2, v1

    :goto_3
    if-eqz v2, :cond_b

    iget v2, p0, Lf0/F;->e:I

    invoke-virtual {p0, v7, v2, v0}, Lf0/x;->r(Landroidx/slice/SliceItem;IZ)Z

    move-result v2

    :cond_b
    iget-object v6, p0, Lf0/x;->q:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_c

    move v2, v1

    goto :goto_4

    :cond_c
    move v2, v4

    :goto_4
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lf0/x;->J:Lf0/p;

    iget-object v2, v2, Lf0/p;->h:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_d

    iget-object v6, p0, Lf0/x;->t:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->f()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v6, p0, Lf0/F;->m:Lf0/J;

    if-eqz v6, :cond_10

    iget-object v7, p0, Lf0/x;->t:Landroid/widget/TextView;

    iget-boolean v8, p0, Lf0/x;->M:Z

    if-eqz v8, :cond_e

    iget v6, v6, Lf0/J;->d:I

    goto :goto_5

    :cond_e
    iget v6, v6, Lf0/J;->g:I

    :goto_5
    int-to-float v6, v6

    invoke-virtual {v7, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lf0/x;->t:Landroid/widget/TextView;

    iget-object v7, p0, Lf0/F;->n:Lf0/q;

    iget-object v8, v7, Lf0/q;->x:Ljava/lang/Integer;

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_6

    :cond_f
    iget-object v7, v7, Lf0/q;->a:Lf0/J;

    iget v7, v7, Lf0/J;->b:I

    :goto_6
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    iget-object v6, p0, Lf0/x;->t:Landroid/widget/TextView;

    if-eqz v2, :cond_11

    move v7, v1

    goto :goto_7

    :cond_11
    move v7, v4

    :goto_7
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_12

    move v2, v0

    goto :goto_8

    :cond_12
    move v2, v1

    :goto_8
    invoke-virtual {p0, v2}, Lf0/x;->s(Z)V

    iget-object v2, p0, Lf0/x;->w:Landroid/view/View;

    iget-object v6, p0, Lf0/x;->J:Lf0/p;

    iget-boolean v6, v6, Lf0/p;->r:Z

    if-eqz v6, :cond_13

    move v6, v1

    goto :goto_9

    :cond_13
    move v6, v4

    :goto_9
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lf0/x;->J:Lf0/p;

    iget-object v2, v2, Lf0/p;->f:Landroidx/slice/SliceItem;

    const/4 v6, 0x2

    if-eqz v2, :cond_17

    iget-object v7, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    if-eq v2, v7, :cond_17

    new-instance v7, Landroidx/slice/core/a;

    invoke-direct {v7, v2}, Landroidx/slice/core/a;-><init>(Landroidx/slice/SliceItem;)V

    iput-object v7, p0, Lf0/x;->K:Landroidx/slice/core/a;

    invoke-virtual {v7}, Landroidx/slice/core/a;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lf0/x;->K:Landroidx/slice/core/a;

    invoke-virtual {v2}, Landroidx/slice/core/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_a
    move v2, v3

    goto :goto_b

    :sswitch_0
    const-string v7, "date_picker"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_a

    :cond_14
    move v2, v6

    goto :goto_b

    :sswitch_1
    const-string v7, "time_picker"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_a

    :cond_15
    move v2, v0

    goto :goto_b

    :sswitch_2
    const-string v7, "toggle"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_a

    :cond_16
    move v2, v1

    :goto_b
    packed-switch v2, :pswitch_data_0

    goto :goto_c

    :pswitch_0
    iget-object p1, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v0}, Lf0/x;->y(Landroid/view/View;Z)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v0}, Lf0/x;->y(Landroid/view/View;Z)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lf0/x;->K:Landroidx/slice/core/a;

    iget v2, p0, Lf0/F;->e:I

    iget-object v3, p0, Lf0/x;->A:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v2, v3, v1}, Lf0/x;->q(Landroidx/slice/core/a;ILandroid/view/ViewGroup;Z)V

    iget-object p1, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v0}, Lf0/x;->y(Landroid/view/View;Z)V

    return-void

    :cond_17
    :goto_c
    iget-object v2, p0, Lf0/x;->J:Lf0/p;

    iget-object v2, v2, Lf0/p;->m:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_30

    iget-object v7, p0, Lf0/x;->K:Landroidx/slice/core/a;

    if-eqz v7, :cond_18

    iget-object v7, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7, v0}, Lf0/x;->y(Landroid/view/View;Z)V

    :cond_18
    iput-object v2, p0, Lf0/x;->W:Landroidx/slice/SliceItem;

    const-string v7, "int"

    const-string v8, "range_mode"

    invoke-static {v2, v7, v8}, Ld0/e;->i(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->d()I

    move-result v2

    if-ne v2, v6, :cond_19

    move v2, v0

    goto :goto_d

    :cond_19
    move v2, v1

    :goto_d
    iput-boolean v2, p0, Lf0/x;->D:Z

    :cond_1a
    if-nez p1, :cond_2f

    iget-object p1, p0, Lf0/x;->W:Landroidx/slice/SliceItem;

    const-string v2, "min"

    invoke-static {p1, v7, v2}, Ld0/e;->i(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->d()I

    move-result p1

    goto :goto_e

    :cond_1b
    move p1, v1

    :goto_e
    iput p1, p0, Lf0/x;->U:I

    iget-object v2, p0, Lf0/x;->W:Landroidx/slice/SliceItem;

    const-string v9, "max"

    invoke-static {v2, v7, v9}, Ld0/e;->i(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    iget-boolean v9, p0, Lf0/x;->D:Z

    if-eqz v9, :cond_1c

    const/4 v9, 0x5

    goto :goto_f

    :cond_1c
    const/16 v9, 0x64

    :goto_f
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->d()I

    move-result v9

    :cond_1d
    iput v9, p0, Lf0/x;->V:I

    iget-object v2, p0, Lf0/x;->W:Landroidx/slice/SliceItem;

    const-string v9, "value"

    invoke-static {v2, v7, v9}, Ld0/e;->i(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->d()I

    move-result v2

    sub-int/2addr v2, p1

    goto :goto_10

    :cond_1e
    move v2, v1

    :goto_10
    iput v2, p0, Lf0/x;->T:I

    iget-object p1, p0, Lf0/x;->R:Landroid/os/Handler;

    if-nez p1, :cond_1f

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lf0/x;->R:Landroid/os/Handler;

    :cond_1f
    iget-boolean p1, p0, Lf0/x;->D:Z

    const/4 v2, -0x2

    if-eqz p1, :cond_20

    new-instance p1, Landroid/widget/RatingBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v4, p0, Lf0/F;->e:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setStepSize(F)V

    iget v0, p0, Lf0/x;->V:I

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setNumStars(I)V

    iget v0, p0, Lf0/x;->T:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setRating(F)V

    invoke-virtual {p1, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lf0/x;->i0:Lf0/u;

    invoke-virtual {p1, v2}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    iput-object v0, p0, Lf0/x;->C:Landroid/view/View;

    goto/16 :goto_18

    :cond_20
    iget-object p1, p0, Lf0/x;->W:Landroidx/slice/SliceItem;

    invoke-static {p1, v7, v8}, Ld0/e;->i(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->d()I

    move-result p1

    if-ne p1, v0, :cond_21

    move p1, v0

    goto :goto_11

    :cond_21
    move p1, v1

    :goto_11
    iget-object v6, p0, Lf0/x;->W:Landroidx/slice/SliceItem;

    iget-object v6, v6, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v7, "action"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    if-nez v7, :cond_22

    move v7, v0

    goto :goto_12

    :cond_22
    move v7, v1

    :goto_12
    if-eqz v6, :cond_24

    if-eqz v7, :cond_23

    new-instance v5, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    goto :goto_14

    :cond_23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0d002a

    invoke-virtual {v5, v7, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iget-object v7, p0, Lf0/F;->n:Lf0/q;

    if-eqz v7, :cond_28

    if-eqz v5, :cond_28

    iget v7, v7, Lf0/q;->o:I

    if-ltz v7, :cond_28

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_14

    :cond_24
    if-eqz v7, :cond_25

    new-instance v7, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1010078

    invoke-direct {v7, v8, v5, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v5, v7

    goto :goto_13

    :cond_25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0d0022

    invoke-virtual {v5, v7, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iget-object v7, p0, Lf0/F;->n:Lf0/q;

    if-eqz v7, :cond_27

    if-eqz v5, :cond_26

    iget v7, v7, Lf0/q;->p:I

    if-ltz v7, :cond_26

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_26
    iget-object v7, p0, Lf0/F;->n:Lf0/q;

    iget v8, v7, Lf0/q;->q:I

    iget v7, v7, Lf0/q;->r:I

    invoke-static {v8, v5, v7}, Lf0/x;->z(ILandroid/view/View;I)V

    :cond_27
    :goto_13
    if-eqz p1, :cond_28

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_28
    :goto_14
    if-eqz p1, :cond_29

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_15

    :cond_29
    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_15
    iget v8, p0, Lf0/F;->e:I

    if-eq v8, v3, :cond_2b

    if-eqz v7, :cond_2b

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    if-eqz p1, :cond_2a

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_16

    :cond_2a
    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2b
    :goto_16
    iget p1, p0, Lf0/x;->V:I

    iget v7, p0, Lf0/x;->U:I

    sub-int/2addr p1, v7

    invoke-virtual {v5, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget p1, p0, Lf0/x;->T:I

    invoke-virtual {v5, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    if-nez p1, :cond_2c

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_17

    :cond_2c
    iget-object p1, p0, Lf0/x;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lf0/x;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_17
    iput-object v5, p0, Lf0/x;->C:Landroid/view/View;

    if-eqz v6, :cond_2f

    iget-object p1, p0, Lf0/x;->J:Lf0/p;

    invoke-virtual {p1}, Lf0/p;->e()Landroidx/slice/SliceItem;

    move-result-object p1

    iget-object v0, p0, Lf0/x;->C:Landroid/view/View;

    check-cast v0, Landroid/widget/SeekBar;

    if-eqz p1, :cond_2d

    iget-object p1, p1, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast p1, Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/graphics/drawable/IconCompat;->h(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2d

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_2d
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v2, p0, Lf0/F;->e:I

    if-eq v2, v3, :cond_2e

    if-eqz p1, :cond_2e

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_2e
    iget-object p1, p0, Lf0/x;->h0:Lf0/t;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_2f
    :goto_18
    iget-object p1, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    if-nez p1, :cond_30

    return-void

    :cond_30
    iget-object p1, p0, Lf0/x;->J:Lf0/p;

    iget-object p1, p1, Lf0/p;->n:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_36

    iput-object p1, p0, Lf0/x;->a0:Landroidx/slice/SliceItem;

    iget-object v0, p0, Lf0/x;->R:Landroid/os/Handler;

    if-nez v0, :cond_31

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lf0/x;->R:Landroid/os/Handler;

    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf0/x;->b0:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf0/x;->c0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object p1

    move v0, v1

    :goto_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    const-string v3, "selection_option"

    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_1a

    :cond_32
    const-string v3, "selection_option_key"

    const-string v4, "text"

    invoke-static {v2, v4, v3}, Ld0/e;->i(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    const-string v5, "selection_option_value"

    invoke-static {v2, v4, v5}, Ld0/e;->i(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v3, :cond_34

    if-nez v2, :cond_33

    goto :goto_1a

    :cond_33
    iget-object v4, p0, Lf0/x;->b0:Ljava/util/ArrayList;

    iget-object v3, v3, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lf0/x;->c0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->f()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0025

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lf0/x;->H:Landroid/widget/Spinner;

    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lf0/x;->c0:Ljava/util/ArrayList;

    const v2, 0x7f0d0027

    invoke-direct {p1, v0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x7f0d0026

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lf0/x;->H:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lf0/x;->H:Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lf0/x;->H:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void

    :cond_36
    invoke-virtual {p0}, Lf0/x;->B()V

    invoke-virtual {p0}, Lf0/x;->A()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x33c144ac -> :sswitch_2
        0x2d3f6240 -> :sswitch_1
        0x4a87b63f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w()V
    .locals 6

    iget-object v0, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    iget-object v0, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lf0/x;->y(Landroid/view/View;Z)V

    iget-object v0, p0, Lf0/x;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lf0/x;->y(Landroid/view/View;Z)V

    iget-object v0, p0, Lf0/x;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lf0/x;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lf0/x;->A:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf0/x;->t:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf0/x;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf0/x;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf0/x;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lf0/x;->y:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lf0/x;->z:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iput-object v3, p0, Lf0/x;->K:Landroidx/slice/core/a;

    iget-object v0, p0, Lf0/x;->w:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lf0/x;->x:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lf0/x;->B:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lf0/x;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lf0/x;->B:Landroid/view/View;

    :cond_0
    iput-boolean v1, p0, Lf0/x;->P:Z

    iput-object v3, p0, Lf0/x;->W:Landroidx/slice/SliceItem;

    iput v1, p0, Lf0/x;->U:I

    iput v1, p0, Lf0/x;->V:I

    iput v1, p0, Lf0/x;->T:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lf0/x;->S:J

    iput-object v3, p0, Lf0/x;->R:Landroid/os/Handler;

    iget-object v0, p0, Lf0/x;->C:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    if-nez v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lf0/x;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :goto_0
    iput-object v3, p0, Lf0/x;->C:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lf0/x;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-object v3, p0, Lf0/x;->L:Landroidx/slice/SliceItem;

    iget-object v0, p0, Lf0/x;->E:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lf0/x;->H:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lf0/x;->H:Landroid/widget/Spinner;

    :cond_3
    iput-object v3, p0, Lf0/x;->a0:Landroidx/slice/SliceItem;

    return-void
.end method

.method public final x()V
    .locals 5

    iget-object v0, p0, Lf0/x;->W:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lf0/x;->S:J

    iget-object v0, p0, Lf0/x;->W:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.app.slice.extra.RANGE_VALUE"

    iget v4, p0, Lf0/x;->T:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceItem;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    iget-object v0, p0, Lf0/F;->d:Lf0/M;

    if-eqz v0, :cond_1

    new-instance v0, Lf0/c;

    invoke-virtual {p0}, Lf0/F;->b()I

    move-result v1

    iget v2, p0, Lf0/x;->I:I

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4, v2}, Lf0/c;-><init>(IIII)V

    iget v1, p0, Lf0/x;->T:I

    iput v1, v0, Lf0/c;->h:I

    iget-object v1, p0, Lf0/F;->d:Lf0/M;

    iget-object p0, p0, Lf0/x;->W:Landroidx/slice/SliceItem;

    check-cast v1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->k(Landroidx/slice/SliceItem;Lf0/c;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RowView"

    const-string v1, "PendingIntent for slice cannot be sent"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final y(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x101030e

    invoke-static {v0, p0}, Lf0/P;->c(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
