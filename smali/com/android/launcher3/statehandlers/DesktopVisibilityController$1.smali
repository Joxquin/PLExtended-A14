.class final Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;
.super Lcom/android/wm/shell/desktopmode/IDesktopTaskListener$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/statehandlers/DesktopVisibilityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;->this$0:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/IDesktopTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStashedChanged(IZ)V
    .locals 3

    invoke-static {}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/statehandlers/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/launcher3/statehandlers/a;-><init>(Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;IZI)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onVisibilityChanged(IZ)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/statehandlers/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/launcher3/statehandlers/a;-><init>(Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;IZI)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
