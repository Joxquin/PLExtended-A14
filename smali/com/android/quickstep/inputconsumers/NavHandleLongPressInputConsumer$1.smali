.class Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;->isInArea(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;

    invoke-static {v0}, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;->a(Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;)Lcom/android/quickstep/inputconsumers/NavHandleLongPressHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/inputconsumers/NavHandleLongPressHandler;->getLongPressRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->setActive(Landroid/view/MotionEvent;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
