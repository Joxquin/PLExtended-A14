.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/O;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/O;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/M;->a:Lcom/google/android/apps/nexuslauncher/allapps/O;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/M;->a:Lcom/google/android/apps/nexuslauncher/allapps/O;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->h:Lcom/android/quickstep/util/CachedEventDispatcher;

    const/4 v1, 0x3

    if-eqz v0, :cond_8

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->b:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->i:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/L;->a:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/O;->a(I)V

    goto/16 :goto_1

    :cond_1
    iput-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->i:Z

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->i:Z

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->h:Lcom/android/quickstep/util/CachedEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/CachedEventDispatcher;->dispatchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->d:Landroid/graphics/PointF;

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_6

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->h:Lcom/android/quickstep/util/CachedEventDispatcher;

    invoke-virtual {v0}, Lcom/android/quickstep/util/CachedEventDispatcher;->hasConsumer()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->c:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_9

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->f:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->h:Lcom/android/quickstep/util/CachedEventDispatcher;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/apps/nexuslauncher/allapps/N;

    invoke-direct {p1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/N;-><init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/CachedEventDispatcher;->setConsumer(Ljava/util/function/Consumer;)V

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->reset()V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->h:Lcom/android/quickstep/util/CachedEventDispatcher;

    sget-object p1, Lcom/google/android/apps/nexuslauncher/allapps/P;->h:Lcom/google/android/apps/nexuslauncher/allapps/G;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/CachedEventDispatcher;->setConsumer(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->i:Z

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/O;->a(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v4, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->i:Z

    goto :goto_1

    :cond_8
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/O;->a(I)V

    :cond_9
    :goto_1
    return-void
.end method
