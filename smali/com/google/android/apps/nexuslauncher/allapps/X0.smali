.class public final Lcom/google/android/apps/nexuslauncher/allapps/X0;
.super Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;
.source "SourceFile"


# instance fields
.field public final d:Lcom/google/android/apps/nexuslauncher/allapps/s1;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/s1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/X0;->d:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X0;->d:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->m:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->afterTextChanged(Landroid/text/Editable;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    return-void
.end method
