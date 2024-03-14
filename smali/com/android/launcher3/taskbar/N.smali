.class public final synthetic Lcom/android/launcher3/taskbar/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field public final synthetic b:Lcom/android/launcher3/DeviceProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/N;->a:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/N;->b:Lcom/android/launcher3/DeviceProfile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/N;->a:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/N;->b:Lcom/android/launcher3/DeviceProfile;

    check-cast p1, Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    iput v1, p1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    iput p0, p1, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->taskbarIconSize:I

    iput p0, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FLandroid/content/res/Resources;)V

    return-void
.end method
