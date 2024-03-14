.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final synthetic e:Landroid/app/search/Query;

.field public final synthetic f:Lcom/google/android/apps/nexuslauncher/allapps/p;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/a1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/a0;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/a0;->e:Landroid/app/search/Query;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/a0;->f:Lcom/google/android/apps/nexuslauncher/allapps/p;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/a0;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/a0;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/a0;->e:Landroid/app/search/Query;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/a0;->f:Lcom/google/android/apps/nexuslauncher/allapps/p;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/a0;->g:Z

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->c(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;Z)V

    return-void
.end method
