.class final Lcom/android/launcher3/Workspace$ReorderAlarmListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field final child:Landroid/view/View;

.field final dragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field final minSpanX:I

.field final minSpanY:I

.field final spanX:I

.field final spanY:I

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;IIIILcom/android/launcher3/DropTarget$DragObject;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    iput p3, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    iput p4, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    iput p5, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    iput-object p7, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iput-object p6, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public final onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 14

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object v11, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v11, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v12, 0x0

    aget v1, v0, v12

    float-to-int v2, v1

    const/4 v13, 0x1

    aget v0, v0, v13

    float-to-int v3, v0

    iget v4, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    iget v5, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    iget-object v6, v11, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v7, v11, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v11, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v0, v11, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v11, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v12

    float-to-int v2, v2

    aget v1, v1, v13

    float-to-int v3, v1

    iget v4, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    iget v5, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    iget v6, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    iget v7, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    iget-object v8, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iget-object v9, v11, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v10, 0x1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v11, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v0, v12

    if-ltz v1, :cond_1

    aget v0, v0, v13

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {v11, v0}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, v11, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    :goto_1
    iget-object v1, v11, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v11, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v0, v12

    aget v3, v0, v13

    aget v4, p1, v12

    aget v5, p1, v13

    iget-object v6, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method
