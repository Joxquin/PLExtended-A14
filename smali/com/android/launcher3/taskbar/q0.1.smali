.class public final synthetic Lcom/android/launcher3/taskbar/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/taskbar/TaskbarManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/q0;->d:Lcom/android/launcher3/taskbar/TaskbarManager;

    return-void
.end method


# virtual methods
.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    const-string p1, "mActivity onDeviceProfileChanged"

    iget-object p0, p0, Lcom/android/launcher3/taskbar/q0;->d:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    return-void
.end method
