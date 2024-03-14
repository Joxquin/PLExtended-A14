.class public final Lk2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final d:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final e:Landroid/view/View;

.field public final synthetic f:Lk2/r;


# direct methods
.method public constructor <init>(Lk2/r;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lk2/q;->f:Lk2/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk2/q;->d:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p3, p0, Lk2/q;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lk2/q;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk2/q;->f:Lk2/r;

    iget-object v0, v0, Lk2/r;->d:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk2/q;->f:Lk2/r;

    iget-object v1, p0, Lk2/q;->d:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lk2/q;->e:Landroid/view/View;

    iget-object v3, v0, Lk2/r;->d:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lk2/r;->A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object v0, p0, Lk2/q;->e:Landroid/view/View;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, p0}, Landroidx/core/view/x;->j(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk2/q;->f:Lk2/r;

    iget-object v1, p0, Lk2/q;->d:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object p0, p0, Lk2/q;->e:Landroid/view/View;

    invoke-virtual {v0, p0, v1}, Lk2/r;->y(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    :cond_1
    :goto_0
    return-void
.end method
