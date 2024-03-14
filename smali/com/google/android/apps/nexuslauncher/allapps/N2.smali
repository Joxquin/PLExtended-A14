.class public final Lcom/google/android/apps/nexuslauncher/allapps/N2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# instance fields
.field public d:Lcom/android/launcher3/dragndrop/DragView;

.field public e:Z

.field public final synthetic f:F

.field public final synthetic g:Lcom/android/launcher3/views/OptionsPopupView;

.field public final synthetic h:Landroid/graphics/Point;

.field public final synthetic i:Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;


# direct methods
.method public constructor <init>(FLcom/android/launcher3/views/OptionsPopupView;Landroid/graphics/Point;Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/N2;->f:F

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/N2;->g:Lcom/android/launcher3/views/OptionsPopupView;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/N2;->h:Landroid/graphics/Point;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/N2;->i:Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDragOffset()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/N2;->h:Landroid/graphics/Point;

    return-object p0
.end method

.method public final onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/N2;->d:Lcom/android/launcher3/dragndrop/DragView;

    return-void
.end method

.method public final onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/N2;->d:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/N2;->i:Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->d:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object p0

    const-string v0, "overlayContext.dragController"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/M2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/M2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragView;->setOnShiftAnimEndCallback(Lcom/google/android/apps/nexuslauncher/allapps/M2;)V

    :cond_1
    return-void
.end method

.method public final shouldStartDrag(D)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/N2;->d:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/N2;->f:F

    float-to-double v2, v2

    cmpg-double p1, p1, v2

    if-gtz p1, :cond_1

    return v1

    :cond_1
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/N2;->e:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/N2;->e:Z

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/N2;->g:Lcom/android/launcher3/views/OptionsPopupView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_2
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/N2;->h:Landroid/graphics/Point;

    iget p1, p0, Landroid/graphics/Point;->x:I

    neg-int p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/dragndrop/DragView;->animateShift(II)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->isShiftAnimationFinished()Z

    move-result p0

    return p0
.end method
