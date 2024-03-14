.class Lcom/android/quickstep/RecentsAnimationDeviceState$1;
.super Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$1;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onExclusionChanged(Landroid/graphics/Region;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$1;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->k(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/graphics/Region;)V

    return-void
.end method
