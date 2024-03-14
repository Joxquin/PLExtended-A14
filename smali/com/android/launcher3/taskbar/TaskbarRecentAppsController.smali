.class public Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;


# instance fields
.field protected mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public setApps([Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0

    return-void
.end method

.method public updateHotseatItemInfos([Lcom/android/launcher3/model/data/ItemInfo;)[Lcom/android/launcher3/model/data/ItemInfo;
    .locals 0

    return-object p1
.end method

.method public updateRunningApps(Landroid/util/SparseArray;)V
    .locals 0

    return-void
.end method
