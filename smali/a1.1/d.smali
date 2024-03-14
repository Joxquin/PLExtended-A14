.class public final synthetic La1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    const/4 p0, 0x0

    const v0, 0x176274

    invoke-static {p1, p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->dispatchDeviceProfileChanged()V

    return-void
.end method
