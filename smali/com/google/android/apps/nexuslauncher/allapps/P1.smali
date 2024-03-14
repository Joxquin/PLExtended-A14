.class public final Lcom/google/android/apps/nexuslauncher/allapps/P1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# instance fields
.field public final synthetic d:F

.field public final synthetic e:Lcom/android/launcher3/views/OptionsPopupView;

.field public final synthetic f:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(FLcom/android/launcher3/views/OptionsPopupView;Landroid/graphics/Point;)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/P1;->d:F

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/P1;->e:Lcom/android/launcher3/views/OptionsPopupView;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/P1;->f:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDragOffset()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P1;->f:Landroid/graphics/Point;

    return-object p0
.end method

.method public final onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/P1;->e:Lcom/android/launcher3/views/OptionsPopupView;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_0
    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P1;->f:Landroid/graphics/Point;

    iget p2, p0, Landroid/graphics/Point;->x:I

    neg-int p2, p2

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/dragndrop/DragView;->animateShift(II)V

    :cond_1
    return-void
.end method

.method public final onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0

    iget-object p0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final shouldStartDrag(D)Z
    .locals 2

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P1;->d:F

    float-to-double v0, p0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
