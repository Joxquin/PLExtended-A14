.class public final synthetic Lcom/android/launcher3/celllayout/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/celllayout/a;->a:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/celllayout/a;->a:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    check-cast p1, Landroid/view/View;

    check-cast p2, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget-object p0, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    if-le p1, p0, :cond_0

    iget p0, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_0
    iput p0, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    return-void
.end method
