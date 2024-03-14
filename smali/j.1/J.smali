.class public final Lj/J;
.super Lj/y;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lj/o;

.field public final g:Lj/l;

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:Lk/F0;

.field public final m:Lj/H;

.field public final n:Lj/I;

.field public o:Landroid/widget/PopupWindow$OnDismissListener;

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field public r:Lj/B;

.field public s:Landroid/view/ViewTreeObserver;

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Z


# direct methods
.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Lj/o;Z)V
    .locals 3

    invoke-direct {p0}, Lj/y;-><init>()V

    new-instance v0, Lj/H;

    invoke-direct {v0, p0}, Lj/H;-><init>(Lj/J;)V

    iput-object v0, p0, Lj/J;->m:Lj/H;

    new-instance v0, Lj/I;

    invoke-direct {v0, p0}, Lj/I;-><init>(Lj/J;)V

    iput-object v0, p0, Lj/J;->n:Lj/I;

    const/4 v0, 0x0

    iput v0, p0, Lj/J;->w:I

    iput-object p3, p0, Lj/J;->e:Landroid/content/Context;

    iput-object p5, p0, Lj/J;->f:Lj/o;

    iput-boolean p6, p0, Lj/J;->h:Z

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lj/l;

    const v2, 0x7f0d0013

    invoke-direct {v1, p5, v0, p6, v2}, Lj/l;-><init>(Lj/o;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Lj/J;->g:Lj/l;

    iput p1, p0, Lj/J;->j:I

    iput p2, p0, Lj/J;->k:I

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    const v1, 0x7f070017

    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    iput p6, p0, Lj/J;->i:I

    iput-object p4, p0, Lj/J;->p:Landroid/view/View;

    new-instance p4, Lk/F0;

    invoke-direct {p4, p3, p1, p2}, Lk/F0;-><init>(Landroid/content/Context;II)V

    iput-object p4, p0, Lj/J;->l:Lk/F0;

    invoke-virtual {p5, p0, p3}, Lj/o;->b(Lj/C;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lj/o;Z)V
    .locals 1

    iget-object v0, p0, Lj/J;->f:Lj/o;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lj/J;->dismiss()V

    iget-object p0, p0, Lj/J;->r:Lj/B;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lj/B;->a(Lj/o;Z)V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lj/J;->t:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lj/J;->l:Lk/F0;

    invoke-virtual {p0}, Lk/C0;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj/J;->u:Z

    iget-object p0, p0, Lj/J;->g:Lj/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj/l;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final dismiss()V
    .locals 1

    invoke-virtual {p0}, Lj/J;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lj/J;->l:Lk/F0;

    invoke-virtual {p0}, Lk/C0;->dismiss()V

    :cond_0
    return-void
.end method

.method public final e()Lk/s0;
    .locals 0

    iget-object p0, p0, Lj/J;->l:Lk/F0;

    iget-object p0, p0, Lk/C0;->f:Lk/s0;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i(Lj/B;)V
    .locals 0

    iput-object p1, p0, Lj/J;->r:Lj/B;

    return-void
.end method

.method public final j(Lj/L;)Z
    .locals 9

    invoke-virtual {p1}, Lj/o;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Lj/A;

    iget-object v5, p0, Lj/J;->e:Landroid/content/Context;

    iget-object v6, p0, Lj/J;->q:Landroid/view/View;

    iget-boolean v8, p0, Lj/J;->h:Z

    iget v3, p0, Lj/J;->j:I

    iget v4, p0, Lj/J;->k:I

    move-object v2, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lj/A;-><init>(IILandroid/content/Context;Landroid/view/View;Lj/o;Z)V

    iget-object v2, p0, Lj/J;->r:Lj/B;

    iput-object v2, v0, Lj/A;->i:Lj/B;

    iget-object v3, v0, Lj/A;->j:Lj/y;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Lj/C;->i(Lj/B;)V

    :cond_0
    invoke-static {p1}, Lj/y;->t(Lj/o;)Z

    move-result v2

    iput-boolean v2, v0, Lj/A;->h:Z

    iget-object v3, v0, Lj/A;->j:Lj/y;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lj/y;->n(Z)V

    :cond_1
    iget-object v2, p0, Lj/J;->o:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object v2, v0, Lj/A;->k:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v2, 0x0

    iput-object v2, p0, Lj/J;->o:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Lj/J;->f:Lj/o;

    invoke-virtual {v2, v1}, Lj/o;->c(Z)V

    iget-object v2, p0, Lj/J;->l:Lk/F0;

    iget v3, v2, Lk/C0;->i:I

    invoke-virtual {v2}, Lk/C0;->m()I

    move-result v2

    iget v4, p0, Lj/J;->w:I

    iget-object v5, p0, Lj/J;->p:Landroid/view/View;

    sget-object v6, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v5}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lj/J;->p:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    invoke-virtual {v0}, Lj/A;->b()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v0, Lj/A;->f:Landroid/view/View;

    if-nez v4, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3, v2, v5, v5}, Lj/A;->d(IIZZ)V

    :goto_0
    move v0, v5

    :goto_1
    if-eqz v0, :cond_6

    iget-object p0, p0, Lj/J;->r:Lj/B;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Lj/B;->c(Lj/o;)Z

    :cond_5
    return v5

    :cond_6
    return v1
.end method

.method public final k(Lj/o;)V
    .locals 0

    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lj/J;->p:Landroid/view/View;

    return-void
.end method

.method public final n(Z)V
    .locals 0

    iget-object p0, p0, Lj/J;->g:Lj/l;

    iput-boolean p1, p0, Lj/l;->f:Z

    return-void
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lj/J;->w:I

    return-void
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj/J;->t:Z

    iget-object v1, p0, Lj/J;->f:Lj/o;

    invoke-virtual {v1, v0}, Lj/o;->c(Z)V

    iget-object v0, p0, Lj/J;->s:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj/J;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lj/J;->s:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lj/J;->s:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lj/J;->m:Lj/H;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lj/J;->s:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Lj/J;->q:Landroid/view/View;

    iget-object v1, p0, Lj/J;->n:Lj/I;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lj/J;->o:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

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

    invoke-virtual {p0}, Lj/J;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p(I)V
    .locals 0

    iget-object p0, p0, Lj/J;->l:Lk/F0;

    iput p1, p0, Lk/C0;->i:I

    return-void
.end method

.method public final q(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lj/J;->o:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final r(Z)V
    .locals 0

    iput-boolean p1, p0, Lj/J;->x:Z

    return-void
.end method

.method public final s(I)V
    .locals 0

    iget-object p0, p0, Lj/J;->l:Lk/F0;

    invoke-virtual {p0, p1}, Lk/C0;->h(I)V

    return-void
.end method

.method public final show()V
    .locals 7

    invoke-virtual {p0}, Lj/J;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Lj/J;->t:Z

    const/4 v2, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lj/J;->p:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iput-object v0, p0, Lj/J;->q:Landroid/view/View;

    iget-object v0, p0, Lj/J;->l:Lk/F0;

    iget-object v0, v0, Lk/C0;->C:Lk/K;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lj/J;->l:Lk/F0;

    iput-object p0, v0, Lk/C0;->s:Landroid/widget/AdapterView$OnItemClickListener;

    iput-boolean v1, v0, Lk/C0;->B:Z

    iget-object v0, v0, Lk/C0;->C:Lk/K;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lj/J;->q:Landroid/view/View;

    iget-object v3, p0, Lj/J;->s:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Lj/J;->s:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lj/J;->m:Lj/H;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v3, p0, Lj/J;->n:Lj/I;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Lj/J;->l:Lk/F0;

    iput-object v0, v3, Lk/C0;->r:Landroid/view/View;

    iget v0, p0, Lj/J;->w:I

    iput v0, v3, Lk/C0;->o:I

    iget-boolean v0, p0, Lj/J;->u:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lj/J;->g:Lj/l;

    iget-object v3, p0, Lj/J;->e:Landroid/content/Context;

    iget v4, p0, Lj/J;->i:I

    invoke-static {v0, v3, v4}, Lj/y;->l(Lj/l;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lj/J;->v:I

    iput-boolean v1, p0, Lj/J;->u:Z

    :cond_4
    iget-object v0, p0, Lj/J;->l:Lk/F0;

    iget v3, p0, Lj/J;->v:I

    invoke-virtual {v0, v3}, Lk/C0;->q(I)V

    iget-object v0, p0, Lj/J;->l:Lk/F0;

    const/4 v3, 0x2

    iget-object v0, v0, Lk/C0;->C:Lk/K;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lj/J;->l:Lk/F0;

    iget-object v3, p0, Lj/y;->d:Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_5
    move-object v5, v4

    :goto_1
    iput-object v5, v0, Lk/C0;->A:Landroid/graphics/Rect;

    iget-object v0, p0, Lj/J;->l:Lk/F0;

    invoke-virtual {v0}, Lk/C0;->show()V

    iget-object v0, p0, Lj/J;->l:Lk/F0;

    iget-object v0, v0, Lk/C0;->f:Lk/s0;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v3, p0, Lj/J;->x:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lj/J;->f:Lj/o;

    iget-object v3, v3, Lj/o;->m:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lj/J;->e:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f0d0012

    invoke-virtual {v3, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v6, p0, Lj/J;->f:Lj/o;

    iget-object v6, v6, Lj/o;->m:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v0, v3, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_7
    iget-object v0, p0, Lj/J;->l:Lk/F0;

    iget-object v2, p0, Lj/J;->g:Lj/l;

    invoke-virtual {v0, v2}, Lk/C0;->o(Landroid/widget/ListAdapter;)V

    iget-object p0, p0, Lj/J;->l:Lk/F0;

    invoke-virtual {p0}, Lk/C0;->show()V

    goto :goto_3

    :cond_8
    :goto_2
    move v1, v2

    :goto_3
    if-eqz v1, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
