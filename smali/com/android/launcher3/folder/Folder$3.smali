.class final Lcom/android/launcher3/folder/Folder$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic val$currentCellLayout:Lcom/android/launcher3/CellLayout;

.field final synthetic val$useHardware:Z

.field final synthetic val$wasHardwareAccelerated:Z


# direct methods
.method public constructor <init>(ZLcom/android/launcher3/CellLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder$3;->val$useHardware:Z

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$3;->val$currentCellLayout:Lcom/android/launcher3/CellLayout;

    iput-boolean p3, p0, Lcom/android/launcher3/folder/Folder$3;->val$wasHardwareAccelerated:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/launcher3/folder/Folder$3;->val$useHardware:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$3;->val$currentCellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean p0, p0, Lcom/android/launcher3/folder/Folder$3;->val$wasHardwareAccelerated:Z

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/launcher3/folder/Folder$3;->val$useHardware:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder$3;->val$currentCellLayout:Lcom/android/launcher3/CellLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    :cond_0
    return-void
.end method
