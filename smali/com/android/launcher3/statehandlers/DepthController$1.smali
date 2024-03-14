.class final Lcom/android/launcher3/statehandlers/DepthController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/statehandlers/DepthController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController$1;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController$1;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v0}, Lcom/android/launcher3/statehandlers/DepthController;->access$000(Lcom/android/launcher3/statehandlers/DepthController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController$1;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v1}, Lcom/android/launcher3/statehandlers/DepthController;->e(Lcom/android/launcher3/statehandlers/DepthController;)LW0/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/CrossWindowBlurListeners;->addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController$1;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {p1}, Lcom/android/launcher3/statehandlers/DepthController;->access$100(Lcom/android/launcher3/statehandlers/DepthController;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController$1;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v0}, Lcom/android/launcher3/statehandlers/DepthController;->f(Lcom/android/launcher3/statehandlers/DepthController;)LW0/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/views/ScrimView;->addOpaquenessListener(LW0/c;)V

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DepthController$1;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-virtual {p0}, Lcom/android/launcher3/statehandlers/DepthController;->applyDepthAndBlur()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DepthController$1;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {p0}, Lcom/android/launcher3/statehandlers/DepthController;->h(Lcom/android/launcher3/statehandlers/DepthController;)V

    return-void
.end method
