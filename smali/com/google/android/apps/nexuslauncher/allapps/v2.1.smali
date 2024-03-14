.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/z2;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/z2;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/v2;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/v2;->e:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/v2;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/v2;->e:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/allapps/z2;->a(Lcom/google/android/apps/nexuslauncher/allapps/z2;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/v2;->e:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->j:Landroid/app/search/SearchSession;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->k:Lcom/google/android/apps/nexuslauncher/allapps/y2;

    invoke-virtual {v0, v1}, Landroid/app/search/SearchSession;->unregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSession$Callback;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->j:Landroid/app/search/SearchSession;

    invoke-virtual {v0}, Landroid/app/search/SearchSession;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->j:Landroid/app/search/SearchSession;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->k:Lcom/google/android/apps/nexuslauncher/allapps/y2;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
