.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->g:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->d:I

    const/high16 v1, 0x10000000

    const-string v2, "android.intent.action.VIEW"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/Q0;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->g:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/Q0;->h:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d:Lcom/android/launcher3/views/ActivityContext;

    new-instance v4, Landroid/content/Intent;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v4, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v3, p0, v1}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/Q0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->g:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/Q0;->h:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->t(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/allapps/g1;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, p0}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->g:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/Intent;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v4, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, v3, p0, v1}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/Q0;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->g:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/H0;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/Q0;->h:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d:Lcom/android/launcher3/views/ActivityContext;

    new-instance v4, Landroid/content/Intent;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v4, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v3, p0, v1}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
