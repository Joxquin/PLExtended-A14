.class public final Le/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a;


# instance fields
.field public final a:Li/a;

.field public final synthetic b:Le/D;


# direct methods
.method public constructor <init>(Le/D;Li/f;)V
    .locals 0

    iput-object p1, p0, Le/v;->b:Le/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/v;->a:Li/a;

    return-void
.end method


# virtual methods
.method public final a(Li/b;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Le/v;->a:Li/a;

    invoke-interface {p0, p1, p2}, Li/a;->a(Li/b;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final b(Li/b;Lj/o;)Z
    .locals 2

    iget-object v0, p0, Le/v;->b:Le/D;

    iget-object v0, v0, Le/D;->C:Landroid/view/ViewGroup;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/B;->c(Landroid/view/View;)V

    iget-object p0, p0, Le/v;->a:Li/a;

    invoke-interface {p0, p1, p2}, Li/a;->b(Li/b;Lj/o;)Z

    move-result p0

    return p0
.end method

.method public final c(Li/b;)V
    .locals 3

    iget-object v0, p0, Le/v;->a:Li/a;

    invoke-interface {v0, p1}, Li/a;->c(Li/b;)V

    iget-object p1, p0, Le/v;->b:Le/D;

    iget-object v0, p1, Le/D;->x:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p1, Le/D;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Le/D;->y:Le/s;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Le/D;->z:Landroidx/core/view/O;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/core/view/O;->b()V

    :cond_1
    iget-object v0, p1, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/core/view/J;->a(Landroid/view/View;)Landroidx/core/view/O;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/O;->a(F)V

    iput-object v0, p1, Le/D;->z:Landroidx/core/view/O;

    new-instance v1, Le/u;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Le/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/O;->d(Landroidx/core/view/P;)V

    :cond_2
    iget-object p0, p1, Le/D;->o:Le/p;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Le/p;->a()V

    :cond_3
    const/4 p0, 0x0

    iput-object p0, p1, Le/D;->v:Li/b;

    iget-object p0, p1, Le/D;->C:Landroid/view/ViewGroup;

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/B;->c(Landroid/view/View;)V

    invoke-virtual {p1}, Le/D;->S()V

    return-void
.end method

.method public final d(Li/b;Lj/o;)Z
    .locals 0

    iget-object p0, p0, Le/v;->a:Li/a;

    invoke-interface {p0, p1, p2}, Li/a;->d(Li/b;Lj/o;)Z

    move-result p0

    return p0
.end method
