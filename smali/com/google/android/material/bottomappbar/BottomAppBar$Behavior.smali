.class public Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.super Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
.source "SourceFile"


# instance fields
.field public final f:Landroid/graphics/Rect;

.field public g:Ljava/lang/ref/WeakReference;

.field public final h:Lm2/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;-><init>()V

    .line 2
    new-instance v0, Lm2/c;

    invoke-direct {v0, p0}, Lm2/c;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->h:Lm2/c;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->f:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lm2/c;

    invoke-direct {p1, p0}, Lm2/c;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->h:Lm2/c;

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->f:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 2

    check-cast p2, Lm2/f;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->g:Ljava/lang/ref/WeakReference;

    sget v0, Lm2/f;->U:I

    invoke-virtual {p2}, Lm2/f;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/A;->c(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lz/f;

    const/16 p3, 0x11

    iput p3, p1, Lz/f;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lz/f;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    instance-of p1, v0, Lw2/g;

    const/4 p3, 0x0

    if-eqz p1, :cond_5

    check-cast v0, Lw2/g;

    invoke-virtual {v0}, Lw2/g;->e()Lw2/p;

    move-result-object p1

    iget-object p1, p1, Lw2/p;->d:Lj2/g;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f02001e

    invoke-static {v1, p1}, Lj2/g;->a(ILandroid/content/Context;)Lj2/g;

    move-result-object p1

    invoke-virtual {v0}, Lw2/g;->e()Lw2/p;

    move-result-object v1

    iput-object p1, v1, Lw2/p;->d:Lj2/g;

    :cond_0
    invoke-virtual {v0}, Lw2/g;->e()Lw2/p;

    move-result-object p1

    iget-object p1, p1, Lw2/p;->e:Lj2/g;

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f02001d

    invoke-static {v1, p1}, Lj2/g;->a(ILandroid/content/Context;)Lj2/g;

    move-result-object p1

    invoke-virtual {v0}, Lw2/g;->e()Lw2/p;

    move-result-object v1

    iput-object p1, v1, Lw2/p;->e:Lj2/g;

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->h:Lm2/c;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    iget-object p1, p0, Lw2/p;->j:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lw2/p;->j:Ljava/util/ArrayList;

    :cond_2
    iget-object p0, p0, Lw2/p;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lm2/b;

    invoke-direct {p0, p2}, Lm2/b;-><init>(Lm2/f;)V

    invoke-virtual {v0}, Lw2/g;->e()Lw2/p;

    move-result-object p1

    iget-object p2, p1, Lw2/p;->i:Ljava/util/ArrayList;

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lw2/p;->i:Ljava/util/ArrayList;

    :cond_3
    iget-object p1, p1, Lw2/p;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    new-instance p1, Lw2/f;

    invoke-direct {p1, v0}, Lw2/f;-><init>(Lw2/g;)V

    iget-object p2, p0, Lw2/p;->k:Ljava/util/ArrayList;

    if-nez p2, :cond_4

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lw2/p;->k:Ljava/util/ArrayList;

    :cond_4
    iget-object p0, p0, Lw2/p;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    throw p3

    :cond_6
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n(Landroid/view/View;I)V

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final p(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    check-cast p2, Lm2/f;

    const/4 p0, 0x0

    return p0
.end method
