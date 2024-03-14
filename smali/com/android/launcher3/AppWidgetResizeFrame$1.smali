.class final Lcom/android/launcher3/AppWidgetResizeFrame$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic val$cellLayout:Lcom/android/launcher3/CellLayout;

.field final synthetic val$pairedCellLayout:Lcom/android/launcher3/CellLayout;

.field final synthetic val$shouldShowCellLayoutBorder:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;ZLcom/android/launcher3/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    iput-boolean p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->val$shouldShowCellLayoutBorder:Z

    iput-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->val$pairedCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->val$shouldShowCellLayoutBorder:Z

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->val$pairedCellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean p0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->val$shouldShowCellLayoutBorder:Z

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    return-void
.end method
