.class final Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

.field final synthetic val$currentFocusIndexOverride:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$1;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    iput p2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$1;->val$currentFocusIndexOverride:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$1;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    iget v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$1;->val$currentFocusIndexOverride:I

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->z(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$1;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
