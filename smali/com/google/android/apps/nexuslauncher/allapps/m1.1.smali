.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/t1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/t1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/m1;->d:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m1;->d:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/t1;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->o:Z

    return-void
.end method
