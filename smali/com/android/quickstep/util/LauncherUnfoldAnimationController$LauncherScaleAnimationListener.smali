.class Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/d;


# static fields
.field private static final SCALE_LAUNCHER_FROM:F = 0.92f


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;-><init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)V

    return-void
.end method

.method private setScale(F)V
    .locals 2

    invoke-static {}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->e()Landroid/util/FloatProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-static {v1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->b(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    invoke-static {}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->d()Landroid/util/FloatProperty;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-static {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->b(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void
.end method


# virtual methods
.method public onTransitionFinished()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;->setScale(F)V

    return-void
.end method

.method public bridge synthetic onTransitionFinishing()V
    .locals 0

    return-void
.end method

.method public onTransitionProgress(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3f6b851f    # 0.92f

    invoke-static {v2, v0, v1, v0, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;->setScale(F)V

    return-void
.end method

.method public onTransitionStarted()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->b(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-static {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->b(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->setPivotToScaleWithSelf(Lcom/android/launcher3/Hotseat;)V

    return-void
.end method
