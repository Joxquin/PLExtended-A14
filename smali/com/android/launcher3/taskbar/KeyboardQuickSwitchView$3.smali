.class final Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

.field final synthetic val$currentFocusIndexOverride:I

.field final synthetic val$displayedContent:Landroid/view/View;

.field final synthetic val$outlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;ILandroid/view/View;Landroid/view/ViewOutlineProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    iput p2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->val$currentFocusIndexOverride:I

    iput-object p3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->val$displayedContent:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->val$outlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->val$outlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidateOutline()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->y(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    new-instance v1, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3$1;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->val$currentFocusIndexOverride:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-static {p1, v0, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->A(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;IZ)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {v2, v1, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->animateFocusMove(II)V

    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->val$displayedContent:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void
.end method
