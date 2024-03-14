.class public final Lcom/android/launcher3/taskbar/TaskbarDragLayerController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$BackgroundRendererController;


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mAssistantBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mBackgroundRendererAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

.field private final mBgNavbar:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mBgOffset:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mBgOverride:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mFolderMargin:I

.field private final mImeBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mKeyguardBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mLastSetBackgroundAlpha:F

.field private final mNotificationShadeBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mOnBackgroundNavButtonColorIntensity:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mTaskbarAlpha:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

.field private mTaskbarStashViaTouchController:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarDragLayer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/d0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/d0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/d0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/d0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgNavbar:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/d0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/d0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mKeyguardBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/d0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/d0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mNotificationShadeBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/d0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/d0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mImeBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/d0;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/d0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mAssistantBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/d0;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/d0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOverride:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/d0;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/d0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOffset:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/d0;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/d0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarAlpha:Lcom/android/launcher3/anim/AnimatedFloat;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->getBackgroundRendererAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBackgroundRendererAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070523

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mFolderMargin:I

    return-void
.end method

.method public static a(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarAlpha:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public static b(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOffset:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->setTaskbarBackgroundOffset(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mOnBackgroundNavButtonColorIntensity:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mLastSetBackgroundAlpha:F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOffset:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->updateBackgroundAlpha()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarControllers;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarStashViaTouchController:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    return-object p0
.end method

.method private updateBackgroundAlpha()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgNavbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mKeyguardBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v2, v2, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mNotificationShadeBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v2, v2, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mImeBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v2, v2, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mAssistantBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v2, v2, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOverride:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v2, v2, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mLastSetBackgroundAlpha:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBackgroundRendererAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mOnBackgroundNavButtonColorIntensity:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mLastSetBackgroundAlpha:F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOffset:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    return-void
.end method


# virtual methods
.method public final dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarDragLayerController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmBgOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOffset:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const-string v2, "\tmTaskbarAlpha="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/q;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarAlpha:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const-string v2, "\tmFolderMargin="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/q;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mFolderMargin:I

    const-string v2, "\tmLastSetBackgroundAlpha="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/g;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mLastSetBackgroundAlpha:F

    const-string v2, "\t\tmBgOverride="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/q;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOverride:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const-string v2, "\t\tmBgNavbar="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/q;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgNavbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const-string v2, "\t\tmBgTaskbar="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/q;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const-string v2, "\t\tmKeyguardBgTaskbar="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/q;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mKeyguardBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const-string v2, "\t\tmNotificationShadeBgTaskbar="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/q;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mNotificationShadeBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const-string v2, "\t\tmImeBgTaskbar="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/q;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mImeBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const-string v2, "\t\tmAssistantBgTaskbar="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/q;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mAssistantBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getAssistantBgTaskbar()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mAssistantBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public final getBackgroundRendererAlphaForStash()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->getBackgroundRendererAlphaForStash()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method public final getFolderBoundingBox()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    sub-int/2addr v1, v4

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->taskbarBottomMargin:I

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mFolderMargin:I

    invoke-virtual {v0, p0, p0}, Landroid/graphics/Rect;->inset(II)V

    return-object v0
.end method

.method public final getImeBgTaskbar()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mImeBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public final getKeyguardBgTaskbar()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mKeyguardBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public final getNavbarBackgroundAlpha()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgNavbar:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public final getNotificationShadeBgTaskbar()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mNotificationShadeBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public final getTaskbarAlpha()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarAlpha:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public final getTaskbarBackgroundAlpha()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public final getTaskbarBackgroundOffset()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOffset:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    invoke-direct {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;-><init>(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarStashViaTouchController:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    new-instance p1, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->init(Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getOnTaskbarBackgroundNavButtonColorOverride()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mOnBackgroundNavButtonColorIntensity:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mKeyguardBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iput v1, p1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mNotificationShadeBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iput v1, p1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mImeBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iput v1, p1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mAssistantBgTaskbar:Lcom/android/launcher3/anim/AnimatedFloat;

    iput v1, p1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOverride:Lcom/android/launcher3/anim/AnimatedFloat;

    iput v1, p1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->updateBackgroundAlpha()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarAlpha:Lcom/android/launcher3/anim/AnimatedFloat;

    iput v1, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public final onConfigurationChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarStashViaTouchController:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->updateGestureHeight()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->onDestroy(Z)V

    return-void
.end method

.method public final setBackgroundHorizontalInsets(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->setBackgroundHorizontalInsets(F)V

    return-void
.end method

.method public final setCornerRoundness(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->setCornerRoundness(F)V

    return-void
.end method

.method public final setIsBackgroundDrawnElsewhere(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOverride:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method public final setTranslationYForStash(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->setBackgroundTranslationYForStash(F)V

    return-void
.end method

.method public final setTranslationYForSwipe(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->setBackgroundTranslationYForSwipe(F)V

    return-void
.end method
