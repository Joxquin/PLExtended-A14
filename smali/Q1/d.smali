.class public final LQ1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

.field public final b:Lcom/android/launcher3/util/EventLogArray;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ1/d;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    new-instance p1, Lcom/android/launcher3/util/EventLogArray;

    const-string v0, "DreamAnimationController"

    invoke-direct {p1, v0}, Lcom/android/launcher3/util/EventLogArray;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LQ1/d;->b:Lcom/android/launcher3/util/EventLogArray;

    return-void
.end method
