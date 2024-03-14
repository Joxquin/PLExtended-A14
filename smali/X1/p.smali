.class public final LX1/p;
.super Landroid/view/ActionMode$Callback2;
.source "SourceFile"


# instance fields
.field public final a:LL1/q;

.field public final b:LX1/u;

.field public final synthetic c:LX1/u;


# direct methods
.method public constructor <init>(LX1/u;LL1/q;LX1/u;)V
    .locals 0

    iput-object p1, p0, LX1/p;->c:LX1/u;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    iput-object p2, p0, LX1/p;->a:LL1/q;

    iput-object p3, p0, LX1/p;->b:LX1/u;

    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, LX1/p;->c:LX1/u;

    iget-object p1, p1, LX1/u;->q:LX1/t;

    iget-object p1, p1, LX1/t;->b:LX1/u;

    iget-object p1, p1, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LL1/w;->a()V

    :cond_0
    iget-object p0, p0, LX1/p;->a:LL1/q;

    invoke-virtual {p0, p2}, LL1/q;->f(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    iget-object p0, p0, LX1/p;->a:LL1/q;

    iget-object v2, p0, LL1/q;->j:LL1/o;

    invoke-virtual {p0, v0, p2, v2}, LL1/q;->a(Landroid/view/ActionMode;Landroid/view/Menu;LL1/o;)V

    sget-object p0, Lcom/android/launcher3/BaseDraggingActivity;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V

    return v1
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, LX1/p;->b:LX1/u;

    const/4 p1, 0x0

    iput-object p1, p0, LX1/u;->i:Landroid/view/ActionMode;

    return-void
.end method

.method public final onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    iget-object p1, p0, LX1/p;->a:LL1/q;

    iget-object p2, p1, LL1/q;->h:LJ1/B;

    if-eqz p2, :cond_1

    iget-object p2, p1, LL1/q;->i:LX1/u;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, LL1/q;->c:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    :goto_0
    iget-object p0, p0, LX1/p;->c:LX1/u;

    iget-object p0, p0, LX1/u;->d:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0704d0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    neg-int p1, p1

    const p2, 0x7f0704d1

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    invoke-virtual {p3, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
