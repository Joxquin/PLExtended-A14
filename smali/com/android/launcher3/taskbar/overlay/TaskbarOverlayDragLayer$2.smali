.class final Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;Lcom/android/launcher3/taskbar/o;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer$2;->this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer$2;->this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    invoke-static {p1, p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;->c(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;Landroid/view/View$OnClickListener;)V

    return-void
.end method
