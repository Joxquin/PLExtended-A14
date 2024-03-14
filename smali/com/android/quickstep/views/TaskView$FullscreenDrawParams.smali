.class public Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCornerRadius:F

.field public mCurrentDrawnCornerRadius:F

.field private mWindowCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->updateCornerRadius(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCornerRadius:F

    return p0
.end method


# virtual methods
.method public computeTaskCornerRadius(Landroid/content/Context;)F
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/util/TaskCornerRadius;->get(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public computeWindowCornerRadius(Landroid/content/Context;)F
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public setProgress(FFFILcom/android/launcher3/DeviceProfile;Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;)V
    .locals 0

    iget p4, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCornerRadius:F

    iget p5, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mWindowCornerRadius:F

    sget-object p6, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    sub-float/2addr p5, p4

    mul-float/2addr p5, p1

    add-float/2addr p5, p4

    div-float/2addr p5, p2

    div-float/2addr p5, p3

    iput p5, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    return-void
.end method

.method public updateCornerRadius(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->computeTaskCornerRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCornerRadius:F

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->computeWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mWindowCornerRadius:F

    return-void
.end method
