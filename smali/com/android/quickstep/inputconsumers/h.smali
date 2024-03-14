.class public final synthetic Lcom/android/quickstep/inputconsumers/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lcom/android/quickstep/GestureState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;Landroid/content/Context;Lcom/android/quickstep/GestureState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/h;->d:Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/h;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/h;->f:Lcom/android/quickstep/GestureState;

    return-void
.end method


# virtual methods
.method public final onMotionPauseDetected()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/h;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/h;->f:Lcom/android/quickstep/GestureState;

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/h;->d:Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;

    invoke-static {p0, v0, v1}, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;->a(Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;Landroid/content/Context;Lcom/android/quickstep/GestureState;)V

    return-void
.end method
