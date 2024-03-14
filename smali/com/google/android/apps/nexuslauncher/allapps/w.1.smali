.class public final Lcom/google/android/apps/nexuslauncher/allapps/w;
.super Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;
.source "SourceFile"


# static fields
.field public static final a:Landroid/os/UserHandle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/w;->a:Landroid/os/UserHandle;

    return-void
.end method
