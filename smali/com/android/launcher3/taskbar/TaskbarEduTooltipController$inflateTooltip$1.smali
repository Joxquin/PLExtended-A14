.class final Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$inflateTooltip$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$inflateTooltip$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$inflateTooltip$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->access$setTooltip$p(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$inflateTooltip$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->access$getControllers$p(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "controllers"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$inflateTooltip$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->access$getControllers$p(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateTransientTaskbar(ZZ)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v1
.end method
