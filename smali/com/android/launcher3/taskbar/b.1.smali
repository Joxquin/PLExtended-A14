.class public final synthetic Lcom/android/launcher3/taskbar/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/b;->a:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;

    return-void
.end method


# virtual methods
.method public final onTaskLaunched()V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/b;->a:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;->this$0:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    sget v0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->a:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStashDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->createAnimToRecentsState(J)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
