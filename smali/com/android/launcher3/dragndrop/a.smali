.class public final synthetic Lcom/android/launcher3/dragndrop/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/dragndrop/PinItemDragListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/PinItemDragListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/a;->d:Lcom/android/launcher3/dragndrop/PinItemDragListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/a;->d:Lcom/android/launcher3/dragndrop/PinItemDragListener;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->setStateHandlerRequest(I)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    return-void
.end method
