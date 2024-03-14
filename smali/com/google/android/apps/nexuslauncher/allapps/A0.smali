.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/T0;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Landroid/content/Intent;

.field public final synthetic g:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/A0;->d:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/A0;->e:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/A0;->f:Landroid/content/Intent;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/A0;->g:Lcom/android/launcher3/model/data/ItemInfo;

    iput-boolean p5, p0, Lcom/google/android/apps/nexuslauncher/allapps/A0;->h:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A0;->d:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/A0;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/A0;->f:Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/A0;->g:Lcom/android/launcher3/model/data/ItemInfo;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A0;->h:Z

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    move-result-object v0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/apps/nexuslauncher/allapps/B0;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/B0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x47

    invoke-static {p0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    :cond_1
    :goto_0
    return-void
.end method
