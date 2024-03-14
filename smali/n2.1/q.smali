.class public final Ln2/q;
.super Le/F;
.source "SourceFile"


# instance fields
.field public i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field public j:Landroid/widget/FrameLayout;

.field public k:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public l:Landroid/widget/FrameLayout;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Ln2/p;

.field public final q:Z

.field public final r:Ln2/o;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0400aa

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    const p1, 0x7f1402a1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Le/F;-><init>(ILandroid/content/Context;)V

    iput-boolean v0, p0, Ln2/q;->m:Z

    iput-boolean v0, p0, Ln2/q;->n:Z

    new-instance p1, Ln2/o;

    invoke-direct {p1, p0}, Ln2/o;-><init>(Ln2/q;)V

    iput-object p1, p0, Ln2/q;->r:Ln2/o;

    invoke-virtual {p0}, Le/F;->f()Le/r;

    move-result-object p1

    invoke-virtual {p1, v0}, Le/r;->s(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p2, 0x7f0401d4

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Ln2/q;->q:Z

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Ln2/q;->i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ln2/q;->h()V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Ln2/q;->j:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0052

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ln2/q;->j:Landroid/widget/FrameLayout;

    const v1, 0x7f0a010a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Ln2/q;->k:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, p0, Ln2/q;->j:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0122

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ln2/q;->l:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Ln2/q;->i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Ln2/q;->r:Ln2/o;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Ln2/q;->i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean p0, p0, Ln2/q;->m:Z

    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z(Z)V

    :cond_1
    return-void
.end method

.method public final i(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Ln2/q;->h()V

    iget-object v0, p0, Ln2/q;->j:Landroid/widget/FrameLayout;

    const v1, 0x7f0a010a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    iget-boolean p2, p0, Ln2/q;->q:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Ln2/q;->l:Landroid/widget/FrameLayout;

    new-instance v1, Ln2/k;

    invoke-direct {v1, p0}, Ln2/k;-><init>(Ln2/q;)V

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p2, v1}, Landroidx/core/view/D;->l(Landroid/view/View;Landroidx/core/view/r;)V

    :cond_1
    iget-object p2, p0, Ln2/q;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-nez p3, :cond_2

    iget-object p2, p0, Ln2/q;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Ln2/q;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const p1, 0x7f0a03a5

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ln2/l;

    invoke-direct {p2, p0}, Ln2/l;-><init>(Ln2/q;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Ln2/q;->l:Landroid/widget/FrameLayout;

    new-instance p2, Ln2/m;

    invoke-direct {p2, p0}, Ln2/m;-><init>(Ln2/q;)V

    invoke-static {p1, p2}, Landroidx/core/view/J;->h(Landroid/view/View;Landroidx/core/view/b;)V

    iget-object p1, p0, Ln2/q;->l:Landroid/widget/FrameLayout;

    new-instance p2, Ln2/n;

    invoke-direct {p2}, Ln2/n;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p0, Ln2/q;->j:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Ln2/q;->q:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v3, 0xff

    if-ge v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Ln2/q;->j:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    :cond_1
    iget-object v3, p0, Ln2/q;->k:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v3, :cond_2

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    :cond_2
    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    iget-object p0, p0, Ln2/q;->p:Ln2/p;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Ln2/p;->e(Landroid/view/Window;)V

    :cond_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Le/F;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    const/high16 p1, -0x80000000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object p0, p0, Ln2/q;->p:Ln2/p;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ln2/p;->e(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/activity/n;->onStart()V

    iget-object p0, p0, Ln2/q;->i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    :cond_0
    return-void
.end method

.method public final setCancelable(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-boolean v0, p0, Ln2/q;->m:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Ln2/q;->m:Z

    iget-object p0, p0, Ln2/q;->i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z(Z)V

    :cond_0
    return-void
.end method

.method public final setCanceledOnTouchOutside(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Ln2/q;->m:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Ln2/q;->m:Z

    :cond_0
    iput-boolean p1, p0, Ln2/q;->n:Z

    iput-boolean v0, p0, Ln2/q;->o:Z

    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v0}, Ln2/q;->i(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Le/F;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Ln2/q;->i(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Le/F;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, p2}, Ln2/q;->i(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Le/F;->setContentView(Landroid/view/View;)V

    return-void
.end method
