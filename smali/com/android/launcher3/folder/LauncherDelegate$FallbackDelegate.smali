.class final Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;
.super Lcom/android/launcher3/folder/LauncherDelegate;
.source "SourceFile"


# instance fields
.field private final mContext:Lcom/android/launcher3/views/ActivityContext;

.field private mWriter:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/LauncherDelegate;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;->mContext:Lcom/android/launcher3/views/ActivityContext;

    return-void
.end method


# virtual methods
.method public final beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    return-void
.end method

.method public final forEachVisibleWorkspacePage(Lcom/android/launcher3/folder/d;)V
    .locals 0

    return-void
.end method

.method public final getLauncher()Lcom/android/launcher3/Launcher;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getModelWriter()Lcom/android/launcher3/model/ModelWriter;
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;->mWriter:Lcom/android/launcher3/model/ModelWriter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;->mContext:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/celllayout/CellPosMapper;->DEFAULT:Lcom/android/launcher3/celllayout/CellPosMapper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/android/launcher3/LauncherModel;->getWriter(ZZLcom/android/launcher3/celllayout/CellPosMapper;Lcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;->mWriter:Lcom/android/launcher3/model/ModelWriter;

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;->mWriter:Lcom/android/launcher3/model/ModelWriter;

    return-object p0
.end method

.method public final init(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;->mContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object p0

    iput-object p0, p1, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    return-void
.end method

.method public final interceptOutsideTouch(Landroid/view/MotionEvent;Lcom/android/launcher3/views/BaseDragLayer;Lcom/android/launcher3/folder/Folder;)Z
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return p0
.end method

.method public final isDraggingEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final replaceFolderWithFinalItem(Lcom/android/launcher3/folder/Folder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
