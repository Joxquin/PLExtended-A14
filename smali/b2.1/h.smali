.class public final Lb2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

.field public final b:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

.field public final c:Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

.field public d:Z

.field public final e:Landroid/graphics/Rect;

.field public final f:Lcom/android/launcher3/util/EventLogArray;

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V
    .locals 2

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb2/h;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iput-object p2, p0, Lb2/h;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    new-instance p2, Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, v0}, Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;-><init>(Ljava/lang/ref/WeakReference;)V

    new-instance v0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;-><init>()V

    iput-object v0, p0, Lb2/h;->c:Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb2/h;->e:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/util/EventLogArray;

    const-string v1, "LauncherUnlock"

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/EventLogArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lb2/h;->f:Lcom/android/launcher3/util/EventLogArray;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lb2/h;->h:J

    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0, p2}, Lcom/android/quickstep/SystemUiProxy;->setLauncherUnlockAnimationController(Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lb2/h;->c:Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v2, p0, Lb2/h;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v1, v2, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    iget v1, v1, Lj0/n;->i:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->setSelectedPage(I)V

    iget-object p0, p0, Lb2/h;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->setVisibleOnScreen(Z)V

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SystemUiProxy;->notifySysuiSmartspaceStateUpdated(Lcom/android/systemui/shared/system/smartspace/SmartspaceState;)V

    return-void
.end method
