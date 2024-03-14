.class public final Lcom/google/android/apps/nexuslauncher/allapps/f1;
.super Landroid/content/IIntentSender$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/y0;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/f1;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/f1;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/e1;

    invoke-direct {p2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/e1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
