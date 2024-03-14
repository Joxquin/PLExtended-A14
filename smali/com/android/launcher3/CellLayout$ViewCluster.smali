.class final Lcom/android/launcher3/CellLayout$ViewCluster;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final bottomEdge:[I

.field final boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field final comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

.field final config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

.field dirtyEdges:I

.field final leftEdge:[I

.field final rightEdge:[I

.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field final topEdge:[I

.field final views:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v0, p1, Lcom/android/launcher3/CellLayout;->mCountY:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    iget p1, p1, Lcom/android/launcher3/CellLayout;->mCountX:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    new-instance p1, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    invoke-direct {p1, p0}, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;-><init>(Lcom/android/launcher3/CellLayout$ViewCluster;)V

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    return-void
.end method


# virtual methods
.method public final resetEdges()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    iget v3, v2, Lcom/android/launcher3/CellLayout;->mCountX:I

    const/4 v4, -0x1

    if-ge v1, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aput v4, v2, v1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v1, v2, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aput v4, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRectDirty:Z

    return-void
.end method
