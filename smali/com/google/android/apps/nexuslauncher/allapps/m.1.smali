.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/a1;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/m;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/m;->e:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/m;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m;->e:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m;->f:Ljava/lang/Object;

    check-cast p0, Landroid/app/search/Query;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->e(Landroid/app/search/Query;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m;->e:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m;->f:Ljava/lang/Object;

    check-cast p0, Landroid/app/search/Query;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->e(Landroid/app/search/Query;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m;->e:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->f(Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
