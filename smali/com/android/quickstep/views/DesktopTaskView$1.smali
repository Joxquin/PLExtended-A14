.class Lcom/android/quickstep/views/DesktopTaskView$1;
.super Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/DesktopTaskView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/DesktopTaskView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/DesktopTaskView$1;->this$0:Lcom/android/quickstep/views/DesktopTaskView;

    invoke-direct {p0, p2}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeTaskCornerRadius(Landroid/content/Context;)F
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public computeWindowCornerRadius(Landroid/content/Context;)F
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p0

    return p0
.end method
