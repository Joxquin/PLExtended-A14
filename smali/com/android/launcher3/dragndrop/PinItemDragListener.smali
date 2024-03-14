.class public final Lcom/android/launcher3/dragndrop/PinItemDragListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
.implements Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;


# instance fields
.field private final mCancelSignal:Landroid/os/CancellationSignal;

.field private mDragController:Lcom/android/launcher3/dragndrop/LauncherDragController;

.field private final mId:Ljava/lang/String;

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field private final mPreviewBitmapWidth:I

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewScale:F

.field private final mPreviewViewWidth:I

.field private final mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewRect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewBitmapWidth:I

    iput p4, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewViewWidth:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mCancelSignal:Landroid/os/CancellationSignal;

    iput p5, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewScale:F

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.android.launcher3.drag_and_drop/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final init(Lcom/android/launcher3/BaseActivity;Z)Z
    .locals 2

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p1, p2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/launcher3/states/RotationHelper;->setStateHandlerRequest(I)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/dragndrop/LauncherDragController;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mDragController:Lcom/android/launcher3/dragndrop/LauncherDragController;

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->onDrag$com$android$launcher3$dragndrop$BaseItemDragListener(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public final onDrag$com$android$launcher3$dragndrop$BaseItemDragListener(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 9

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mDragController:Lcom/android/launcher3/dragndrop/LauncherDragController;

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mDragController:Lcom/android/launcher3/dragndrop/LauncherDragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mDragController:Lcom/android/launcher3/dragndrop/LauncherDragController;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/dragndrop/DragDriver;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_3

    :cond_5
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {v6, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v8, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v8}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    iput-object v6, v8, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    iput-object p0, v8, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result p1

    if-ne p1, v1, :cond_6

    new-instance p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    new-instance p2, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p2, v2, v3}, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p2, p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {p2, p1, v2}, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/content/pm/LauncherApps$PinItemRequest;)V

    new-instance v2, Lcom/android/launcher3/dragndrop/PinItemDragListener$1;

    invoke-direct {v2, p1, p2}, Lcom/android/launcher3/dragndrop/PinItemDragListener$1;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;)V

    move-object p1, v2

    :goto_1
    new-instance p2, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p2, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/launcher3/widget/PendingItemDragHelper;

    invoke-direct {v2, p2}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p2, "appWidgetPreview"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/RemoteViews;

    if-eqz v3, :cond_7

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    iget p2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewScale:F

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/widget/PendingItemDragHelper;->setRemoteViewsPreview(Landroid/widget/RemoteViews;F)V

    :cond_8
    new-instance v3, Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v4, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewBitmapWidth:I

    iget v5, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewViewWidth:I

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    move p1, v1

    goto :goto_5

    :cond_9
    :goto_3
    const-string p1, "BaseItemDragListener"

    const-string p2, "Someone started a dragAndDrop before us."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move p1, v0

    :goto_5
    if-eqz p1, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->postCleanup()V

    return v0

    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->postCleanup()V

    return v0
.end method

.method public final onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->postCleanup()V

    return-void
.end method

.method public final onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public final postCleanup()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "pin_item_drag_listener"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/dragndrop/a;-><init>(Lcom/android/launcher3/dragndrop/PinItemDragListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method public final shouldStartDrag(D)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
