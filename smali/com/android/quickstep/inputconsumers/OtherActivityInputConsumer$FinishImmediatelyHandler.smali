.class Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer$FinishImmediatelyHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer$FinishImmediatelyHandler;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer$FinishImmediatelyHandler;->lambda$onRecentsAnimationStart$0(Lcom/android/quickstep/RecentsAnimationController;)V

    return-void
.end method

.method private static synthetic lambda$onRecentsAnimationStart$0(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 1

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p2, Lcom/android/quickstep/inputconsumers/e;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1}, Lcom/android/quickstep/inputconsumers/e;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, p2}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
