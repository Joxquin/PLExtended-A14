.class Lcom/android/systemui/shared/rotation/RotationButtonController$2;
.super Landroid/view/IRotationWatcher$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$2;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/systemui/shared/rotation/RotationButtonController$2;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/rotation/RotationButtonController$2;->lambda$onRotationChanged$0(I)V

    return-void
.end method

.method private synthetic lambda$onRotationChanged$0(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$2;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onRotationWatcherChanged(I)V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$2;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-static {v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->h(Lcom/android/systemui/shared/rotation/RotationButtonController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shared/rotation/f;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/rotation/f;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
