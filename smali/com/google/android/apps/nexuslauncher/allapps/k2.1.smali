.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/k2;->d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k2;->d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->f:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->p:Landroid/app/search/SearchTarget;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->g(Landroid/app/search/SearchTarget;)Landroid/app/search/Query;

    move-result-object v1

    new-instance v2, Landroid/app/search/SearchTargetEvent$Builder;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->m:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroid/app/search/SearchTargetEvent$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Landroid/app/search/SearchTargetEvent$Builder;->build()Landroid/app/search/SearchTargetEvent;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->z(Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    return-void
.end method
