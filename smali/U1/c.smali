.class public final LU1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/d;
.implements Lq1/b;
.implements LU1/g;


# instance fields
.field public final d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

.field public final e:LU1/k;

.field public final f:Z

.field public final g:F

.field public h:Lq1/c;

.field public i:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

.field public j:LU1/a;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU1/c;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    sget-object v0, LU1/k;->k:Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v0, LU1/k;->k:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU1/k;

    iput-object v0, p0, LU1/c;->e:LU1/k;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, LU1/c;->f:Z

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, LU1/c;->g:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, LU1/k;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LU1/c;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LU1/c;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    sget-object v1, LU1/k;->k:Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, LU1/k;->k:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU1/k;

    iget-object v1, v1, LU1/k;->g:Landroid/content/Intent;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/Launcher;->setLauncherOverlay(Lq1/b;)V

    return-void
.end method

.method public final b(I)V
    .locals 9

    iget-object v0, p0, LU1/c;->i:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LU1/c;->j:LU1/a;

    if-eqz v0, :cond_2

    iget-wide v1, v0, LU1/a;->b:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget v5, v0, LU1/a;->c:F

    iget v0, v0, LU1/a;->a:F

    mul-float/2addr v5, v0

    iget v0, p0, LU1/c;->g:F

    mul-float v6, v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object p0, p0, LU1/c;->i:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    if-eqz p0, :cond_1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    return-void
.end method

.method public final c(F)V
    .locals 1

    iget-object v0, p0, LU1/c;->j:LU1/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, LU1/a;->c:F

    :goto_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, LU1/c;->b(I)V

    return-void
.end method

.method public final d(Lcom/android/launcher3/Workspace;)V
    .locals 0

    iput-object p1, p0, LU1/c;->h:Lq1/c;

    return-void
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, LU1/c;->e:LU1/k;

    iget-object v0, v0, LU1/k;->g:Landroid/content/Intent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, LU1/c;->i:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    if-nez v1, :cond_3

    iget-boolean v1, p0, LU1/c;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->access$getINVERSE_MATRIX$cp()Landroid/graphics/Matrix;

    move-result-object v1

    :goto_0
    iget-object v3, p0, LU1/c;->e:LU1/k;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, LU1/k;->c(ZLandroid/graphics/Matrix;)Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->setDragStarted()V

    iget-object v2, p0, LU1/c;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->setCallbacks(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->getEndCallbacks()Lcom/android/launcher3/util/RunnableList;

    move-result-object v2

    new-instance v3, LU1/b;

    invoke-direct {v3, p0}, LU1/b;-><init>(LU1/c;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->startActivity(Landroid/content/Intent;)V

    move-object v2, v1

    :cond_2
    iput-object v2, p0, LU1/c;->i:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    :cond_3
    new-instance v0, LU1/a;

    iget-object v1, p0, LU1/c;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1}, LU1/a;-><init>(F)V

    iput-object v0, p0, LU1/c;->j:LU1/a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LU1/c;->b(I)V

    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LU1/c;->b(I)V

    const/4 v0, 0x0

    iput-object v0, p0, LU1/c;->j:LU1/a;

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LU1/c;->e:LU1/k;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LU1/k;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
