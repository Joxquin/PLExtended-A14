.class public final Lcom/google/android/apps/nexuslauncher/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/app/PendingIntent;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/f;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/launcher3/views/ActivityContext;->sendPendingIntentWithAnimation(Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    return-void
.end method

.method public final b(Landroid/view/View;Landroid/content/Intent;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/f;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    return-void
.end method
