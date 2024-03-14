.class final Lcom/android/launcher3/taskbar/TaskbarTranslationController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->g(Lcom/android/launcher3/taskbar/TaskbarTranslationController;Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->i(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->cancelSpringIfExists()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->i(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->g(Lcom/android/launcher3/taskbar/TaskbarTranslationController;Z)V

    return-void
.end method
