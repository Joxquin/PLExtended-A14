.class public final synthetic Lcom/android/launcher3/taskbar/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/W0;->d:I

    iput-object p2, p0, Lcom/android/launcher3/taskbar/W0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/taskbar/W0;->d:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/W0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->e(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateIsManuallyStashedInApp(Z)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/W0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->e(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPinningController:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->showPinningView(Landroid/view/View;)V

    return v1

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/W0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startDragOnLongClick(Landroid/view/View;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
