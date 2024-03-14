.class public final Lcom/google/android/apps/nexuslauncher/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/u;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/google/android/apps/nexuslauncher/u;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/apps/nexuslauncher/k;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/k;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/k;->e:Lcom/google/android/apps/nexuslauncher/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/k;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/k;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "selected_search_engine"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/k;->e:Lcom/google/android/apps/nexuslauncher/u;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/u;->j:Lcom/google/android/apps/nexuslauncher/t;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/k;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/p;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/p;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/k;->e:Lcom/google/android/apps/nexuslauncher/u;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/p;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/k;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/p;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/p;->b:Lcom/google/android/apps/nexuslauncher/n;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/k;->e:Lcom/google/android/apps/nexuslauncher/u;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/p;->b:Lcom/google/android/apps/nexuslauncher/n;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/k;->e:Lcom/google/android/apps/nexuslauncher/u;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/k;->f:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/p;

    iput-object p0, v0, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    iget-object p0, v0, Lcom/google/android/apps/nexuslauncher/u;->l:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/m;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    invoke-interface {v1, v2}, Lcom/google/android/apps/nexuslauncher/m;->c(Lcom/google/android/apps/nexuslauncher/p;)V

    goto :goto_1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
