.class public final LU1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic a:LU1/k;


# direct methods
.method public constructor <init>(LU1/k;)V
    .locals 0

    iput-object p1, p0, LU1/d;->a:LU1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LU1/k;->k:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, LU1/d;->a:LU1/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, LU1/k;->j:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->onMotionEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_1
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LU1/k;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->access$getINVERSE_MATRIX$cp()Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, LU1/k;->c(ZLandroid/graphics/Matrix;)Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Lcom/android/quickstep/util/ActivityInitListener;

    new-instance v1, LU1/i;

    invoke-direct {v1, p0}, LU1/i;-><init>(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;)V

    sget-object v2, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/util/ActivityInitListener;-><init>(Ljava/util/function/BiPredicate;Lcom/android/launcher3/util/ActivityTracker;)V

    invoke-virtual {v0}, Lcom/android/quickstep/util/ActivityInitListener;->register()V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->getEndCallbacks()Lcom/android/launcher3/util/RunnableList;

    move-result-object v1

    new-instance v2, LU1/h;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, LU1/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_3
    :goto_1
    return-void
.end method
