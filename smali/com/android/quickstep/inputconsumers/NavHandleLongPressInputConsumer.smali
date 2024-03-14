.class public Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;
.super Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;
.source "SourceFile"


# instance fields
.field private final mLongPressDetector:Landroid/view/GestureDetector;

.field private final mNavHandleLongPressHandler:Lcom/android/quickstep/inputconsumers/NavHandleLongPressHandler;

.field private final mNavHandleWidth:F

.field private final mScreenWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;-><init>(Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0703f5

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;->mNavHandleWidth:F

    sget-object p2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iput p2, p0, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;->mScreenWidth:F

    invoke-static {p1}, Lcom/android/quickstep/inputconsumers/NavHandleLongPressHandler;->newInstance(Landroid/content/Context;)Lcom/android/quickstep/inputconsumers/NavHandleLongPressHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;->mNavHandleLongPressHandler:Lcom/android/quickstep/inputconsumers/NavHandleLongPressHandler;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer$1;

    invoke-direct {p3, p0}, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer$1;-><init>(Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;->mLongPressDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;)Lcom/android/quickstep/inputconsumers/NavHandleLongPressHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;->mNavHandleLongPressHandler:Lcom/android/quickstep/inputconsumers/NavHandleLongPressHandler;

    return-object p0
.end method


# virtual methods
.method public getDelegatorName()Ljava/lang/String;
    .locals 0

    const-string p0, "NavHandleLongPressInputConsumer"

    return-object p0
.end method

.method public getType()I
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {p0}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result p0

    const v0, 0x8000

    or-int/2addr p0, v0

    return p0
.end method

.method public isInArea(F)Z
    .locals 2

    iget v0, p0, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;->mNavHandleWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget p0, p0, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;->mScreenWidth:F

    div-float/2addr p0, v1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/NavHandleLongPressInputConsumer;->mLongPressDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {p0, p1}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method
