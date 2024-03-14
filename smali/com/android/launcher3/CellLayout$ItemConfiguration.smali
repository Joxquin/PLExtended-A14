.class public final Lcom/android/launcher3/CellLayout$ItemConfiguration;
.super Lcom/android/launcher3/util/CellAndSpan;
.source "SourceFile"


# instance fields
.field public intersectingViews:Ljava/util/ArrayList;

.field public isSolution:Z

.field public final map:Landroid/util/ArrayMap;

.field private final savedMap:Landroid/util/ArrayMap;

.field public final sortedViews:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/util/CellAndSpan;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return-void
.end method


# virtual methods
.method public final add(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/launcher3/util/CellAndSpan;

    invoke-direct {p2}, Lcom/android/launcher3/util/CellAndSpan;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v3, v0

    iget v1, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v4, v2

    iget v1, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v1, v3

    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final restore()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iput v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iput v4, v3, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v2, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iput v2, v3, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final save()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iput v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iput v4, v3, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v2, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iput v2, v3, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    goto :goto_0

    :cond_0
    return-void
.end method
