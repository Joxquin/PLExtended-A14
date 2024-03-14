.class public final synthetic Lcom/google/android/apps/nexuslauncher/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/d;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/d;->a:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/d;->a:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->b(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    return-void
.end method
