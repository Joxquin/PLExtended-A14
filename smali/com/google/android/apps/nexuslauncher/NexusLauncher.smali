.class public final Lcom/google/android/apps/nexuslauncher/NexusLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/launcher3/Launcher;

.field public b:Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncher;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/Launcher;->setLauncherCallbacks(Lcom/google/android/apps/nexuslauncher/NexusLauncher;)V

    return-void
.end method
