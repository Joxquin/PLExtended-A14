.class final Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

.field final synthetic val$isStashed:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;->val$isStashed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->f(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->d(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;->val$isStashed:Z

    new-instance v1, Lcom/android/launcher3/taskbar/bubbles/d;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/taskbar/bubbles/d;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;Z)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->runAfterInit(Ljava/lang/Runnable;)V

    return-void
.end method
