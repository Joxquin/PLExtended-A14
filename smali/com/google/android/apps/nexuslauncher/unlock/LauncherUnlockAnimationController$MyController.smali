.class public final Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;
.super Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub;
.source "SourceFile"


# instance fields
.field private final parent:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;->parent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$getParent$p(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;->parent:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public final dispatchSmartspaceStateToSysui()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lb2/a;

    invoke-direct {v1, p0}, Lb2/a;-><init>(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final playUnlockAnimation(ZJJ)V
    .locals 7

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v6, Lb2/b;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lb2/b;-><init>(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;JJ)V

    invoke-virtual {p1, v6}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final prepareForUnlock(ZLandroid/graphics/Rect;I)V
    .locals 2

    const-string v0, "lockscreenSmartspaceBounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lb2/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lb2/c;-><init>(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;ZLandroid/graphics/Rect;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setSmartspaceSelectedPage(I)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lb2/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lb2/d;-><init>(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;II)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setSmartspaceVisibility(I)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lb2/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lb2/d;-><init>(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;II)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setUnlockAmount(FZ)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lb2/e;

    invoke-direct {v1, p0, p1, p2}, Lb2/e;-><init>(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;FZ)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
