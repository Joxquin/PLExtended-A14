.class public final Lcom/android/launcher3/taskbar/TaskbarSharedState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allAppsVisible:Z

.field public disableNavBarDisplayId:I

.field public disableNavBarState1:I

.field public disableNavBarState2:I

.field public inAppDisplayProgressMultiPropValues:[F

.field public navButtonsDarkIntensity:F

.field public setupUIVisible:Z

.field public systemBarAttrsBehavior:I

.field public systemBarAttrsDisplayId:I

.field public sysuiStateFlags:I

.field public taskbarSystemActionPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->setupUIVisible:Z

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->allAppsVisible:Z

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->inAppDisplayProgressMultiPropValues:[F

    return-void
.end method
