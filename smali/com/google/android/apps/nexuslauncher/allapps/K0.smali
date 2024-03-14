.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/appsearch/GlobalSearchSession;

    invoke-virtual {p1}, Landroid/app/appsearch/GlobalSearchSession;->close()V

    return-void
.end method
