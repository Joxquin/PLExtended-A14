.class public interface abstract Lcom/android/launcher3/statemanager/BaseState;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getHistoryForState(Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/statemanager/BaseState;
.end method

.method public abstract getTransitionDuration(Landroid/content/Context;Z)I
.end method

.method public abstract hasFlag(I)Z
.end method

.method public shouldDisableRestore()Z
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/launcher3/statemanager/BaseState;->hasFlag(I)Z

    move-result p0

    return p0
.end method

.method public shouldPreserveDataStateOnReapply()Z
    .locals 0

    instance-of p0, p0, Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;

    return p0
.end method

.method public showTaskThumbnailSplash()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
