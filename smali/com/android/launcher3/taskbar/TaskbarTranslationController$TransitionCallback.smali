.class public final Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionDown()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->c(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->f(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatedFloat;->cancelAnimation()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->g(Lcom/android/launcher3/taskbar/TaskbarTranslationController;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->cancelSpringIfExists()V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->i(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V

    return-void
.end method

.method public final onActionEnd()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->e(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->i(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->h(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->startSpring()V

    :goto_0
    return-void
.end method

.method public final onActionMove(F)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->c(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->e(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->d(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->f(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    :cond_1
    :goto_0
    return-void
.end method
