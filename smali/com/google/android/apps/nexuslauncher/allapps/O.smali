.class public final Lcom/google/android/apps/nexuslauncher/allapps/O;
.super Lcom/google/android/apps/nexuslauncher/allapps/L;
.source "SourceFile"


# instance fields
.field public final b:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

.field public final c:F

.field public final d:Landroid/graphics/PointF;

.field public e:I

.field public f:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field public g:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public h:Lcom/android/quickstep/util/CachedEventDispatcher;

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/L;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->d:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->e:I

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->i:Z

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->b:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->c:F

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->e:I

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq p1, v1, :cond_6

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->i:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->g:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->g:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->f:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->dispose()V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->f:Lcom/android/systemui/shared/system/InputMonitorCompat;

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->h:Lcom/android/quickstep/util/CachedEventDispatcher;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/quickstep/util/CachedEventDispatcher;->hasConsumer()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->h:Lcom/android/quickstep/util/CachedEventDispatcher;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/P;->h:Lcom/google/android/apps/nexuslauncher/allapps/G;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/CachedEventDispatcher;->setConsumer(Ljava/util/function/Consumer;)V

    :cond_5
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->h:Lcom/android/quickstep/util/CachedEventDispatcher;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->f:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-nez v1, :cond_7

    invoke-virtual {p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/O;->a(I)V

    return-void

    :cond_7
    new-instance v1, Lcom/android/quickstep/util/CachedEventDispatcher;

    invoke-direct {v1}, Lcom/android/quickstep/util/CachedEventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->h:Lcom/android/quickstep/util/CachedEventDispatcher;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->f:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/M;

    invoke-direct {v4, p0}, Lcom/google/android/apps/nexuslauncher/allapps/M;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/O;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/shared/system/InputMonitorCompat;->getInputReceiver(Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->g:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->setBatchingEnabled(Z)V

    goto :goto_0

    :cond_8
    new-instance v0, Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->b:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getDisplayId()I

    move-result v1

    const-string v2, "all-apps-capture"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->f:Lcom/android/systemui/shared/system/InputMonitorCompat;

    :cond_9
    :goto_0
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O;->e:I

    return-void
.end method
