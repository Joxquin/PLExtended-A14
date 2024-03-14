.class public Lcom/android/quickstep/util/AnimUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceOverviewToSplitTimings(Z)Lcom/android/quickstep/util/SplitAnimationTimings;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/quickstep/util/SplitAnimationTimings;->TABLET_OVERVIEW_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/quickstep/util/SplitAnimationTimings;->PHONE_OVERVIEW_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

    :goto_0
    return-object p0
.end method

.method public static getDeviceSplitToConfirmTimings(Z)Lcom/android/quickstep/util/SplitAnimationTimings;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/quickstep/util/SplitAnimationTimings;->TABLET_SPLIT_TO_CONFIRM:Lcom/android/quickstep/util/SplitAnimationTimings;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/quickstep/util/SplitAnimationTimings;->PHONE_SPLIT_TO_CONFIRM:Lcom/android/quickstep/util/SplitAnimationTimings;

    :goto_0
    return-object p0
.end method
