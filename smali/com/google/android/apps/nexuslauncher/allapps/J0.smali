.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/J0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/T0;

.field public final synthetic f:Landroid/content/Intent;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/J0;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/J0;->e:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/J0;->f:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/J0;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/J0;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/J0;->e:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/J0;->f:Landroid/content/Intent;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/J0;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->t(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/allapps/g1;

    move-result-object p0

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/J0;->e:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/J0;->f:Landroid/content/Intent;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/J0;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->t(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/allapps/g1;

    move-result-object p0

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
