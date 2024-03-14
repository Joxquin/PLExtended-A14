.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Lz/c;
.source "SourceFile"


# instance fields
.field public a:LQ/i;

.field public b:Z

.field public c:I

.field public final d:F

.field public e:F

.field public f:F

.field public final g:Ll2/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lz/c;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    new-instance v0, Ll2/c;

    invoke-direct {v0, p0}, Ll2/c;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Ll2/c;

    return-void
.end method


# virtual methods
.method public g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    if-eq v1, p2, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, p2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(ILandroid/view/View;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    :goto_0
    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LQ/i;

    if-nez p2, :cond_2

    new-instance p2, LQ/i;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Ll2/c;

    invoke-direct {p2, v0, p1, v1}, LQ/i;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;LQ/h;)V

    iput-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LQ/i;

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LQ/i;

    invoke-virtual {p0, p3}, LQ/i;->q(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method public getListener()Ll2/e;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    sget-object p1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p2}, Landroidx/core/view/x;->b(Landroid/view/View;)I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p2, p1}, Landroidx/core/view/x;->o(Landroid/view/View;I)V

    const/high16 p1, 0x100000

    invoke-static {p2, p1}, Landroidx/core/view/J;->f(Landroid/view/View;I)V

    invoke-static {p2, p3}, Landroidx/core/view/J;->d(Landroid/view/View;I)V

    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->s(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, LM/c;->j:LM/c;

    new-instance v0, Ll2/d;

    invoke-direct {v0, p0}, Ll2/d;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    invoke-static {p2, p1, v0}, Landroidx/core/view/J;->g(Landroid/view/View;LM/c;LM/r;)V

    :cond_0
    return p3
.end method

.method public final r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LQ/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, LQ/i;->j(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public s(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
