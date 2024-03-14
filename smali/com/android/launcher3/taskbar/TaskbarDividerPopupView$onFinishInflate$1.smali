.class final Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$onFinishInflate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic $alwaysShowTaskbarSwitch:Landroid/widget/Switch;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;


# direct methods
.method public constructor <init>(Landroid/widget/Switch;Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$onFinishInflate$1;->$alwaysShowTaskbarSwitch:Landroid/widget/Switch;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$onFinishInflate$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$onFinishInflate$1;->$alwaysShowTaskbarSwitch:Landroid/widget/Switch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$onFinishInflate$1;->$alwaysShowTaskbarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$onFinishInflate$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->access$getAlwaysShowTaskbarOn$p(Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;)Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$onFinishInflate$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->access$onClickAlwaysShowTaskbarSwitchOption(Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;)V

    return-void
.end method
