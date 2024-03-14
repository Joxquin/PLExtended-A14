.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/G1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/G1;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/G1;->e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 7

    iget p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/G1;->d:I

    const-string v0, "SearchSessionManager"

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/G1;->e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->p:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->z:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/m0;

    const/4 v4, 0x2

    invoke-direct {v3, p1, v0, p0, v4}, Lcom/google/android/apps/nexuslauncher/allapps/m0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return v1

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/G1;->e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lz0/f;->e(Landroid/app/search/SearchTarget;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->g(Landroid/app/search/SearchTarget;)Landroid/app/search/Query;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Delete target Failed. SearchTarget doesn\'t have a query"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/search/Query;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v3, Landroid/app/search/Query;

    invoke-virtual {p0}, Landroid/app/search/Query;->getInput()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/search/Query;->getTimestampMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/app/search/Query;-><init>(Ljava/lang/String;JLandroid/os/Bundle;)V

    invoke-virtual {v3}, Landroid/app/search/Query;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "deleted_target_id"

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v4, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/android/apps/nexuslauncher/allapps/c0;

    invoke-direct {v5, v4, v1}, Lcom/google/android/apps/nexuslauncher/allapps/c0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/g3;I)V

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/google/android/apps/nexuslauncher/allapps/z2;->d(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/m;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;)V

    new-instance p0, Landroid/app/search/SearchTargetEvent$Builder;

    const/16 v0, 0x9

    invoke-direct {p0, v2, v0}, Landroid/app/search/SearchTargetEvent$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/search/SearchTargetEvent$Builder;->build()Landroid/app/search/SearchTargetEvent;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->z(Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object p0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/X;

    const/4 v3, 0x3

    invoke-direct {v0, v3, p1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/X;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return v1

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/G1;->e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->A:Ljava/lang/String;

    if-nez p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Unable to show suggestion info - no URL!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
