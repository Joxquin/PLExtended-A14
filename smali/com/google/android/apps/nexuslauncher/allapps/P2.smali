.class public final Lcom/google/android/apps/nexuslauncher/allapps/P2;
.super Lcom/google/android/apps/nexuslauncher/allapps/y0;
.source "SourceFile"


# instance fields
.field public final synthetic P:Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/P2;->P:Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;

    invoke-direct {p0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/y0;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P2;->P:Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->d:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method public final onBackKey()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->s()Z

    move-result p0

    return p0
.end method
