.class Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;-><init>(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    neg-float p2, p4

    invoke-static {p1, p3, p2}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->i(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;FF)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-static {p1}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->e(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)F

    move-result p1

    iget-object p2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-static {p2}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->f(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)F

    move-result p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-static {p1}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->g(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    iget p2, p1, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-static {p1}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->h(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)V

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p2, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-static {p2}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->d(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/SystemUiProxy;

    mul-float/2addr p3, p3

    mul-float/2addr p4, p4

    add-float/2addr p4, p3

    float-to-double p2, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/android/quickstep/SystemUiProxy;->onAssistantGestureCompletion(F)V

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-static {p0}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->j(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
