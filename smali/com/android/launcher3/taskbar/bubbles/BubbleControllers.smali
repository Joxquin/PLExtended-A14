.class public final Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

.field public final bubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

.field public final bubbleDismissController:Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;

.field public final bubbleDragController:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

.field public final bubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

.field public final bubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

.field private final mPostInitRunnables:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->mPostInitRunnables:Lcom/android/launcher3/util/RunnableList;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    iput-object p4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    iput-object p5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleDragController:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    iput-object p6, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleDismissController:Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;

    return-void
.end method


# virtual methods
.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->init(Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->init(Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleDragController:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;->init(Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleDismissController:Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->init(Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->mPostInitRunnables:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method public final runAfterInit(LZ0/a;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->mPostInitRunnables:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method
