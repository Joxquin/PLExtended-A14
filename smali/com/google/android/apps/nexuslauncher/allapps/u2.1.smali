.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/z2;

.field public final synthetic e:Landroid/app/search/SearchTargetEvent;

.field public final synthetic f:Landroid/app/search/Query;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/z2;Landroid/app/search/SearchTargetEvent;Landroid/app/search/Query;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/u2;->d:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/u2;->e:Landroid/app/search/SearchTargetEvent;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/u2;->f:Landroid/app/search/Query;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/u2;->d:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/u2;->e:Landroid/app/search/SearchTargetEvent;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/u2;->f:Landroid/app/search/Query;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->j:Landroid/app/search/SearchSession;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Dropping event "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/search/SearchTargetEvent;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SearchSessionLifecycle"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0, v1}, Landroid/app/search/SearchSession;->notifyEvent(Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    :goto_0
    return-void
.end method
