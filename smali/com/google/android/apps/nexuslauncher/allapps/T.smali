.class public final Lcom/google/android/apps/nexuslauncher/allapps/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/U;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/U;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/T;->d:Lcom/google/android/apps/nexuslauncher/allapps/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T;->d:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
