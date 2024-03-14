.class public final LU1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field public static final k:Lcom/android/launcher3/util/MainThreadInitializedObject;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field public final f:Ljava/util/ArrayList;

.field public g:Landroid/content/Intent;

.field public h:Landroid/view/InputMonitor;

.field public i:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public j:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, LU1/f;->a:LU1/f;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, LU1/k;->k:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU1/k;->d:Landroid/content/Context;

    new-instance p1, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v0, LU1/j;

    invoke-direct {v0, p0}, LU1/j;-><init>(LU1/k;)V

    invoke-direct {p1, v0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object p1, p0, LU1/k;->e:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LU1/k;->f:Ljava/util/ArrayList;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, LU1/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, LU1/e;-><init>(LU1/k;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final a(LU1/k;)V
    .locals 6

    iget-object v0, p0, LU1/k;->d:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v0, Landroid/content/pm/LauncherApps;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.launcher3.WINDOW_OVERLAY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.googlequicksearchbox"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, LU1/k;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    :cond_2
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, LU1/e;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, LU1/e;-><init>(LU1/k;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V
    .locals 1

    const-string v0, "negOneChange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LU1/k;->h:Landroid/view/InputMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputMonitor;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/InputMonitor;->getSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method public final c(ZLandroid/graphics/Matrix;)Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;
    .locals 3

    iget-object v0, p0, LU1/k;->h:Landroid/view/InputMonitor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, LU1/k;->j:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    iget-object v1, p0, LU1/k;->d:Landroid/content/Context;

    iget-object v2, p0, LU1/k;->h:Landroid/view/InputMonitor;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;-><init>(Landroid/content/Context;Landroid/view/InputMonitor;ZLandroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->getEndCallbacks()Lcom/android/launcher3/util/RunnableList;

    move-result-object p1

    new-instance p2, LU1/h;

    const/4 v1, 0x1

    invoke-direct {p2, v1, p0}, LU1/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    iput-object v0, p0, LU1/k;->j:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    return-object v0
.end method

.method public final close()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, LU1/h;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, LU1/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
