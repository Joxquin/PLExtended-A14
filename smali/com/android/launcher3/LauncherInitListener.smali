.class public final Lcom/android/launcher3/LauncherInitListener;
.super Lcom/android/quickstep/util/ActivityInitListener;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/quickstep/M;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/util/ActivityInitListener;-><init>(Ljava/util/function/BiPredicate;Lcom/android/launcher3/util/ActivityTracker;)V

    return-void
.end method


# virtual methods
.method public final handleInit(Lcom/android/launcher3/BaseActivity;Z)Z
    .locals 0

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->deferOverlayCallbacksUntilNextResumeOrStop()V

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/util/ActivityInitListener;->handleInit(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result p0

    return p0
.end method
