.class public final LW1/v;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

.field public final synthetic b:Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V
    .locals 0

    iput-object p1, p0, LW1/v;->b:Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

    iput-object p2, p0, LW1/v;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;

    iget-object p0, p0, LW1/v;->b:Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->f(Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;-><init>(Landroid/content/Context;)V

    const-string p0, "android.search.action.GLOBAL_SEARCH"

    invoke-virtual {p1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, LW1/v;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncher;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncher;->b:Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;->d:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;->g:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;->a()V

    :goto_0
    return-void
.end method
