.class public final synthetic Lcom/android/launcher3/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/DeviceProfile;

    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    return p0
.end method
