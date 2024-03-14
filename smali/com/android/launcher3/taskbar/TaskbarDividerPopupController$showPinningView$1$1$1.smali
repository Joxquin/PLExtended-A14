.class final Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->access$getContext$p(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFocusable(Z)V

    return-void
.end method
