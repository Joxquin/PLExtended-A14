.class final Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1;->$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget v0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->d:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1;->$view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->access$getContext$p(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v1

    const-string v2, "view"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "taskbarActivityContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0x7f0d0140

    invoke-virtual {v2, v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.taskbar.TaskbarDividerPopupView<*>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;

    invoke-static {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->access$populateForView(Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocus()Z

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-direct {v0, v2}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->setOnCloseCallback(Lm3/l;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$2;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-direct {v0, v2}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$2;-><init>(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->setChangePreference(Lm3/a;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->access$getContext$p(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFocusable(Z)V

    invoke-virtual {v1}, Lcom/android/launcher3/popup/ArrowPopup;->show()V

    return-void
.end method
