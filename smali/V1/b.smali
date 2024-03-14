.class public final LV1/b;
.super LQ/c;
.source "SourceFile"


# instance fields
.field public final d:[I

.field public final e:Landroid/graphics/Rect;

.field public final synthetic f:LV1/c;


# direct methods
.method public constructor <init>(LV1/c;LL1/B;)V
    .locals 0

    iput-object p1, p0, LV1/b;->f:LV1/c;

    invoke-direct {p0, p2}, LQ/c;-><init>(Landroid/view/View;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, LV1/b;->d:[I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LV1/b;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final getVirtualViewAt(FF)I
    .locals 2

    iget-object p0, p0, LV1/b;->f:LV1/c;

    iget-object p0, p0, LV1/c;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV1/a;

    iget-object v1, v0, LV1/a;->b:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, v0, LV1/a;->a:I

    return p0

    :cond_1
    const/high16 p0, -0x80000000

    return p0
.end method

.method public final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2

    iget-object p0, p0, LV1/b;->f:LV1/c;

    iget-object p0, p0, LV1/c;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV1/a;

    iget v0, v0, LV1/a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPerformActionForVirtualView(II)Z
    .locals 2

    const/16 v0, 0x10

    if-ne p2, v0, :cond_2

    iget-object p0, p0, LV1/b;->f:LV1/c;

    iget-object p2, p0, LV1/c;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV1/a;

    iget v1, v0, LV1/a;->a:I

    if-ne v1, p1, :cond_0

    iget-object p0, p0, LV1/c;->a:LL1/A;

    if-eqz p0, :cond_1

    iget-object p1, v0, LV1/a;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-interface {p0, p2, p1}, LL1/A;->a(FF)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final onPopulateNodeForVirtualView(ILM/e;)V
    .locals 5

    iget-object v0, p0, LV1/b;->f:LV1/c;

    iget-object v1, v0, LV1/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LV1/a;

    iget v3, v2, LV1/a;->a:I

    if-ne v3, p1, :cond_0

    iget-object p1, v0, LV1/c;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    iget-object v1, p0, LV1/b;->d:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v1, v3

    aput v4, v1, v4

    iget-object v0, v0, LV1/c;->c:LL1/B;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result p1

    iget-object v0, v2, LV1/a;->b:Landroid/graphics/RectF;

    iget-object p0, p0, LV1/b;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, LM/e;->g(Landroid/graphics/Rect;)V

    aget v0, v1, v4

    iget v4, p0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v4, v0

    iput v4, p0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v0, v4

    iput v0, p0, Landroid/graphics/Rect;->right:I

    aget v0, v1, v3

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v1, v0

    iput v1, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p2, LM/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object p0, v2, LV1/a;->c:Ljava/lang/String;

    invoke-virtual {p2, p0}, LM/e;->k(Ljava/lang/CharSequence;)V

    sget-object p0, LM/c;->e:LM/c;

    invoke-virtual {p2, p0}, LM/e;->b(LM/c;)V

    :cond_1
    return-void
.end method
