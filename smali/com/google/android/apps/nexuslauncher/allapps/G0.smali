.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/T0;

.field public final synthetic f:Landroid/app/search/Query;

.field public final synthetic g:Lcom/google/android/apps/nexuslauncher/allapps/p;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;ZI)V
    .locals 0

    iput p5, p0, Lcom/google/android/apps/nexuslauncher/allapps/G0;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/G0;->e:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/G0;->f:Landroid/app/search/Query;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/G0;->g:Lcom/google/android/apps/nexuslauncher/allapps/p;

    iput-boolean p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/G0;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/G0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/G0;->e:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/G0;->f:Landroid/app/search/Query;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/G0;->g:Lcom/google/android/apps/nexuslauncher/allapps/p;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/G0;->h:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->c(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;Z)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/G0;->e:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/G0;->f:Landroid/app/search/Query;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/G0;->g:Lcom/google/android/apps/nexuslauncher/allapps/p;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/G0;->h:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->c(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
